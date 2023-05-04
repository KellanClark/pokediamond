#ifndef POKEDIAMOND_MOD59_TV_H
#define POKEDIAMOND_MOD59_TV_H

#include "nitro/types.h"
#include "main.h"

typedef struct MOD59_TVOverlayData2
{
    u32 heap_id;
    struct BgConfig *bgConfig;
    u8 padding[0x1C];
    u32 unk24;
} MOD59_TVOverlayData;

BOOL MOD59_TVInit(struct UnkStruct_02006234 *param0, u32 *param1);
BOOL MOD59_TVMain(struct UnkStruct_02006234 *overlayStruct, u32 *param1);
BOOL MOD59_TVExit(struct UnkStruct_02006234 *overlayStruct, u32 *param1);
void MOD59_TVDoGpuBgUpdate(MOD59_TVOverlayData *data);

#endif // POKEDIAMOND_MOD59_TV_H