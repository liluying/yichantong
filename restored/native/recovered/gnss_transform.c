/* Original ELF: libyctdevice.so 0x647b28 and 0x6477bc.
 * Standalone numeric reconstruction; does not replace JNI or C++ vector ABI.
 */
#include "gnss_transform.h"
#include <math.h>
int gnss_four_transform(const GnssFourParameter *p,const GnssPoint *in,GnssPoint *out,size_t n,int inverse) {
    double sn=sin(p->rotation),cs=cos(p->rotation);
    if(inverse&&p->scale==0.0)return 1;
    for(size_t i=0;i<n;i++) {
        double x=in[i].x,y=in[i].y;
        if(inverse) {
            x-=p->dx;y-=p->dy;
            double k=1.0/p->scale;
            out[i].x=k*(sn*y+cs*x);
            out[i].y=k*(cs*y-sn*x);
        } else {
            out[i].x=p->dx+(-(y*sn)+cs*x)*p->scale;
            out[i].y=p->dy+(cs*y+sn*x)*p->scale;
        }
    }
    return 0;
}
int gnss_seven_transform(const GnssSevenParameter *p,const GnssPoint *in,GnssPoint *out,size_t n,int inverse) {
    if(inverse&&p->scale==0.0)return 1;
    double a=p->rx,b=p->ry,c=p->rz,k=p->scale;
    for(size_t i=0;i<n;i++) {
        double x=in[i].x,y=in[i].y,z=in[i].z;
        if(!inverse) {
            out[i].x=p->dx+k*x+(-c)*k*y+b*k*z;
            out[i].y=p->dy+c*k*x+k*y+(-a)*k*z;
            out[i].z=p->dz+x*k*(-b)+y*k*a+z*k;
        }else {
            x-=p->dx;y-=p->dy;z-=p->dz;
            double t=c+b*a,u=-b+a*c,v=a*a+1.0;
            double q=1.0/((v+c*t)-b*u),j=1.0/k;
            out[i].x=v*q*j*x+t*q*j*y+u*q*j*z;
            out[i].y=(-c+b*a)*q*j*x+(b*b+1.0)*q*j*y+(a+c*b)*q*j*z;
            out[i].z=j*(b+a*c)*q*x+j*(c*c+1.0)*q*z+j*(-a+c*b)*q*y;
        }
    }
    return 0;
}
int gnss_compute_four_parameters(const GnssPoint *source,const GnssPoint *target,size_t n,GnssFourParameter *p,GnssPoint *residuals) { /* ELF 0x648bec */
    if(n<2)return 1;
    double sx=0,sy=0,tx=0,ty=0;
    for(size_t i=0;i<n;i++){sx+=source[i].x;sy+=source[i].y;tx+=target[i].x;ty+=target[i].y;}
    double mx=sx/(double)n,my=sy/(double)n,denom=0,a=0,b=0;
    for(size_t i=0;i<n;i++) {
        double dx=target[i].x-tx/(double)n,dy=target[i].y-ty/(double)n;
        double x=source[i].x-mx,y=source[i].y-my;
        denom=denom+y*y+x*x;
        a=a+dy*y+dx*x;
        b=b+(-dx)*y+dy*x;
    }
    if(denom<1e-12)return 1;
    a/=denom;b/=denom;
    p->scale=sqrt(b*b+a*a);p->rotation=atan2(b,a);
    double sn=sin(p->rotation),cs=cos(p->rotation);
    p->dx=tx/(double)n-(-(my*sn)+cs*mx)*p->scale;
    p->dy=ty/(double)n-(my*cs+sn*mx)*p->scale;
    if(residuals) {
        for(size_t i=0;i<n;i++) {
            double x=source[i].x,y=source[i].y;
            residuals[i].x=target[i].x-(p->dx+(-(y*sn)+cs*x)*p->scale);
            residuals[i].y=target[i].y-(p->dy+(cs*y+sn*x)*p->scale);
            /* Original temporary Point3D vector is zero-initialized; only X/Y transformed. */
            residuals[i].z=target[i].z;
        }
    }
    return 0;
}
