/* Mode-3 calibration reconstruction. Original ELF 0x108c -> 0x3844.
   Uses the original quaternion sign convention and float yaw extraction. */
#include "excavator_recovered.h"
#include <math.h>
#include <string.h>
typedef ExcavatorPoint P;
typedef struct {double w,x,y,z;} Q;
static double norm(P a){return sqrt((a.x*a.x+a.y*a.y)+a.z*a.z);}
static P add(P a,P b){return (P){a.x+b.x,a.y+b.y,a.z+b.z};}
static P sub(P a,P b){return (P){a.x-b.x,a.y-b.y,a.z-b.z};}
static P scale(P a,double k){return (P){a.x*k,a.y*k,a.z*k};}
static Q from_xyz(P p){double rem=1.0-(p.z*p.z+(p.x*p.x+p.y*p.y));if(rem>0)return (Q){sqrt(rem),p.x,p.y,p.z};return (Q){1,0,0,0};}
static Q qconj(Q a){return (Q){a.w,-a.x,-a.y,-a.z};}
static Q mult(Q a,Q b){
 Q q={(a.w*b.w-a.x*b.x)-a.y*b.y-a.z*b.z,
       (a.y*b.z+a.w*b.x+a.x*b.w)-a.z*b.y,
       (a.z*b.x+a.w*b.y+a.y*b.w)-a.x*b.z,
       (a.x*b.y+a.z*b.w+a.w*b.z)-a.y*b.x};
 if(q.w<0){q.w=-q.w;q.x=-q.x;q.y=-q.y;q.z=-q.z;}return q;
}
static P rotate(Q q,P a){
 double x=q.x+q.x,y=q.y+q.y,z=q.z+q.z;
 return (P){a.z*(q.z*x+q.w*y)+a.y*(q.x*y-q.w*z)+a.x*((1.0-q.y*y)-q.z*z),
            a.x*(q.x*y+q.w*z)+a.z*(q.y*z-q.w*x)+a.y*((1.0-q.z*z)-q.x*x),
            a.x*(q.z*x-q.w*y)+a.y*(q.y*z+q.w*x)+a.z*((1.0-q.x*x)-q.y*y)};
}
static Q vectors(P a,P b){
 double na=norm(a),nb=norm(b);Q identity={1,0,0,0};
 if(na<0x1p-20||nb<0x1p-20)return identity;
 double dot=(a.x*b.x+a.y*b.y)+a.z*b.z,cosine=dot/(na*nb);
 if(cosine>=1)return identity;
 P cr={a.y*b.z-a.z*b.y,a.z*b.x-a.x*b.z,a.x*b.y-a.y*b.x};
 double nc=norm(cr);if(!(nc>0x1p-20))return identity;
 double k=sqrt((1.0-cosine)*.5)/nc;
 return (Q){sqrt((cosine+1.0)*.5),cr.x*k,cr.y*k,cr.z*k};
}
static Q yaw_only(Q q){
 float numerator=(float)(q.x*q.y+q.w*q.z),denominator=(float)((.5-q.y*q.y)-q.z*q.z);
 float n=sqrtf(numerator*numerator+denominator*denominator);
 if(n<=0x1p-20f)return (Q){1,0,0,0};
 float c=denominator/n,s=sqrtf((1.0f-c)*.5f),w=sqrtf((c+1.0f)*.5f);
 if(numerator<0)s=-s;
 return (Q){w,0,0,s};
}
static int triangle(double a,double b,double c){return !(a+b<c||b+c<a||a+c<b);}
static double cosine(double opposite,double a,double b){return ((a*a+b*b)-opposite*opposite)/((a+a)*b);}
static double positive_sin(double c){double a=1.0-c*c;return a<0.0?0.0:sqrt(a);}
static void put(ExcavatorHandle *h,size_t offset,const void *p,size_t size){memcpy((unsigned char*)h+offset,p,size);}
int libexcavator_cali_mode_3_0(ExcavatorHandle *h,const ExcavatorMode3 *p){
 memset(h,0,0x138);
 double dims[]={p->HA,p->Hy,p->Ay,p->Ax,p->Dx,p->AD,p->BD,p->CD,p->BC};
 for(int i=0;i<9;i++){
  double min=i==3||i==4?-100.0:i==1||i==2?0.0:.01;
  if(dims[i]<min||dims[i]>100.0)return -1-i;
 }
 if(!triangle(p->BD,p->CD,p->BC))return -12;
 if(!triangle(p->tool.AB,p->AD,p->BD))return -13;
 if(libexcavator_tool_check(&p->tool)!=0)return -14;
 Q device=from_xyz(p->world_from_device);
 double dd=p->AD*p->AD-(p->Ax-p->Dx)*(p->Ax-p->Dx);
 if(!(dd>=0))return -100;
 P A={p->Ax,0,p->HA},H={0,0,p->HA};Q align=vectors(A,(P){0,0,1});
 P D=rotate(align,(P){p->Dx,0,p->HA-sqrt(dd)});
 P u=scale(sub(D,H),1.0/p->AD),v={-u.z,0,u.x};
 double c=cosine(p->BD,p->tool.AB,p->AD),s=positive_sin(c);
 P B=add(H,add(scale(u,c*p->tool.AB),scale(v,s*p->tool.AB)));
 P e=scale(sub(D,B),1.0/p->CD),ev={-e.z,0,e.x};
 c=cosine(p->BD,p->BC,p->CD);s=positive_sin(c);
 P C=add(B,add(scale(e,c*p->BC),scale(ev,s*p->BC)));
 const double degrees=57.29577951308232;
 double angle_ad=atan2(D.x,-(D.z-H.z))*degrees;
 double angle_cd=atan2(-(C.z-D.z),C.x-D.x)*degrees;
 Q side=vectors((P){0,p->Ay-p->Hy,p->HA},(P){0,0,1});
 Q world=mult(yaw_only(device),mult(align,side));Q residual=mult(qconj(world),device);
 int mode=3;put(h,0,&mode,4);put(h,8,&residual.x,24);
 put(h,32,&p->HA,8);put(h,40,&p->Hy,8);put(h,48,&p->BC,8);put(h,56,&p->CD,8);put(h,64,&p->AD,8);
 put(h,72,&angle_ad,8);put(h,80,&angle_cd,8);put(h,88,&p->tool,sizeof p->tool);
 double rad=(angle_ad*3.141592653589793)/180.0;
 P cache={p->AD*sin(rad),0,-p->AD*cos(rad)};put(h,192,&cache,24);
 Q qr=from_xyz((P){residual.x,residual.y,residual.z});Q qi=qconj(qr);put(h,216,&qr,32);put(h,280,&qi,32);
 return 0;
}
static double dot(P a,P b){return (a.x*b.x+a.y*b.y)+a.z*b.z;}
static P cross(P a,P b){return (P){a.y*b.z-a.z*b.y,a.z*b.x-a.x*b.z,a.x*b.y-a.y*b.x};}
static double sensor_angle(Q world,Q sensor){ /* ELF 0x3078 */
 P wy=rotate(world,(P){0,1,0}),sy=rotate(sensor,(P){0,1,0});
 Q alignment=vectors((P){sy.x,sy.y,0},(P){wy.x,wy.y,0});
 Q adjusted=mult(alignment,sensor);
 P wx=rotate(world,(P){1,0,0}),ax=rotate(adjusted,(P){1,0,0}),ay=rotate(adjusted,(P){0,1,0});
 double denominator=dot(ay,ay);P projected;
 if(denominator>=0x1p-20)projected=scale(ay,dot(wx,ay)/denominator);else projected=wx;
 P planar=sub(wx,projected);
 double angle=asin(dot(cross(planar,ax),ay))*57.29577951308232;
 if(dot(planar,ax)<0){if(angle>0)angle=180-angle;if(angle<0)angle=-180-angle;}
 return angle;
}
int libexcavator_cali_mode_2_0(ExcavatorHandle *h,const ExcavatorMode2 *p){
 ExcavatorMode3 m={p->world_from_device,p->HA,p->Hy,p->Ay,p->Ax,p->Dx,p->AD,p->BD,p->CD,p->BC,p->tool};
 int ret=libexcavator_cali_mode_3_0(h,&m);if(ret)return ret;
 double angle_ad,angle_cd;memcpy(&angle_ad,(unsigned char*)h+72,8);memcpy(&angle_cd,(unsigned char*)h+80,8);
 Q device=from_xyz(p->world_from_device),sensor=from_xyz(p->world_from_sensor);
 Q align=vectors((P){0,0,1},(P){p->Ax,0,p->HA});
 Q side=vectors((P){0,0,1},(P){0,p->Ay-p->Hy,p->HA});
 Q world=mult(yaw_only(device),mult(align,side)),residual=mult(qconj(world),device);
 double offset=angle_cd-sensor_angle(world,sensor);
 memset(h,0,0x138);int mode=2;put(h,0,&mode,4);put(h,8,&residual.x,24);
 put(h,32,&p->HA,8);put(h,40,&p->Hy,8);put(h,48,&p->BC,8);put(h,56,&p->CD,8);put(h,64,&p->AD,8);
 put(h,72,&angle_ad,8);put(h,80,&offset,8);put(h,88,&angle_cd,8);put(h,96,&p->tool,sizeof p->tool);
 double rad=angle_ad*3.141592653589793/180.0;
 P cache={p->AD*sin(rad),0,-p->AD*cos(rad)};put(h,200,&cache,24);
 Q qr=from_xyz((P){residual.x,residual.y,residual.z});Q qi=qconj(qr);put(h,224,&qr,32);put(h,256,&qi,32);
 return 0;
}
