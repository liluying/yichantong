/* Explicit compatibility forwarding for the nine NOT reconstructed entry points.
   This source is not an implementation of their algorithms. */
#include "excavator_recovered.h"
#include <dlfcn.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
static pthread_once_t once=PTHREAD_ONCE_INIT;
static void *original;
static void load_original(void){
 original=dlopen("libexcavator_original.so",RTLD_NOW|RTLD_LOCAL);
 if(!original){fprintf(stderr,"Recovered excavator: original fallback unavailable: %s\n",dlerror());abort();}
}
static void *resolve(const char *name){
 pthread_once(&once,load_original);
 void *p=dlsym(original,name);
 if(!p){fprintf(stderr,"Recovered excavator: missing original function %s\n",name);abort();}
 return p;
}
double libexcavator_cali_mode_1_1(ExcavatorHandle *h,const void *p){
 typedef double(*F)(ExcavatorHandle*,const void*);return ((F)resolve(__func__))(h,p);
}
int libexcavator_cali_mode_2_1(ExcavatorHandle *h,const void *p){
 typedef int(*F)(ExcavatorHandle*,const void*);return ((F)resolve(__func__))(h,p);
}
double libexcavator_get_height_stdev(ExcavatorHandle *h,int flags,double height,const void *samples,int n){
 typedef double(*F)(ExcavatorHandle*,int,double,const void*,int);return ((F)resolve(__func__))(h,flags,height,samples,n);
}
int libexcavator_adjust_height(ExcavatorHandle *h,int flags,double height,const void *samples,int n){
 typedef int(*F)(ExcavatorHandle*,int,double,const void*,int);return ((F)resolve(__func__))(h,flags,height,samples,n);
}
int libexcavator_get_rtk_stdev(ExcavatorHandle *h,const void *samples,int n,void *points){
 typedef int(*F)(ExcavatorHandle*,const void*,int,void*);return ((F)resolve(__func__))(h,samples,n,points);
}
int libexcavator_adjust_rtk(ExcavatorHandle *h,const void *samples,int n){
 typedef int(*F)(ExcavatorHandle*,const void*,int);return ((F)resolve(__func__))(h,samples,n);
}
int libexcavator_adjust_hab_vertical(ExcavatorHandle *h,const void *sample){
 typedef int(*F)(ExcavatorHandle*,const void*);return ((F)resolve(__func__))(h,sample);
}
int libexcavator_to_binary(ExcavatorHandle *h,unsigned char *b,int n){
 typedef int(*F)(ExcavatorHandle*,unsigned char*,int);return ((F)resolve(__func__))(h,b,n);
}
int libexcavator_from_binary(ExcavatorHandle *h,const unsigned char *b,int n){
 typedef int(*F)(ExcavatorHandle*,const unsigned char*,int);return ((F)resolve(__func__))(h,b,n);
}
