#ifndef EXCAVATOR_RECOVERED_H
#define EXCAVATOR_RECOVERED_H
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif
typedef struct { double x,y,z; } ExcavatorPoint;
typedef struct { double AB; ExcavatorPoint TT[4]; } ExcavatorTool;
typedef struct { uint64_t opaque[128]; } ExcavatorHandle;
typedef struct { ExcavatorPoint world_from_device; double GL,GR,LR,HG; } ExcavatorMode1;
int libexcavator_cali_mode_1_0(ExcavatorHandle*,const ExcavatorMode1*);
typedef struct { ExcavatorPoint world_from_device; double HA,Hy,Ay,Ax,Dx,AD,BD,CD,BC; ExcavatorTool tool; } ExcavatorMode3;
int libexcavator_cali_mode_3_0(ExcavatorHandle*,const ExcavatorMode3*);
typedef struct { ExcavatorPoint world_from_device,world_from_sensor; double HA,Hy,Ay,Ax,Dx,AD,BD,CD,BC; ExcavatorTool tool; } ExcavatorMode2;
int libexcavator_cali_mode_2_0(ExcavatorHandle*,const ExcavatorMode2*);
void libexcavator_init(ExcavatorHandle *handle);
int libexcavator_get_mode(const ExcavatorHandle *handle);
int libexcavator_tool_check(const ExcavatorTool *tool);
int libexcavator_tool_from_distance(ExcavatorTool *tool, double ab, double ac, double bc, double width_diagonal, double width);
int libexcavator_get_tool(const ExcavatorHandle *handle, ExcavatorTool *tool);
const char *libexcavator_version(void);
int libexcavator_set_tool(ExcavatorHandle *handle,const ExcavatorTool *tool);
int libexcavator_tool_to_binary(const ExcavatorTool *tool,unsigned char *buffer,int capacity);
int libexcavator_tool_from_binary(ExcavatorTool *tool,const unsigned char *input,int size);
#ifdef __cplusplus
}
#endif
#endif
