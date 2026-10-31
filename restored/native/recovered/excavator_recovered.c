/* Reconstructed from libexcavator.so ARM64. This is a partial replacement.
 * Address references use original ELF virtual addresses (Ghidra adds 0x100000).
 * Match original arithmetic, including its boundary behavior; do not normalize
 * dimensions or add geometric validation that the original does not perform.
 */
#include "excavator_recovered.h"
#include <math.h>
#include <string.h>
void libexcavator_init(ExcavatorHandle *handle) { /* 0x0d70 -> 0x164c */
    memset(handle,0,1024);
}
int libexcavator_get_mode(const ExcavatorHandle *handle) { /* 0x1658 */
    int mode; memcpy(&mode,handle,sizeof mode); return mode;
}
int libexcavator_tool_check(const ExcavatorTool *tool) { /* 0x1fec */
    if (tool->AB < 0.01 || tool->AB > 100.0) return -1;
    for (int i=0;i<4;i++) {
        double x=tool->TT[i].x,y=tool->TT[i].y,z=tool->TT[i].z;
        if (sqrt((x*x+y*y)+z*z)>10.0) return -2-i;
    }
    return 0;
}
int libexcavator_tool_from_distance(ExcavatorTool *tool,double ab,double ac,double bc,double width_diagonal,double width) { /* 0x5814 */
    memset(tool,0,sizeof *tool);
    /* Original 0x6d7c accepts degenerate triangles and does not independently
       reject negative inputs. Tests retain that behavior, including NaNs. */
    if (ac+bc < width_diagonal || bc+width_diagonal < ac || ac+width_diagonal < bc) return -1;
    double cosine=((ac*ac+bc*bc)-width_diagonal*width_diagonal)/((ac+ac)*bc);
    double residual=1.0-cosine*cosine;
    double sine=residual<0.0?0.0:sqrt(residual);
    tool->AB=ab;
    tool->TT[0]=(ExcavatorPoint){-(cosine*ac),width*-0.5,sine*ac};
    tool->TT[1]=(ExcavatorPoint){-(cosine*ac),width*0.5,sine*ac};
    return 0;
}
int libexcavator_get_tool(const ExcavatorHandle *handle,ExcavatorTool *tool) { /* 0x556c */
    int mode=libexcavator_get_mode(handle);
    size_t offset;
    if(mode==3) offset=0x58;
    else if(mode==2) offset=0x60;
    else return -1;
    memcpy(tool,(const unsigned char*)handle+offset,sizeof *tool);
    return 0;
}
const char *libexcavator_version(void) { return "coord-excavator.1.13.2608.27"; } /* ELF 0x78f5 */
int libexcavator_set_tool(ExcavatorHandle *handle,const ExcavatorTool *tool) { /* 0x5504 */
    if(libexcavator_tool_check(tool)!=0) return -2;
    int mode=libexcavator_get_mode(handle);
    size_t offset;
    if(mode==3) offset=0x58;
    else if(mode==2) offset=0x60;
    else return -1;
    memcpy((unsigned char*)handle+offset,tool,sizeof *tool);
    return 0;
}
static uint16_t crc16(uint16_t crc,const unsigned char *data,int n) {
    for(int i=0;i<n;i++) {
        crc^=(uint16_t)data[i]<<8;
        for(int j=0;j<8;j++)crc=(uint16_t)((crc<<1)^((crc&0x8000)?0x1021:0));
    }
    return crc;
}
static void xor_payload(unsigned char *b,int n) {
    uint32_t state=b[0]+((uint32_t)b[1]|((uint32_t)b[2]<<8));
    for(int i=3;i<n;i++) {state=(state*0x1c55)%0x6a93;b[i]^=(unsigned char)state;}
}
int libexcavator_tool_to_binary(const ExcavatorTool *tool,unsigned char *b,int capacity) { /* 0x55b8 */
    if(capacity<56)return -1;
    memset(b,0,56);b[0]=0x81;b[3]=1;
    double d[13];memcpy(d,tool,sizeof d);
    for(int i=0;i<13;i++){float v=(float)d[i];memcpy(b+4+i*4,&v,4);}
    uint16_t crc=crc16(b[0],b+3,53);b[1]=(unsigned char)crc;b[2]=(unsigned char)(crc>>8);
    xor_payload(b,56);return 56;
}
int libexcavator_tool_from_binary(ExcavatorTool *tool,const unsigned char *input,int size) { /* 0x56c0 */
    memset(tool,0,sizeof *tool);
    if(size<4||size>128)return -1;
    unsigned char b[128];memcpy(b,input,(size_t)size);xor_payload(b,size);
    uint16_t expected=(uint16_t)b[1]|((uint16_t)b[2]<<8);
    if(crc16(b[0],b+3,size-3)!=expected)return -3;
    if(b[0]!=0x81||size<56||b[3]!=1)return -4;
    double d[13];for(int i=0;i<13;i++){float v;memcpy(&v,b+4+i*4,4);d[i]=v;}
    memcpy(tool,d,sizeof d);return 0;
}
static void store_double(ExcavatorHandle *handle,size_t offset,double v) {
    memcpy((unsigned char*)handle+offset,&v,8);
}
int libexcavator_cali_mode_1_0(ExcavatorHandle *handle,const ExcavatorMode1 *p) { /* 0x0da0 -> 0x1660 */
    memset(handle,0,0x138);
    double gl=p->GL,gr=p->GR,lr=p->LR,hg=p->HG;
    if(gl<0.0||gr<0.0||lr<.01||hg<.01)return -1;
    if(gl+gr<lr||gr+lr<gl||gl+lr<gr)return -1;
    double along=((gr*gr+lr*lr)-gl*gl)/(lr+lr);
    if(!(along<=gr))return -1;
    double x=p->world_from_device.x,y=p->world_from_device.y,z=p->world_from_device.z;
    double rem=1.0-(z*z+(x*x+y*y));
    double w=1.0;
    if(rem>0.0)w=sqrt(rem);else x=y=z=0.0;
    double norm=w*w+x*x+y*y+z*z;
    if(!(w>-2.0&&w<2.0&&x>-2.0&&x<2.0&&y>-2.0&&y<2.0&&z>-2.0&&z<2.0&&norm>.5&&norm<2.0))return -2;
    double lateral=sqrt(gr*gr-along*along);
    const double rad_to_deg=57.29577951308232;
    double roll=atan2(w*x+y*z,(.5-x*x)-y*y)*rad_to_deg;
    double pitch=asin(y*(w+w)-z*(x+x))*rad_to_deg;
    int mode=1;memcpy(handle,&mode,4);
    store_double(handle,8,roll);store_double(handle,16,pitch);store_double(handle,24,0.0);
    store_double(handle,32,lateral);store_double(handle,40,along-lr);store_double(handle,48,hg);
    store_double(handle,56,lateral);store_double(handle,64,along);store_double(handle,72,hg);
    const double half_rad=0.008726646259971648;
    double sr=sin(roll*half_rad),cr=cos(roll*half_rad),sp=sin(pitch*half_rad),cp=cos(pitch*half_rad);
    double qw=cr*cp,qx=sr*cp,qy=cr*sp,qz=-sr*sp;
    if(qw<0.0){qw=-qw;qx=-qx;qy=-qy;qz=-qz;}
    store_double(handle,80,qw);store_double(handle,88,-qx);store_double(handle,96,-qy);store_double(handle,104,-qz);
    return 0;
}
