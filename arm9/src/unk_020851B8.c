#include "global.h"
#include "unk_020851B8.h"
#include "constants/items.h"
#include "heap.h"

struct UnkStruct_020851B8 *FUN_020851B8(u32 heap_id)
{
    struct UnkStruct_020851B8 *ptr = AllocFromHeap(heap_id, sizeof(struct UnkStruct_020851B8));
    __builtin__clear(ptr, sizeof(struct UnkStruct_020851B8));
    return ptr;
}

void FUN_020851DC(struct UnkStruct_020851B8 *param0, u16 item_id, BOOL param2)
{
    u16 berry_id = item_id - FIRST_BERRY_IDX;
    FUN_02085200(param0, berry_id);

    if (param2 == TRUE)
    {
        param0->unk_8 = berry_id;
    }
}

void FUN_020851F8(struct UnkStruct_020851B8 *param0, u8 param1, u8 param2, u8 param3)
{
    param0->unk_9 = param1;
    param0->unk_A = param2;
    param0->unk_B = param3;
}

void FUN_02085200(struct UnkStruct_020851B8 *param0, u16 berry_id)
{
    param0->flags[berry_id / 32] |= 1 << (berry_id % 32);
}

u8 FUN_02085224(struct UnkStruct_020851B8 *param0, u16 berry_id)
{
    return param0->flags[berry_id / 32] & (1 << (berry_id % 32)) ? 1 : 0;
}

void FUN_0208524C(struct UnkStruct_020851B8 *param0, u8 *param1, u8 *param2)
{
    *param1 = param0->unk_9;
    *param2 = param0->unk_A;
}
