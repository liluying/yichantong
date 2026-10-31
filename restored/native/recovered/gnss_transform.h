#ifndef GNSS_TRANSFORM_RECOVERED_H
#define GNSS_TRANSFORM_RECOVERED_H
#include <stddef.h>
typedef struct {double x,y,z;} GnssPoint;
typedef struct {double dx,dy,rotation,scale;} GnssFourParameter;
typedef struct {double dx,dy,dz,rx,ry,rz,scale;} GnssSevenParameter;
/* Rotations are radians, scale is absolute (1 means identity).
   Four-parameter writes X/Y only, preserving output Z as the original does. */
int gnss_four_transform(const GnssFourParameter*,const GnssPoint*,GnssPoint*,size_t,int);
int gnss_seven_transform(const GnssSevenParameter*,const GnssPoint*,GnssPoint*,size_t,int);
int gnss_compute_four_parameters(const GnssPoint*,const GnssPoint*,size_t,GnssFourParameter*,GnssPoint*);
#endif
