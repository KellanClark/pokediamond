#include "global.h"
#include "scrcmd.h"
#include "event_data.h"
#include "heap.h"
#include "pokedex.h"
#include "pokemon_storage_system.h"
#include "unk_0202C144.h"

extern struct PCStorage* GetStoragePCPointer(struct SaveData* save);
extern void* FUN_02022528(struct SaveData* save);
extern void FUN_0202BEDC(struct Pokemon* pokemon);
extern void FUN_0202BFD8(void* a0, s32 a1, struct Pokemon* pokemon);
extern u16 FUN_0202C000(struct Pokemon* pokemon);
extern void FUN_0204B9EC(struct FieldSystem*);
extern u32 FUN_0204BA1C(struct FieldSystem*);
extern u16 FUN_0204BAC4(struct FieldSystem*);
extern u16 FUN_0204BAD4(struct FieldSystem*);
extern u16 FUN_0204BAE4(struct FieldSystem*);
extern void FUN_0205F224(struct ScriptState* state);
extern void FUN_0205F234(struct ScriptState* state);
extern void FUN_0208089C(struct Pokemon* pokemon, PlayerProfile* player, u32 a2, u32 a3, u32 heap_id);

BOOL ScrCmd_Unk0253(struct ScriptContext* ctx) //0253
{
    struct ScriptState* state = SaveArray_Flags_Get(ctx->fieldSystem->saveData);
    u16 unk = ScriptGetVar(ctx);

    if (unk == 0)
    {
        FUN_0205F224(state);
        FUN_0204B9EC(ctx->fieldSystem);
    }
    else if (unk == 1)
    {
        FUN_0205F234(state);
        FUN_0204BA1C(ctx->fieldSystem);
    }
    else
    {
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

BOOL ScrCmd_Unk0254(struct ScriptContext* ctx) //0254
{
    void* unk = FUN_02022528(ctx->fieldSystem->saveData);
    struct Pokemon* pokemon = AllocMonZeroed(32);
    u16* ret_ptr = ScriptGetVarPointer(ctx);

    u16 eggs = FUN_0202C000(unk);
    if (eggs == 6) {
        *ret_ptr = 1;
    } else {
        *ret_ptr = 0;
    }

    FreeToHeap(pokemon);

    return FALSE;
}

BOOL ScrCmd_Unk0255(struct ScriptContext* ctx) //0255
{
    void* unk = FUN_02022528(ctx->fieldSystem->saveData);
    struct PCStorage* pc = GetStoragePCPointer(ctx->fieldSystem->saveData);
    struct Pokemon* pokemon = AllocMonZeroed(32);
    PlayerProfile* player = Save_PlayerData_GetProfileAddr(ctx->fieldSystem->saveData);
    struct Pokedex* pokedex = Save_Pokedex_Get(ctx->fieldSystem->saveData); // unused

    for (s32 i = 0; i < PARTY_SIZE; i++)
    {
        FUN_0202BFD8(unk, i, pokemon);
        FUN_0208089C(pokemon, player, 2, 0, 32);

        struct BoxPokemon* box_mon = FUN_020690E4(pokemon);
        GF_ASSERT(PCStorage_PlaceMonInFirstEmptySlotInAnyBox(pc, box_mon));

        FUN_0202C144(ctx->fieldSystem->saveData, pokemon);
    }

    FreeToHeap(pokemon);
    FUN_0202BEDC(unk);

    return FALSE;
}

BOOL ScrCmd_Unk0256(struct ScriptContext* ctx) //0256
{
    u16 unk = ScriptGetVar(ctx);
    u16* ret_ptr = GetVarPointer(ctx->fieldSystem, ScriptReadHalfword(ctx));

    switch (unk)
    {
    case 0:
        *ret_ptr = FUN_0204BAC4(ctx->fieldSystem);
        break;
    case 1:
        *ret_ptr = FUN_0204BAD4(ctx->fieldSystem);
        break;
    case 2:
        *ret_ptr = FUN_0204BAE4(ctx->fieldSystem);
        break;
    case 3:
        // For some reason, mwcc puts the FUN_0204BAD4 call before the FUN_0204BAC4 and FUN_0204BAE4 calls.
        *ret_ptr = (u16)(FUN_0204BAC4(ctx->fieldSystem) + FUN_0204BAE4(ctx->fieldSystem) + FUN_0204BAD4(ctx->fieldSystem));
        break;
    }

    return FALSE;
}
