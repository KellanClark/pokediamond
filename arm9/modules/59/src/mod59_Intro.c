#include "global.h"
#include "mod59_Intro.h"
#include "GX_layers.h"
#include "PAD_pad.h"
#include "bg_window.h"
#include "brightness.h"
#include "constants/sndseq.h"
#include "demo/intro/intro.naix"
#include "game_init.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "list_menu_items.h"
#include "message_format.h"
#include "mod59_TV.h"
#include "module_52.h"
#include "msgdata.h"
#include "msgdata/msg.naix"
#include "msgdata/msg/narc_0341.h"
#include "overlay_manager.h"
#include "player_data.h"
#include "pokemon.h"
#include "render_text.h"
#include "render_window.h"
#include "text.h"
#include "unk_020040F4.h"
#include "unk_020051F4.h"
#include "unk_02024E64.h"

extern void *FUN_02077A84(u32 heap_id, u32 param1, u32 param2, u32 param3, struct Options *options);

extern void FUN_0200E3A0(PMLCDTarget, int);

const struct WindowTemplate MOD59_021D9DB8 =
    {
        .bgId = GF_BG_LYR_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = 4,
        .paletteNum = 6,
        .baseTile = 877,
    };

const struct WindowTemplate MOD59_021D9DA8 =
    {
        .bgId = GF_BG_LYR_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 3,
        .width = 6,
        .height = 4,
        .paletteNum = 5,
        .baseTile = 853,
    };

const struct WindowTemplate MOD59_021D9DB0 =
    {
        .bgId = GF_BG_LYR_MAIN_0,
        .tilemapLeft = 1,
        .tilemapTop = 3,
        .width = 16,
        .height = 6,
        .paletteNum = 5,
        .baseTile = 781,
    };

const struct WindowTemplate MOD59_021D9D90 =
    {
        .bgId = GF_BG_LYR_MAIN_0,
        .tilemapLeft = 8,
        .tilemapTop = 0,
        .width = 24,
        .height = 24,
        .paletteNum = 5,
        .baseTile = 301,
    };

const struct WindowTemplate MOD59_021D9D98 =
    {
        .bgId = GF_BG_LYR_MAIN_0,
        .tilemapLeft = 4,
        .tilemapTop = 0,
        .width = 24,
        .height = 24,
        .paletteNum = 5,
        .baseTile = 301,
    };

const struct WindowTemplate MOD59_021D9DA0 =
    {
        .bgId = GF_BG_LYR_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 3,
        .width = 14,
        .height = 10,
        .paletteNum = 5,
        .baseTile = 737,
    };

const u32 MOD59_021D9DC0[3] = { NARC_intro_pokeball_button_2_NCGR, NARC_intro_pokeball_button_3_NCGR, 0xFFFF };

const struct GraphicsModes MOD59_021D9DCC =
    {
        .dispMode = GX_DISPMODE_GRAPHICS,
        .bgMode = GX_BGMODE_0,
        .subMode = GX_BGMODE_0,
        ._2d3dMode = GX_BG0_AS_2D
    };

const struct OverlayManagerTemplate MOD59_021D9DDC =
    {
        .initFunc = MOD59_TVInit,
        .mainFunc = MOD59_TVMain,
        .exitFunc = MOD59_TVExit,
        .ovly = SDK_OVERLAY_INVALID_ID
    };

const struct MOD59_CharStruct021D9DEC MOD59_021D9DEC =
    {
        .narcId = { NARC_intro_lucas_walk_1_NCGR, NARC_intro_lucas_walk_2_NCGR, NARC_intro_lucas_walk_3_NCGR, NARC_intro_lucas_walk_4_NCGR }
    };

const struct MOD59_CharStruct021D9DEC MOD59_021D9DFC =
    {
        .narcId = { NARC_intro_dawn_walk_1_NCGR, NARC_intro_dawn_walk_2_NCGR, NARC_intro_dawn_walk_3_NCGR, NARC_intro_dawn_walk_4_NCGR }
    };

const struct MOD59_ListStruct021D9E0C MOD59_021D9E0C[2] =
    {
        {
            .msgNo = narc_0341_00034, //YES
            .val = 1
        },
        {
            .msgNo = narc_0341_00035, //NO
            .val = 2
        }
    };

const struct MOD59_UnkStruct021D9E30 MOD59_021D9E1C =
    {
        .scrnIds = { NARC_intro_main_background_NSCR, NARC_intro_control_info_padab_NSCR, NARC_intro_control_info_xy_NSCR, NARC_intro_control_info_touchscreen_NSCR, NARC_intro_adventure_info_NSCR }
    };

const struct MOD59_UnkStruct021D9E30 MOD59_021D9E30 =
    {
        .scrnIds = { NARC_intro_sub_background_1_NSCR, NARC_intro_sub_background_2_NSCR, NARC_intro_sub_background_2_NSCR, NARC_intro_sub_background_3_NSCR, NARC_intro_sub_background_4_NSCR }
    };

const u32 MOD59_021D9E44[5] = { 0, 6, 1, 12, 2060 };

const struct MOD59_ListStruct021D9E0C MOD59_021D9E58[3] =
    {
        {
            .msgNo = narc_0341_00031, //CONTROL INFO
            .val = 1
        },
        {
            .msgNo = narc_0341_00032, //ADVENTURE INFO
            .val = 2
        },
        {
            .msgNo = narc_0341_00033, //NO INFO NEEDED
            .val = 3
        }
    };

const struct MOD59_CharStruct021D9E70 MOD59_021D9E70 =
    {
        .charData = { NARC_intro_dawn_walk_1_NCGR, NARC_intro_narc_0044_NCGR, NARC_intro_narc_0045_NCGR, NARC_intro_narc_0046_NCGR, NARC_intro_narc_0047_NCGR, 0xFF }
    };

const struct MOD59_CharStruct021D9E70 MOD59_021D9E88 =
    {
        .charData = { NARC_intro_lucas_walk_1_NCGR, NARC_intro_narc_0040_NCGR, NARC_intro_narc_0041_NCGR, NARC_intro_narc_0042_NCGR, NARC_intro_narc_0043_NCGR, 0xFF }
    };

const struct BgTemplate MOD59_021D9EA0 =
    {
        .x = 0,
        .y = 0,
        .bufferSize = 2048,
        .baseTile = 0,

        .size = GF_BG_SCR_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = GX_BG_AREAOVER_XLU,
        .unk17 = 0,
        .mosaic = FALSE
    };

const struct BgTemplate MOD59_021D9EBC =
    {
        .x = 0,
        .y = 0,
        .bufferSize = 2048,
        .baseTile = 0,

        .size = GF_BG_SCR_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = GX_BG_AREAOVER_XLU,
        .unk17 = 0,
        .mosaic = FALSE
    };

const u16 MOD59_021D9ED8[0x10] = { 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C, 0x6A3C };

const struct ListMenuTemplate MOD59_021D9EF8 =
    {
        .items = NULL,
        .moveCursorFunc = NULL,
        .itemPrintFunc = NULL,
        .window = NULL,
        .totalItems = 0,
        .maxShowed = 0,
        .header_X = 0,
        .item_X = 12,
        .cursor_X = 0,
        .upText_Y = 0,
        .cursorPal = 1,
        .fillValue = 15,
        .cursorShadowPal = 2,
        .lettersSpacing = 0,
        .itemVerticalPadding = 0,
        .scrollMultiple = 0,
        .fontId = 0,
        .cursorKind = 0,
        .unk_1C = 0
    };

const struct MOD59_ListStruct021D9E0C MOD59_021D9F40[5] =
    {
        {
            .msgNo = narc_0341_00036, //New name!
            .val = 1
        },
        {
            .msgNo = narc_0341_00037, //Barry
            .val = 2
        },
        {
            .msgNo = narc_0341_00038, //Damion
            .val = 3
        },
        {
            .msgNo = narc_0341_00039, //Tyson
            .val = 4
        },
        {
            .msgNo = narc_0341_00040, //Markus
            .val = 5
        }
    };

const struct MOD59_ListStruct021D9E0C MOD59_021D9F68[5] =
    {
        {
            .msgNo = narc_0341_00036, //New name!
            .val = 1
        },
        {
            .msgNo = narc_0341_00041, //Clint
            .val = 2
        },
        {
            .msgNo = narc_0341_00042, //Ralph
            .val = 3
        },
        {
            .msgNo = narc_0341_00043, //Lewis
            .val = 4
        },
        {
            .msgNo = narc_0341_00044, //Tommy
            .val = 5
        }
    };

const struct GraphicsBanks MOD59_021D9F18 =
    {
        .bg = GX_VRAM_BG_128_B,
        .bgextpltt = GX_VRAM_BGEXTPLTT_NONE,
        .subbg = GX_VRAM_SUB_BG_128_C,
        .subbgextpltt = GX_VRAM_SUB_BGEXTPLTT_NONE,
        .obj = GX_VRAM_OBJ_NONE,
        .objextpltt = GX_VRAM_OBJEXTPLTT_NONE,
        .subobj = GX_VRAM_SUB_OBJ_NONE,
        .subobjextpltt = GX_VRAM_SUB_OBJEXTPLTT_NONE,
        .tex = GX_VRAM_TEX_NONE,
        .texpltt = GX_VRAM_TEXPLTT_NONE
    };

const struct MOD59_GraphicsPaletteMap021D9F90 MOD59_021D9F90 =
    {
        .map =
        {
            {
                .charNum = 0,
                .palNum = 0
            },
            //rowan sprite
            {
                .charNum = NARC_intro_rowan_front_NCGR,
                .palNum = NARC_intro_rowan_front_NCLR
            },
            //boy sprites
            {
                .charNum = NARC_intro_lucas_walk_1_NCGR,
                .palNum = NARC_intro_lucas_walk_NCLR
            },
            {
                .charNum = NARC_intro_lucas_walk_2_NCGR,
                .palNum = NARC_intro_lucas_walk_NCLR
            },
            {
                .charNum = NARC_intro_lucas_walk_3_NCGR,
                .palNum = NARC_intro_lucas_walk_NCLR
            },
            {
                .charNum = NARC_intro_lucas_walk_4_NCGR,
                .palNum = NARC_intro_lucas_walk_NCLR
            },
            //girl sprites
            {
                .charNum = NARC_intro_dawn_walk_1_NCGR,
                .palNum = NARC_intro_dawn_walk_NCLR
            },
            {
                .charNum = NARC_intro_dawn_walk_2_NCGR,
                .palNum = NARC_intro_dawn_walk_NCLR
            },
            {
                .charNum = NARC_intro_dawn_walk_3_NCGR,
                .palNum = NARC_intro_dawn_walk_NCLR
            },
            {
                .charNum = NARC_intro_dawn_walk_4_NCGR,
                .palNum = NARC_intro_dawn_walk_NCLR
            },
            //barry sprite
            {
                .charNum = NARC_intro_barry_front_NCGR,
                .palNum = NARC_intro_barry_front_NCLR
            }
        }
    };

const u8 MOD59_021D9FE8[0x64] =
    {
        0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x40, 0x41, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D,
        0x0E, 0x0F, 0x42, 0x43, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x44, 0x45, 0x18, 0x19,
        0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x46, 0x47, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27,
        0x48, 0x49, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x4A, 0x4B, 0x30, 0x31, 0x32, 0x33,
        0x34, 0x35, 0x36, 0x37, 0x4C, 0x4D, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F, 0x4E, 0x4F,
        0x50, 0x51, 0x52, 0x53, 0x58, 0x59, 0x5A, 0x5B, 0x60, 0x61, 0x54, 0x55, 0x56, 0x57, 0x5C, 0x5D,
        0x5E, 0x5F, 0x62, 0x63
    };

extern void BeginNormalPaletteFade(u32 pattern, u32 typeTop, u32 typeBottom, u16 colour, u32 duration, u32 framesPer, u32 heapId);
extern BOOL IsPaletteFadeFinished(void);

extern u32 FUN_020142EC(u32 param0, u32 param1, u32 param2, u32 heap_id);

extern void FUN_02077AC4(void *param0);

extern void FUN_020143D0(u32 param0);
extern u32 FUN_02014590(u32 heap_id);
extern void FUN_020145A8(u32 param0);

extern u32 *FUN_0201244C(u16 param0, u16 param1, u32 heap_id);
extern u32 *FUN_02012470(u16 param0, u16 param1, u32 heap_id);

extern const struct OverlayManagerTemplate UNK_020FA5FC;

extern void FUN_020145C8(u32 param0, u32 param1[5]);
extern u32 FUN_02014630(u32 param0);
extern void FUN_020146C4(u32 param0);

FS_EXTERN_OVERLAY(MODULE_52);

BOOL MOD59_IntroInit(struct OverlayManager *overlayManager, u32 *status)
{
#pragma unused(status)
    CreateHeap(3, 0x52, 1 << 18);
    MOD59_IntroOverlayData *data = (MOD59_IntroOverlayData *) OverlayManager_CreateAndGetData(overlayManager, sizeof(MOD59_IntroOverlayData), 0x52);
    (void)memset((void *)data, 0, sizeof(MOD59_IntroOverlayData));

    data->heap_id = 0x52;
    s32 *field18 = OverlayManager_GetField18(overlayManager);
    data->save = (struct SaveData *)field18[2]; //?
    data->options = Save_PlayerData_GetOptionsAddr(data->save);
    data->nextControllerCounter = data->controllerCounter = 0;
    data->loadedOverlay = NULL;
    data->playerStruct = (struct MOD59_UnkPlayerStruct *)FUN_02077A84(0x52, 0, 0, 7, data->options);
    data->rivalStruct = (struct MOD59_UnkPlayerStruct *)FUN_02077A84(0x52, 3, 0, 7, data->options);
    data->scrnDataIndexMain = 0;
    data->spriteDataIndex0 = 0;
    data->spriteDataIndex1 = 0;
    data->scrnDataIndexSub = 0;
    data->tickTimer = 0;
    return TRUE;
}

BOOL MOD59_IntroMain(struct OverlayManager *overlayManager, u32 *status)
{
    MOD59_IntroOverlayData *data = (MOD59_IntroOverlayData *) OverlayManager_GetData(overlayManager);
    BOOL ret = FALSE;

    switch (*status)
    {
        case 0:
            FUN_0200E3A0(PM_LCD_TOP, 0);
            FUN_0200E3A0(PM_LCD_BOTTOM, 0);

            Main_SetVBlankIntrCB(NULL, NULL);
            Main_SetHBlankIntrCB(NULL, NULL);

            GX_DisableEngineALayers();
            GX_DisableEngineBLayers();

            GX_SetVisiblePlane(0);
            GXS_SetVisiblePlane(0);

            SetKeyRepeatTimers(4, 8);

            MOD59_IntroSetupBg(data);
            MOD59_IntroSetupMsg(data);
            MOD59_021D7A4C(data);

            Main_SetVBlankIntrCB((void (*)(void *))MOD59_IntroDoGpuBgUpdate, data);

            GX_BothDispOn();

            *status = 1;

            break;

        case 1:
            if (MOD59_MasterController(data) == TRUE)
            {
                BeginNormalPaletteFade(0, 0, 0, GX_RGB_BLACK, 6, 1, data->heap_id);
                *status = 2;
            }

            if (data->loadedOverlay == NULL)
            {
                break;
            }

            BeginNormalPaletteFade(0, 0, 0, GX_RGB_BLACK, 6, 1, data->heap_id);
            *status = 3;

            break;

        case 2: //wait for fade, cleanup
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }

            MOD59_IntroDestroyMsg(data);
            MOD59_IntroDestroyBg(data);
            MOD59_021D7A5C(data);

            Main_SetVBlankIntrCB(NULL, NULL);

            ret = TRUE;
            break;

        case 3: //wait for fade, cleanup
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }

            MOD59_IntroDestroyMsg(data);
            MOD59_IntroDestroyBg(data);
            MOD59_021D7A5C(data);

            Main_SetVBlankIntrCB(NULL, NULL);

            *status = 4;

            break;

        case 4:
            if (OverlayManager_Run(data->loadedOverlay) != TRUE)
            {
                break;
            }

            OverlayManager_Delete(data->loadedOverlay);
            data->loadedOverlay = NULL;

            *status = 5;

            break;

        case 5:
            *status = 0;

            break;
    }

    return ret;
}

BOOL MOD59_IntroExit(struct OverlayManager *overlayManager, u32 *status)
{
#pragma unused(status)
    MOD59_IntroOverlayData *data = (MOD59_IntroOverlayData *) OverlayManager_GetData(overlayManager);

    u32 heap_id = data->heap_id;
    PlayerName_StringToFlat(Save_PlayerData_GetProfileAddr(data->save), data->playerStruct->name);
    PlayerProfile_SetTrainerGender(Save_PlayerData_GetProfileAddr(data->save), data->playerStruct->gender);

    RivalsNameToU16Array(FUN_02024EB4(data->save), data->rivalStruct->name);

    FUN_02077AC4(data->playerStruct);
    FUN_02077AC4(data->rivalStruct);

    OverlayManager_FreeData(overlayManager);
    DestroyHeap(heap_id);

    RegisterMainOverlay(FS_OVERLAY_ID(MODULE_52), &MOD52_021D76D8);

    return TRUE;
}

void MOD59_IntroDoGpuBgUpdate(MOD59_IntroOverlayData *data)
{
    DoScheduledBgGpuUpdates(data->bgConfig);
}

BOOL MOD59_TestPokeballTouchLocation(void)
{
    BOOL ret = FALSE;

    if (gSystem.touchNew != 0 && gSystem.touchX < 256 && gSystem.touchY < 192)
    {
        s32 distanceFromXCentre = gSystem.touchX < 128 ? (u16)(128 - gSystem.touchX) : (u16)(gSystem.touchX - 128);
        s32 distanceFromYCentre = gSystem.touchY < 100 ? (u16)(100 - gSystem.touchY) : (u16)(gSystem.touchY - 100);

        s32 distanceXSquare = distanceFromXCentre * distanceFromXCentre;
        s32 distanceYSquare = distanceFromYCentre * distanceFromYCentre;

        if (distanceXSquare + distanceYSquare <= 256)
        {
            ret = TRUE;
        }
    }

    return ret;
}

void MOD59_IntroSetupBg(MOD59_IntroOverlayData *data)
{
    struct GraphicsBanks graphicsBanks = MOD59_021D9F18;
    GX_SetBanks(&graphicsBanks);
    data->bgConfig = BgConfig_Alloc(data->heap_id);

    struct GraphicsModes graphicsModes = MOD59_021D9DCC;
    SetBothScreensModesAndDisable(&graphicsModes);

    struct BgTemplate bgTemplateMain = MOD59_021D9EA0;
    bgTemplateMain.screenBase = GX_BG_SCRBASE_0x7800;
    bgTemplateMain.charBase = GX_BG_CHARBASE_0x18000;
    InitBgFromTemplate(data->bgConfig, GF_BG_LYR_MAIN_0, &bgTemplateMain, GF_BG_TYPE_TEXT);
    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);

    bgTemplateMain.screenBase = GX_BG_SCRBASE_0x7000;
    bgTemplateMain.charBase = GX_BG_CHARBASE_0x14000;
    InitBgFromTemplate(data->bgConfig, GF_BG_LYR_MAIN_1, &bgTemplateMain, GF_BG_TYPE_TEXT);
    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_1);

    bgTemplateMain.screenBase = GX_BG_SCRBASE_0x6800;
    bgTemplateMain.charBase = GX_BG_CHARBASE_0x10000;
    InitBgFromTemplate(data->bgConfig, GF_BG_LYR_MAIN_2, &bgTemplateMain, GF_BG_TYPE_TEXT);
    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2);

    bgTemplateMain.screenBase = GX_BG_SCRBASE_0x6000;
    bgTemplateMain.charBase = GX_BG_CHARBASE_0x0c000;
    InitBgFromTemplate(data->bgConfig, GF_BG_LYR_MAIN_3, &bgTemplateMain, GF_BG_TYPE_TEXT);
    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_3);

    FUN_0200CD68(data->bgConfig, 0, 994, 4, 0, data->heap_id);
    LoadUserFrameGfx1(data->bgConfig, GF_BG_LYR_MAIN_0, 985, 3, 0, data->heap_id);
    LoadFontPal0(GF_PAL_LOCATION_MAIN_BG, GF_PAL_SLOT_OFFSET_5, data->heap_id);
    LoadFontPal1(GF_PAL_LOCATION_MAIN_BG, GF_PAL_SLOT_OFFSET_6, data->heap_id);

    struct BgTemplate bgTemplateSub = MOD59_021D9EBC;
    bgTemplateSub.screenBase = GX_BG_SCRBASE_0x7800;
    bgTemplateSub.charBase = GX_BG_CHARBASE_0x18000;
    InitBgFromTemplate(data->bgConfig, GF_BG_LYR_SUB_0, &bgTemplateSub, GF_BG_TYPE_TEXT);
    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_SUB_0);

    bgTemplateSub.screenBase = GX_BG_SCRBASE_0x7000;
    bgTemplateSub.charBase = GX_BG_CHARBASE_0x14000;
    InitBgFromTemplate(data->bgConfig, GF_BG_LYR_SUB_1, &bgTemplateSub, GF_BG_TYPE_TEXT);
    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_SUB_1);

    bgTemplateSub.screenBase = GX_BG_SCRBASE_0x6800;
    bgTemplateSub.charBase = GX_BG_CHARBASE_0x10000;
    InitBgFromTemplate(data->bgConfig, GF_BG_LYR_SUB_2, &bgTemplateSub, GF_BG_TYPE_TEXT);
    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_SUB_2);

    bgTemplateSub.screenBase = GX_BG_SCRBASE_0x6000;
    bgTemplateSub.charBase = GX_BG_CHARBASE_0x0c000;
    InitBgFromTemplate(data->bgConfig, GF_BG_LYR_SUB_3, &bgTemplateSub, GF_BG_TYPE_TEXT);
    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_SUB_3);

    ToggleBgLayer(GF_BG_LYR_MAIN_0, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_MAIN_1, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_MAIN_2, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_MAIN_3, GX_LAYER_TOGGLE_OFF);

    ToggleBgLayer(GF_BG_LYR_SUB_0, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_SUB_1, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_SUB_2, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_SUB_3, GX_LAYER_TOGGLE_OFF);

    MOD59_LoadInitialTilemap(data);
    data->fadeCounter = 0;
}

void MOD59_IntroDestroyBg(MOD59_IntroOverlayData *data)
{
    ToggleBgLayer(GF_BG_LYR_MAIN_0, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_MAIN_1, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_MAIN_2, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_MAIN_3, GX_LAYER_TOGGLE_OFF);

    ToggleBgLayer(GF_BG_LYR_SUB_0, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_SUB_1, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_SUB_2, GX_LAYER_TOGGLE_OFF);
    ToggleBgLayer(GF_BG_LYR_SUB_3, GX_LAYER_TOGGLE_OFF);

    FreeBgTilemapBuffer(data->bgConfig, GF_BG_LYR_MAIN_0);
    FreeBgTilemapBuffer(data->bgConfig, GF_BG_LYR_MAIN_1);
    FreeBgTilemapBuffer(data->bgConfig, GF_BG_LYR_MAIN_2);
    FreeBgTilemapBuffer(data->bgConfig, GF_BG_LYR_MAIN_3);

    FreeBgTilemapBuffer(data->bgConfig, GF_BG_LYR_SUB_0);
    FreeBgTilemapBuffer(data->bgConfig, GF_BG_LYR_SUB_1);
    FreeBgTilemapBuffer(data->bgConfig, GF_BG_LYR_SUB_2);
    FreeBgTilemapBuffer(data->bgConfig, GF_BG_LYR_SUB_3);

    FreeToHeap(data->bgConfig);
}

void MOD59_IntroSetupMsg(MOD59_IntroOverlayData *data)
{
    data->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_MSGDATA_MSG, NARC_msg_narc_0341_bin, data->heap_id);

    ResetAllTextPrinters();

    data->unk60 = FUN_020142EC(0, 0, 6, data->heap_id);

    data->messageFormat = MessageFormat_New(data->heap_id);

    data->displayMessageCounter = 0;
    data->displayControlMessageCounter = 0;
    data->createListCounter = 0;
}

void MOD59_IntroDestroyMsg(MOD59_IntroOverlayData *data)
{
    MessageFormat_Delete(data->messageFormat);
    FUN_020143D0(data->unk60);
    DestroyMsgData(data->msgData);
}

void MOD59_021D7A4C(MOD59_IntroOverlayData *data) //MOD59_Setup... something?
{
    data->unk68 = FUN_02014590(data->heap_id);
}

void MOD59_021D7A5C(MOD59_IntroOverlayData *data) //MOD59_Destroy... something?
{
    FUN_020145A8(data->unk68);
}

BOOL MOD59_FadeController(MOD59_IntroOverlayData *data, u32 bgId, u32 param2)
{
    BOOL subScreen;
    GXBlendPlaneMask planeMask;
    BOOL ret = FALSE;
    switch (bgId)
    {
        case GF_BG_LYR_MAIN_0:
        case GF_BG_LYR_MAIN_3:
        default:
            planeMask = GX_BLEND_PLANEMASK_BG0;
            subScreen = FALSE;
            break;
        case GF_BG_LYR_MAIN_1:
            planeMask = GX_BLEND_PLANEMASK_BG1;
            subScreen = FALSE;
            break;
        case GF_BG_LYR_MAIN_2:
            planeMask = GX_BLEND_PLANEMASK_BG2;
            subScreen = FALSE;
            break;
        case GF_BG_LYR_SUB_0:
            planeMask = GX_BLEND_PLANEMASK_BG0;
            subScreen = TRUE;
            break;
        case GF_BG_LYR_SUB_1:
            planeMask = GX_BLEND_PLANEMASK_BG1;
            subScreen = TRUE;
            break;
        case GF_BG_LYR_SUB_2:
            planeMask = GX_BLEND_PLANEMASK_BG2;
            subScreen = TRUE;
            break;
    }
    switch(data->fadeCounter)
    {
        case 0:
            if (param2 == 0)
            {
                data->alphaBlend1 = 0;
                data->alphaBlend2 = 16;
                data->fadeCounter = 1;
                if (!subScreen)
                {
                    G2_SetBlendAlpha(planeMask, (GXBlendPlaneMask)(GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1), data->alphaBlend1, data->alphaBlend2);
                }
                else
                {
                    G2S_SetBlendAlpha(planeMask, (GXBlendPlaneMask)(GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1), data->alphaBlend1, data->alphaBlend2);
                }
                ToggleBgLayer((u8)bgId, GX_LAYER_TOGGLE_ON);
            }
            else
            {
                data->alphaBlend1 = 16;
                data->alphaBlend2 = 0;
                data->fadeCounter = 2;
            }
            break;
        case 1:
            if (data->alphaBlend2 != 0)
            {
                data->alphaBlend1++;
                data->alphaBlend2--;
                if (!subScreen)
                {
                    G2_SetBlendAlpha(planeMask, (GXBlendPlaneMask)(GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1), data->alphaBlend1, data->alphaBlend2);
                }
                else
                {
                    G2S_SetBlendAlpha(planeMask, (GXBlendPlaneMask)(GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1), data->alphaBlend1, data->alphaBlend2);
                }
            }
            else
            {
                data->fadeCounter = 3;
            }
            break;
        case 2:
            if (data->alphaBlend1 != 0)
            {
                data->alphaBlend1--;
                data->alphaBlend2++;
                if (!subScreen)
                {
                    G2_SetBlendAlpha(planeMask, (GXBlendPlaneMask)(GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1), data->alphaBlend1, data->alphaBlend2);
                }
                else
                {
                    G2S_SetBlendAlpha(planeMask, (GXBlendPlaneMask)(GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1), data->alphaBlend1, data->alphaBlend2);
                }
            }
            else
            {
                data->fadeCounter = 3;
                ToggleBgLayer((u8)bgId, GX_LAYER_TOGGLE_OFF);
            }
            break;
        case 3:
            reg_G2_BLDCNT = 0;
            reg_G2S_DB_BLDCNT = 0;
            data->fadeCounter = 0;
            ret = TRUE;
            break;
    }
    return ret;
}

BOOL MOD59_Timer(MOD59_IntroOverlayData *data, s32 timer)
{
    if (data->tickTimer < timer)
    {
        data->tickTimer++;
        return FALSE;
    }
    else
    {
        data->tickTimer = 0;
        return TRUE;
    }
}

void MOD59_TilemapChangePalette(MOD59_IntroOverlayData *data, u32 layer, u32 paletteNum)
{
    //TODO: messy hack to trick compiler, fix
    BgTilemapRectChangePalette(data->bgConfig, layer & 0xFF, 0, 0, 32, 24, (u8)paletteNum);
    BgCommitTilemapBufferToVram(data->bgConfig, (u8)layer);
}

BOOL MOD59_DisplayMessage(MOD59_IntroOverlayData *data, u32 msgNo, BOOL autoAdvance)
{
    BOOL ret = FALSE;
    switch(data->displayMessageCounter)
    {
        case 0:
            AddWindow(data->bgConfig, &data->window, &MOD59_021D9DB8);
            FillWindowPixelRect(&data->window, 15, 0, 0, 216, 32);
            DrawFrameAndWindow2(&data->window, FALSE, 994, 4);

            TextFlags_SetCanABSpeedUpPrint(TRUE);
            FUN_02002B7C(0);

            struct String* string = String_New(1024, data->heap_id);
            data->string = String_New(1024, data->heap_id);
            ReadMsgDataIntoString(data->msgData, msgNo, string);
            BufferString(data->messageFormat, 0, data->playerStruct->name, data->selectedGender, 1, 2);
            BufferString(data->messageFormat, 1, data->rivalStruct->name, 0, 1, 2);
            StringExpandPlaceholders(data->messageFormat, data->string, string);
            String_Delete(string);

            u32 delay = Options_GetTextFrameDelay(data->options);
            data->minTextSpacing = AddTextPrinterParameterized(&data->window, 1, data->string, 0, 0, delay, NULL);
            data->displayMessageCounter = 1;
            break;
        case 1:
            if (FUN_0201BD70((u8)data->minTextSpacing))
            {
                break;
            }
            String_Delete(data->string);
            data->displayMessageCounter = 2;
            break;
        case 2:
            if (autoAdvance != FALSE || (gSystem.newKeys & PAD_BUTTON_A) == 1)
            {
                RemoveWindow(&data->window);
                data->displayMessageCounter = 0;
                ret = TRUE;
                break;
            }
    }
    return ret;
}

void MOD59_PlaySelectSound(struct ListMenu *list, s32 index, u8 onInit)
{
#pragma unused(index)
#pragma unused(list)
    if (onInit == 0)
    {
        PlaySE(SEQ_SE_DP_SELECT);
    }
}

BOOL MOD59_CreateListWithText(MOD59_IntroOverlayData *data, u32 param1, u32 param2)
{
    BOOL ret = FALSE;
    const struct WindowTemplate *windowTemplate;
    const struct MOD59_ListStruct021D9E0C *listStruct;
    s32 i; // must be defined here to prevent a regswap
    s32 menuItemsCount = 0;
    switch (data->createListCounter)
    {
        case 0:
            switch (param1)
            {
                default:
                case 0:
                    windowTemplate = &MOD59_021D9DA8;
                    listStruct = MOD59_021D9E0C;
                    menuItemsCount = 2;
                    break;
                case 1:
                    windowTemplate = &MOD59_021D9DB0;
                    listStruct = MOD59_021D9E58;
                    menuItemsCount = 3;
                    break;
                case 2:
                    windowTemplate = &MOD59_021D9DA0;
                    if ((u8)gGameVersion == VERSION_DIAMOND)
                    {
                        listStruct = MOD59_021D9F40;
                        menuItemsCount = 5;
                    }
                    else
                    {
                        listStruct = MOD59_021D9F68;
                        menuItemsCount = 5;
                    }
                    break;
            }
            AddWindow(data->bgConfig, &data->listWindow, windowTemplate);
            data->listMenuItem = ListMenuItems_New(menuItemsCount, data->heap_id);
            for (i = 0; i < menuItemsCount; i++)
            {
                ListMenuItems_AppendFromMsgData(data->listMenuItem, data->msgData, listStruct[i].msgNo, listStruct[i].val);
            }
            struct ListMenuTemplate template = MOD59_021D9EF8;
            template.items = data->listMenuItem;
            template.totalItems = (u16)menuItemsCount;
            template.maxShowed = (u16)menuItemsCount;
            template.moveCursorFunc = MOD59_PlaySelectSound;
            template.window = &data->listWindow;
            data->listMenu = ListMenuInit(&template, 0, 0, (u8)data->heap_id);
            DrawFrameAndWindow1(template.window, TRUE, 985, 3);
            CopyWindowToVram(&data->listWindow);
            data->createListCounter = 1;
            break;
        case 1:
            data->listMenuInput = ListMenu_ProcessInput(data->listMenu);
            if(data->listMenuInput == ~0 || (data->listMenuInput == (~0 - 1) && param2 == 1))
            {
                break;
            }
            ClearFrameAndWindow1(&data->listWindow, FALSE);
            RemoveWindow(&data->listWindow);
            DestroyListMenu(data->listMenu, 0, 0);
            ListMenuItems_Delete(data->listMenuItem);
            PlaySE(SEQ_SE_DP_SELECT);
            data->createListCounter = 0;
            ret = TRUE;
    }
    return ret;
}

BOOL MOD59_DisplayControlAdventureMessage(MOD59_IntroOverlayData *data, u32 msgNo, u32 param2, u32 tilemapTop, u32 height)
{
    BOOL ret = 0;
    switch (data->displayControlMessageCounter)
    {
        case 0:
            ToggleBgLayer(GF_BG_LYR_MAIN_0, GX_LAYER_TOGGLE_OFF);
            data->string = String_New(1024, data->heap_id);
            ReadMsgDataIntoString(data->msgData, msgNo, data->string);
            struct WindowTemplate template;
            if (param2 == 1)
            {
                template = MOD59_021D9D98;
                u32 count = FUN_02002F90(data->string);
                template.tilemapTop = (u8)(12 - count);
                template.height = (u8)(count * 2);
                AddWindow(data->bgConfig, &data->window, &template);
                FillWindowPixelRect(&data->window, 0, 0, 0, 192, 192);
                AddTextPrinterParameterized2(&data->window, 0, data->string, 0, 0, 0, MakeFontColor(1, 2, 0), NULL);
            }
            else
            {
                template = MOD59_021D9D90;
                template.tilemapTop = (u8)tilemapTop;
                template.height = (u8)height;
                AddWindow(data->bgConfig, &data->window, &template);
                FillWindowPixelRect(&data->window, 0, 0, 0, 192, 192);
                AddTextPrinterParameterized2(&data->window, 0, data->string, 0, 0, 0, MakeFontColor(15, 2, 0), NULL);
            }
            String_Delete(data->string);
            data->displayControlMessageCounter = 1;
            break;
        case 1:
            CopyWindowToVram(&data->window);
            data->displayControlMessageCounter = 2;
            break;
        case 2:
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_0, 0) == TRUE)
            {
                data->displayControlMessageCounter = 3;
            }
            break;
        case 3:
            if((gSystem.newKeys & PAD_BUTTON_A) != 1 && (gSystem.newKeys & PAD_BUTTON_B) != 2)
            {
                break;
            }
            PlaySE(SEQ_SE_DP_SELECT);
            data->displayControlMessageCounter = 4;
            break;
        case 4:
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_0, 1) == TRUE)
            {
                data->displayControlMessageCounter = 5;
            }
            break;
        case 5:
            RemoveWindow(&data->window);
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            data->displayControlMessageCounter = 0;
            ret = TRUE;
    }
    return ret;
}

void MOD59_LoadInitialTilemap(MOD59_IntroOverlayData *data)
{
    GfGfxLoader_LoadCharData(NARC_DEMO_INTRO_INTRO, NARC_intro_main_background_tileset_NCGR, data->bgConfig, GF_BG_LYR_MAIN_3, 0, 0, FALSE, data->heap_id);
    BG_ClearCharDataRange(GF_BG_LYR_MAIN_0, 0x20, 0, data->heap_id);
    GfGfxLoader_LoadCharData(NARC_DEMO_INTRO_INTRO, NARC_intro_sub_background_tileset_NCGR, data->bgConfig, GF_BG_LYR_SUB_3, 0, 0, FALSE, data->heap_id);

    u32 mainPal;
    u32 subPal;
    if ((u8)gGameVersion == VERSION_DIAMOND)
    {
        mainPal = NARC_intro_main_background_diamond_NCLR;
        subPal = NARC_intro_sub_background_diamond_NCLR;
    }
    else
    {
        mainPal = NARC_intro_main_background_pearl_NCLR;
        subPal = NARC_intro_sub_background_pearl_NCLR;
    }
    GfGfxLoader_GXLoadPal(NARC_DEMO_INTRO_INTRO, mainPal, GF_PAL_LOCATION_MAIN_BG, GF_PAL_SLOT_OFFSET_0, 0x60, data->heap_id);
    GfGfxLoader_GXLoadPal(NARC_DEMO_INTRO_INTRO, subPal, GF_PAL_LOCATION_SUB_BG, GF_PAL_SLOT_OFFSET_0, 0xa0, data->heap_id);
    MOD59_LoadMainScrnData(data);
    MOD59_LoadCharDataFromIndex(data);
    MOD59_LoadSubScrnData(data);
    BG_SetMaskColor(GF_BG_LYR_MAIN_0, 0);
    BG_SetMaskColor(GF_BG_LYR_SUB_0, 0);
}

void MOD59_LoadMainScrnData(MOD59_IntroOverlayData *data)
{
    struct MOD59_UnkStruct021D9E30 scrnData = MOD59_021D9E1C;
    if (data->scrnDataIndexMain >= 5)
    {
        return;
    }
    GfGfxLoader_LoadScrnData(NARC_DEMO_INTRO_INTRO, scrnData.scrnIds[data->scrnDataIndexMain], data->bgConfig, GF_BG_LYR_MAIN_3, 0, 0, FALSE, data->heap_id);
}

void MOD59_LoadCharDataFromIndex(MOD59_IntroOverlayData *data)
{
    struct MOD59_GraphicsPaletteMap021D9F90 graphicsPaletteMap = MOD59_021D9F90;
    if (data->spriteDataIndex0 != 0 && data->spriteDataIndex0 < 12)
    {
        GfGfxLoader_LoadCharData(NARC_DEMO_INTRO_INTRO, graphicsPaletteMap.map[data->spriteDataIndex0].charNum, data->bgConfig, GF_BG_LYR_MAIN_1, 0, 0, FALSE, data->heap_id);
        GfGfxLoader_GXLoadPal(NARC_DEMO_INTRO_INTRO, graphicsPaletteMap.map[data->spriteDataIndex0].palNum, GF_PAL_LOCATION_MAIN_BG, GF_PAL_SLOT_OFFSET_7, 0x20, data->heap_id);
        GfGfxLoader_LoadScrnData(NARC_DEMO_INTRO_INTRO, NARC_intro_character_screen_NSCR, data->bgConfig, GF_BG_LYR_MAIN_1, 0, 0, FALSE, data->heap_id);
        MOD59_TilemapChangePalette(data, GF_BG_LYR_MAIN_1, 7);
    }
    if (data->spriteDataIndex1 != 0 && data->spriteDataIndex1 < 12)
    {
        GfGfxLoader_LoadCharData(NARC_DEMO_INTRO_INTRO, graphicsPaletteMap.map[data->spriteDataIndex1].charNum, data->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, FALSE, data->heap_id);
        GfGfxLoader_GXLoadPal(NARC_DEMO_INTRO_INTRO, graphicsPaletteMap.map[data->spriteDataIndex1].palNum, GF_PAL_LOCATION_MAIN_BG, GF_PAL_SLOT_OFFSET_8, 0x20, data->heap_id);
        GfGfxLoader_LoadScrnData(NARC_DEMO_INTRO_INTRO, NARC_intro_character_screen_NSCR, data->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, FALSE, data->heap_id);
        MOD59_TilemapChangePalette(data, GF_BG_LYR_MAIN_2, 8);
    }
}

void MOD59_LoadSubScrnData(MOD59_IntroOverlayData *data)
{
    struct MOD59_UnkStruct021D9E30 scrnData = MOD59_021D9E30;
    if (data->scrnDataIndexSub >= 5)
    {
        return;
    }
    GfGfxLoader_LoadScrnData(NARC_DEMO_INTRO_INTRO, scrnData.scrnIds[data->scrnDataIndexSub], data->bgConfig, GF_BG_LYR_SUB_3, 0, 0, FALSE, data->heap_id);
    if (data->scrnDataIndexSub == 1)
    {
        MOD59_TilemapChangePalette(data, GF_BG_LYR_SUB_3, 3);
    }
    else if (data->scrnDataIndexSub == 2)
    {
        MOD59_TilemapChangePalette(data, GF_BG_LYR_SUB_3, 2);
    }
}

#ifdef NONMATCHING
void MOD59_DrawMunchlax(MOD59_IntroOverlayData *data)
{
    struct SomeDrawPokemonStruct drawStruct;
    FUN_02068C00(&drawStruct, SPECIES_MUNCHLAX, MON_MALE, 2, FALSE, 0, 0);
    u16 *src = (u16 *)AllocFromHeap(data->heap_id, 0x64 * sizeof(u16));
    for (s32 i = 0; i < 0x64; i++)
    {
        src[i] = MOD59_021D9FE8[i] + 1;
    }
    u32 *charData = FUN_0201244C(drawStruct.unk0, drawStruct.unk2, data->heap_id);
    u32 *plttData = FUN_02012470(drawStruct.unk0, drawStruct.unk4, data->heap_id);

    FillBgTilemapRect(data->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, 0, 32, 24, 9);
    LoadRectToBgTilemapRect(data->bgConfig, GF_BG_LYR_MAIN_2, src, 11, 11, 10, 10);
    MOD59_TilemapChangePalette(data, GF_BG_LYR_MAIN_2, 9);
    BG_ClearCharDataRange(GF_BG_LYR_MAIN_2, 32, 0, data->heap_id);
    BG_LoadCharTilesData(data->bgConfig, GF_BG_LYR_MAIN_2, charData, 0xc80, 1);
    BG_LoadPlttData(GF_BG_LYR_MAIN_2, plttData, 32, GF_PAL_SLOT_OFFSET_8); //r2 and r3 regswap
    BG_LoadPlttData(GF_BG_LYR_MAIN_2, MOD59_021D9ED8, 32, GF_PAL_SLOT_OFFSET_9);

    FillBgTilemapRect(data->bgConfig, GF_BG_LYR_SUB_1, 0, 0, 0, 32, 24, 10);
    LoadRectToBgTilemapRect(data->bgConfig, GF_BG_LYR_SUB_1, src, 11, 7, 10, 10);
    MOD59_TilemapChangePalette(data, GF_BG_LYR_SUB_1, 10);
    BG_ClearCharDataRange(GF_BG_LYR_SUB_1, 32, 0, data->heap_id);
    BG_LoadCharTilesData(data->bgConfig, GF_BG_LYR_SUB_1, charData, 0xc80, 1);
    BG_LoadPlttData(GF_BG_LYR_SUB_1, plttData, 32, GF_PAL_SLOT_OFFSET_10);
    BG_LoadPlttData(GF_BG_LYR_SUB_1, MOD59_021D9ED8, 32, GF_PAL_SLOT_OFFSET_10);
    FreeToHeap(plttData);
    FreeToHeap(charData);
    FreeToHeap(src);
}
#else
asm void MOD59_DrawMunchlax(MOD59_IntroOverlayData *data)
{
    //clang-tidy off
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x20
    mov r2, #0
    str r2, [sp]
    str r2, [sp, #4]
    add r5, r0, #0
    ldr r1, =0x000001BE
    str r2, [sp, #8]
    add r0, sp, #0x10
    mov r3, #2
    bl FUN_02068C00
    ldr r0, [r5, #0]
    mov r1, #0xc8
    bl AllocFromHeap
    add r7, r0, #0
    ldr r2, =MOD59_021D9FE8
    mov r1, #0
    add r3, r7, #0
_021D82C8:
    ldrb r0, [r2]
    add r1, r1, #1
    add r2, r2, #1
    add r0, r0, #1
    strh r0, [r3]
    add r3, r3, #2
    cmp r1, #0x64
    blt _021D82C8
    add r1, sp, #0x10
    ldrh r0, [r1]
    ldrh r1, [r1, #2]
    ldr r2, [r5, #0]
    bl FUN_0201244C
    add r1, sp, #0x10
    add r4, r0, #0
    ldrh r0, [r1]
    ldrh r1, [r1, #4]
    ldr r2, [r5, #0]
    bl FUN_02012470
    mov r2, #0
    add r6, r0, #0
    str r2, [sp]
    mov r0, #0x20
    str r0, [sp, #4]
    mov r0, #0x18
    str r0, [sp, #8]
    mov r0, #9
    str r0, [sp, #0xc]
    ldr r0, [r5, #0x18]
    mov r1, #2
    add r3, r2, #0
    bl FillBgTilemapRect
    mov r3, #0xb
    str r3, [sp]
    mov r0, #0xa
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r0, [r5, #0x18]
    mov r1, #2
    add r2, r7, #0
    bl LoadRectToBgTilemapRect
    add r0, r5, #0
    mov r1, #2
    mov r2, #9
    bl MOD59_TilemapChangePalette
    ldr r3, [r5, #0]
    mov r0, #2
    mov r1, #0x20
    mov r2, #0
    bl BG_ClearCharDataRange
    mov r0, #1
    str r0, [sp]
    mov r3, #0x32
    ldr r0, [r5, #0x18]
    mov r1, #2
    add r2, r4, #0
    lsl r3, r3, #6
    bl BG_LoadCharTilesData
    mov r3, #0x20
    add r2, r3, #0
    mov r0, #2
    add r1, r6, #0
    add r3, #0xe0
    bl BG_LoadPlttData
    mov r3, #0x12
    ldr r1, =MOD59_021D9ED8
    mov r0, #2
    mov r2, #0x20
    lsl r3, r3, #4
    bl BG_LoadPlttData
    mov r2, #0
    str r2, [sp]
    mov r0, #0x20
    str r0, [sp, #4]
    mov r0, #0x18
    str r0, [sp, #8]
    mov r0, #0xa
    str r0, [sp, #0xc]
    ldr r0, [r5, #0x18]
    mov r1, #5
    add r3, r2, #0
    bl FillBgTilemapRect
    mov r0, #7
    str r0, [sp]
    mov r0, #0xa
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r0, [r5, #0x18]
    mov r1, #5
    add r2, r7, #0
    mov r3, #0xb
    bl LoadRectToBgTilemapRect
    add r0, r5, #0
    mov r1, #5
    mov r2, #0xa
    bl MOD59_TilemapChangePalette
    ldr r3, [r5, #0]
    mov r0, #5
    mov r1, #0x20
    mov r2, #0
    bl BG_ClearCharDataRange
    mov r0, #1
    str r0, [sp]
    mov r3, #0x32
    ldr r0, [r5, #0x18]
    mov r1, #5
    add r2, r4, #0
    lsl r3, r3, #6
    bl BG_LoadCharTilesData
    mov r0, #5
    add r1, r6, #0
    mov r2, #0x20
    lsl r3, r0, #6
    bl BG_LoadPlttData
    mov r0, #5
    ldr r1, =MOD59_021D9ED8
    mov r2, #0x20
    lsl r3, r0, #6
    bl BG_LoadPlttData
    add r0, r6, #0
    bl FreeToHeap
    add r0, r4, #0
    bl FreeToHeap
    add r0, r7, #0
    bl FreeToHeap
    add sp, #0x20
    pop {r3, r4, r5, r6, r7, pc}
}
#endif

void MOD59_LoadPokeballButton(MOD59_IntroOverlayData *data)
{
    GfGfxLoader_LoadScrnData(NARC_DEMO_INTRO_INTRO, NARC_intro_narc_0038_NSCR, data->bgConfig, GF_BG_LYR_SUB_2, 0, 0, FALSE, data->heap_id);
    MOD59_TilemapChangePalette(data, GF_BG_LYR_SUB_2, 9);
    GfGfxLoader_GXLoadPal(NARC_DEMO_INTRO_INTRO, NARC_intro_narc_0039_NCLR, GF_PAL_LOCATION_SUB_BG, GF_PAL_SLOT_OFFSET_7, 0x60, data->heap_id);
    BG_ClearCharDataRange(GF_BG_LYR_SUB_2, 0x20, 0, data->heap_id);
    GfGfxLoader_LoadCharData(NARC_DEMO_INTRO_INTRO, NARC_intro_pokeball_button_1_NCGR, data->bgConfig, GF_BG_LYR_SUB_2, 0x20, 0, FALSE, data->heap_id);
}

BOOL MOD59_MoveSprite(MOD59_IntroOverlayData *data, u32 layer, u32 param2)
{
    BOOL ret = FALSE;
    if (param2 == 0)
    {
        fx32 xPos = Bg_GetXpos(data->bgConfig, layer);
        if (xPos != 0)
        {
            if (xPos > 0)
            {
                BgSetPosTextAndCommit(data->bgConfig, (u8)layer, BG_POS_OP_SUB_X, 4);
            }
            else
            {
                BgSetPosTextAndCommit(data->bgConfig, (u8)layer, BG_POS_OP_ADD_X, 4);
            }
        }
        else
        {
            ret = TRUE;
        }
    }
    else if (param2 == 1)
    {
        fx32 xPos = Bg_GetXpos(data->bgConfig, layer);
        if (xPos != -48)
        {
            BgSetPosTextAndCommit(data->bgConfig, (u8)layer, BG_POS_OP_SUB_X, 4);
        }
        else
        {
            ret = TRUE;
        }
    }
    else if (param2 == 2)
    {
        fx32 xPos = Bg_GetXpos(data->bgConfig, layer);
        if (xPos != 0)
        {
            BgSetPosTextAndCommit(data->bgConfig, (u8)layer, BG_POS_OP_ADD_X, 4);
        }
        else
        {
            ret = TRUE;
        }
    }
    return ret;
}

void MOD59_ResetPlayerAnimation(MOD59_IntroOverlayData *data)
{
    data->maleAnimCounter = 0;
    data->maleAnimTimer = 0;
    data->femaleAnimCounter = 0;
    data->femaleAnimTimer = 0;
}

void MOD59_AnimatePlayerSprite(MOD59_IntroOverlayData *data)
{
    u32 timer;
    if (data->selectedGender == Male)
    {
        if (data->maleAnimTimer != 0)
        {
            timer = data->maleAnimTimer - 1;
        }
        else
        {
            data->maleAnimCounter++;
            data->maleAnimCounter &= 3;
            timer = 4;
        }
        data->maleAnimTimer = timer;
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 6, 10);
        struct MOD59_CharStruct021D9DEC charStruct = MOD59_021D9DEC;
        GfGfxLoader_LoadCharData(NARC_DEMO_INTRO_INTRO, charStruct.narcId[data->maleAnimCounter], data->bgConfig, GF_BG_LYR_MAIN_1, 0, 0, FALSE, data->heap_id);
    }
    else
    {
        if(data->femaleAnimTimer != 0)
        {
            timer = data->femaleAnimTimer - 1;
        }
        else
        {
            data->femaleAnimCounter++;
            data->femaleAnimCounter &= 3;
            timer = 4;
        }
        data->femaleAnimTimer = timer;
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG3, 6, 10);
        struct MOD59_CharStruct021D9DEC charStruct = MOD59_021D9DFC;
        GfGfxLoader_LoadCharData(NARC_DEMO_INTRO_INTRO, charStruct.narcId[data->femaleAnimCounter], data->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, FALSE, data->heap_id);
    }
}

void MOD59_DisableBlend(MOD59_IntroOverlayData *data)
{
#pragma unused(data)
    reg_G2_BLDCNT = 0;
}

void MOD59_ResetPlayerShrinkAnimation(MOD59_IntroOverlayData *data)
{
    data->spriteDataIndex2 = 0;
    data->spriteData2Timer = 0;
}

BOOL MOD59_PlayerShrinkAnimation(MOD59_IntroOverlayData *data)
{
    BOOL ret = FALSE;
    u32 timer;
    if (data->spriteData2Timer != 0)
    {
        timer = data->spriteData2Timer - 1;
    }
    else
    {
        data->spriteDataIndex2++;
        timer = 8;
    }
    data->spriteData2Timer = timer;
    struct MOD59_CharStruct021D9E70 charStruct;
    struct MOD59_CharStruct021D9E70 charStruct2;
    const struct MOD59_CharStruct021D9E70 *addr;
    if (data->selectedGender == Male)
    {
        charStruct = MOD59_021D9E88;
        addr = &charStruct;
    }
    else
    {
        charStruct2 = MOD59_021D9E70;
        addr = &charStruct2;
    }
    if (addr->charData[data->spriteDataIndex2] == 0xFF)
    {
        ret = TRUE;
    }
    else
    {
        GfGfxLoader_LoadCharData(NARC_DEMO_INTRO_INTRO, addr->charData[data->spriteDataIndex2], data->bgConfig, GF_BG_LYR_MAIN_1, 0, 0, FALSE, data->heap_id);
    }
    return ret;
}

#ifdef NONMATCHING
BOOL MOD59_MunchlaxJumpAnimation(MOD59_IntroOverlayData *data, u32 *param1)
{
    BOOL ret = FALSE;
    u32 b0;
    u32 ac;
    switch (*param1)
    {
        case 0:
            BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_X, 0);
            BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_Y, -104);
            SetBgPriority(GF_BG_LYR_MAIN_2, 0);
            ToggleBgLayer(GF_BG_LYR_SUB_1, GX_LAYER_TOGGLE_ON);
            data->unkA8 = 0;
            data->unkAC = 8;
            data->unkB0 = 0;
            *param1 = 1;
            break;
        case 1:
            Bg_GetXpos(data->bgConfig, GF_BG_LYR_MAIN_2); //result discarded?
            fx32 pos = Bg_GetYpos(data->bgConfig, GF_BG_LYR_SUB_1);

            b0 = data->unkB0;
            ac = data->unkAC;
            u32 unk = b0 * (ac + ac * 8);
            s32 unk2 = b0 * (b0 + b0 * 8);

            s32 unk3 = unk - unk2 / 2; //some kind of Y coordinate

            if (pos < 88)
            {
                data->unkB0++;
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_ADD_X, 2);
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_SUB_1, BG_POS_OP_ADD_X, 2);
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_SUB_1, BG_POS_OP_SET_Y, unk3);
            }
            else
            {
                ToggleBgLayer(GF_BG_LYR_SUB_1, GX_LAYER_TOGGLE_OFF);
                data->unkB0 = 30;
                *param1 = 2;
            }
            break;
        case 2:
            if (data->unkB0 != 0)
            {
                data->unkB0--;
            }
            else
            {
                ToggleBgLayer(GF_BG_LYR_MAIN_2, GX_LAYER_TOGGLE_ON);
                data->unkA8 = 0;
                data->unkAC = 9;
                data->unkB0 = 0;
                *param1 = 3;
            }
            break;
        case 3:
            Bg_GetXpos(data->bgConfig, GF_BG_LYR_MAIN_2); //result discarded?
            fx32 pos2 = Bg_GetYpos(data->bgConfig, GF_BG_LYR_MAIN_2);

            b0 = data->unkB0;
            ac = data->unkAC;
            u32 unk4 = b0 * (ac + ac * 8);
            s32 unk5 = b0 * (b0 + b0 * 8);

            s32 unk6 = (unk4 - 104) - unk5 / 2;

            if (data->unkA8 > 0 && unk6 <= 0)
            {
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_Y, 0);
                data->unkA8 = 0;
                data->unkAC = 1;
                data->unkB0 = 0;
                *param1 = 4;
            }
            else
            {
                data->unkB0++;
                data->unkA8 = unk6;
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_ADD_X, 1);
                s32 unk7 = unk6 >> 1;
                if (unk7 > 0x90)
                {
                    unk7 = 0x90;
                }
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_Y, unk7);
            }
            break;
        case 4:
            Bg_GetXpos(data->bgConfig, GF_BG_LYR_MAIN_2); //result discarded?
            fx32 pos3 = Bg_GetYpos(data->bgConfig, GF_BG_LYR_MAIN_2);

            b0 = data->unkB0;
            ac = data->unkAC;
            u32 unk8 = b0 * (ac + ac * 8);
            s32 unk9 = b0 * (b0 + b0 * 8);

            s32 unk10 = unk8 - unk9 / 2;

            if (data->unkA8 > 0 && unk10 <= 0)
            {
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_Y, 0);
                *param1 = 5;
            }
            else
            {
                data->unkB0++;
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_ADD_X, 2);
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_Y, unk10);
                data->unkA8 = unk10;
            }
            break;
        case 5:
            FUN_02005578(SPECIES_MUNCHLAX);
            MOD59_TilemapChangePalette(data, GF_BG_LYR_MAIN_2, 8);
            ret = TRUE;
    }
    return ret;
}
#else
asm BOOL MOD59_MunchlaxJumpAnimation(MOD59_IntroOverlayData *data, u32 *param1)
{
    //clang-tidy off
    push {r3, r4, r5, r6, r7, lr}
    add r6, r1, #0
    add r4, r0, #0
    ldr r0, [r6, #0]
    mov r7, #0
    cmp r0, #5
    bls _021D86CC
    b _021D890A
_021D86CC:
    add r0, r0, r0
    add r0, pc
    ldrh r0, [r0, #6]
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    add pc, r0
_021D86D8: //jump table
    dcd 0x004e000a //this fucking thing gave me a headache, hate this compiler with a passion
    //movs r2, r1    //case 0
    //lsl r6, r1, #1 //case 1
    lsl r4, r1, #3 //case 2
    lsl r6, r0, #4 //case 3
    lsl r2, r4, #6 //case 4
    lsl r6, r3, #8 //case 5
    //.short _021D86E4 - _021D86D8 - 2 //case 0
    //.short _021D8728 - _021D86D8 - 2 //case 1
    //.short _021D87A6 - _021D86D8 - 2 //case 2
    //.short _021D87E0 - _021D86D8 - 2 //case 3
    //.short _021D887C - _021D86D8 - 2 //case 4
    //.short _021D88F8 - _021D86D8 - 2 //case 5
_021D86E4:
    ldr r0, [r4, #0x18]
    mov r1, #2
    add r2, r7, #0
    add r3, r7, #0
    bl BgSetPosTextAndCommit
    mov r2, #3
    add r3, r2, #0
    ldr r0, [r4, #0x18]
    mov r1, #2
    sub r3, #0x6b
    bl BgSetPosTextAndCommit
    mov r0, #2
    add r1, r7, #0
    bl SetBgPriority
    mov r0, #5
    mov r1, #1
    bl ToggleBgLayer
    add r0, r4, #0
    add r2, r7, #0
    add r0, #0xa8
    str r2, [r0]
    add r0, r4, #0
    mov r1, #8
    add r0, #0xac
    str r1, [r0]
    add r4, #0xb0
    str r2, [r4]
    mov r0, #1
    str r0, [r6]
    b _021D890A
_021D8728:
    ldr r0, [r4, #0x18]
    mov r1, #2
    bl Bg_GetXpos
    ldr r0, [r4, #0x18]
    mov r1, #5
    bl Bg_GetYpos
    add r1, r4, #0
    add r1, #0xb0
    ldr r3, [r1, #0]
    add r1, r4, #0
    add r1, #0xac
    ldr r2, [r1, #0]
    lsl r1, r2, #3
    add r1, r2, r1
    add r2, r3, #0
    mul r2, r1
    lsl r1, r3, #3
    add r1, r3, r1
    mul r1, r3
    lsr r3, r1, #0x1f
    add r3, r1, r3
    asr r1, r3, #1
    sub r5, r2, r1
    cmp r0, #0x58
    bge _021D8792
    add r0, r4, #0
    add r0, #0xb0
    ldr r0, [r0, #0]
    mov r2, #1
    add r1, r0, #1
    add r0, r4, #0
    add r0, #0xb0
    str r1, [r0]
    mov r1, #2
    ldr r0, [r4, #0x18]
    add r3, r1, #0
    bl BgSetPosTextAndCommit
    ldr r0, [r4, #0x18]
    mov r1, #5
    mov r2, #1
    mov r3, #2
    bl BgSetPosTextAndCommit
    ldr r0, [r4, #0x18]
    mov r1, #5
    mov r2, #3
    add r3, r5, #0
    bl BgSetPosTextAndCommit
    b _021D890A
_021D8792:
    mov r0, #5
    add r1, r7, #0
    bl ToggleBgLayer
    mov r0, #0x1e
    add r4, #0xb0
    str r0, [r4]
    mov r0, #2
    str r0, [r6]
    b _021D890A
_021D87A6:
    add r0, r4, #0
    add r0, #0xb0
    ldr r0, [r0, #0]
    cmp r0, #0
    beq _021D87BE
    add r0, r4, #0
    add r0, #0xb0
    ldr r0, [r0, #0]
    add r4, #0xb0
    sub r0, r0, #1
    str r0, [r4]
    b _021D890A
_021D87BE:
    mov r0, #2
    mov r1, #1
    bl ToggleBgLayer
    add r0, r4, #0
    add r2, r7, #0
    add r0, #0xa8
    str r2, [r0]
    add r0, r4, #0
    mov r1, #9
    add r0, #0xac
    str r1, [r0]
    add r4, #0xb0
    str r2, [r4]
    mov r0, #3
    str r0, [r6]
    b _021D890A
_021D87E0:
    ldr r0, [r4, #0x18]
    mov r1, #2
    bl Bg_GetXpos
    ldr r0, [r4, #0x18]
    mov r1, #2
    bl Bg_GetYpos
    add r0, r4, #0
    add r0, #0xb0
    ldr r1, [r0, #0]
    add r0, r4, #0
    add r0, #0xac
    ldr r2, [r0, #0]
    lsl r0, r2, #3
    add r0, r2, r0
    lsl r2, r1, #3
    add r2, r1, r2
    mul r0, r1
    mul r2, r1
    lsr r1, r2, #0x1f
    add r1, r2, r1
    sub r0, #0x68
    asr r1, r1, #1
    sub r5, r0, r1
    add r0, r4, #0
    add r0, #0xa8
    ldr r0, [r0, #0]
    cmp r0, #0
    ble _021D8846
    cmp r5, #0
    bgt _021D8846
    ldr r0, [r4, #0x18]
    mov r1, #2
    mov r2, #3
    add r3, r7, #0
    bl BgSetPosTextAndCommit
    add r0, r4, #0
    add r2, r7, #0
    add r0, #0xa8
    str r2, [r0]
    add r0, r4, #0
    mov r1, #1
    add r0, #0xac
    str r1, [r0]
    add r4, #0xb0
    str r2, [r4]
    mov r0, #4
    str r0, [r6]
    b _021D890A
_021D8846:
    add r0, r4, #0
    add r0, #0xb0
    ldr r0, [r0, #0]
    mov r2, #1
    add r1, r0, #1
    add r0, r4, #0
    add r0, #0xb0
    str r1, [r0]
    add r0, r4, #0
    add r0, #0xa8
    str r5, [r0]
    ldr r0, [r4, #0x18]
    mov r1, #2
    add r3, r2, #0
    bl BgSetPosTextAndCommit
    asr r5, r5, #1
    cmp r5, #0x90
    ble _021D886E
    mov r5, #0x90
_021D886E:
    ldr r0, [r4, #0x18]
    mov r1, #2
    mov r2, #3
    add r3, r5, #0
    bl BgSetPosTextAndCommit
    b _021D890A
_021D887C:
    ldr r0, [r4, #0x18]
    mov r1, #2
    bl Bg_GetXpos
    ldr r0, [r4, #0x18]
    mov r1, #2
    bl Bg_GetYpos
    add r0, r4, #0
    add r0, #0xb0
    ldr r1, [r0, #0]
    add r0, r4, #0
    add r0, #0xac
    ldr r2, [r0, #0]
    lsl r0, r2, #3
    add r0, r2, r0
    lsl r2, r1, #3
    add r2, r1, r2
    mul r2, r1
    mul r0, r1
    lsr r1, r2, #0x1f
    add r1, r2, r1
    asr r1, r1, #1
    sub r5, r0, r1
    add r0, r4, #0
    add r0, #0xa8
    ldr r0, [r0, #0]
    cmp r0, #0
    ble _021D88CC
    cmp r5, #0
    bgt _021D88CC
    ldr r0, [r4, #0x18]
    mov r1, #2
    mov r2, #3
    add r3, r7, #0
    bl BgSetPosTextAndCommit
    mov r0, #5
    str r0, [r6]
    b _021D890A
_021D88CC:
    add r0, r4, #0
    add r0, #0xb0
    ldr r0, [r0, #0]
    mov r2, #1
    add r1, r0, #1
    add r0, r4, #0
    add r0, #0xb0
    str r1, [r0]
    mov r1, #2
    ldr r0, [r4, #0x18]
    add r3, r1, #0
    bl BgSetPosTextAndCommit
    ldr r0, [r4, #0x18]
    mov r1, #2
    mov r2, #3
    add r3, r5, #0
    bl BgSetPosTextAndCommit
    add r4, #0xa8
    str r5, [r4]
    b _021D890A
_021D88F8:
    ldr r0, =0x000001BE
    bl FUN_02005578
    add r0, r4, #0
    mov r1, #2
    mov r2, #8
    bl MOD59_TilemapChangePalette
    mov r7, #1
_021D890A:
    add r0, r7, #0
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
#endif

void MOD59_ResetMunchlaxPriority(MOD59_IntroOverlayData *data)
{
#pragma unused (data)
    SetBgPriority(GF_BG_LYR_MAIN_2, 1);
}

BOOL MOD59_MasterController(MOD59_IntroOverlayData *data)
{
    BOOL ret = FALSE;
    switch (data->controllerCounter)
    {
        case 0: //load and fade from black
            FUN_0200433C(2, SEQ_OPENING, 1);
            FUN_02005350(SEQ_OPENING, 0);
            ToggleBgLayer(GF_BG_LYR_MAIN_0, GX_LAYER_TOGGLE_ON);
            ToggleBgLayer(GF_BG_LYR_SUB_3, GX_LAYER_TOGGLE_ON);
            BeginNormalPaletteFade(0, 1, 1, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 1;
            break;

        case 1: //wait for fade, and wait 40 ticks
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            if (MOD59_Timer(data, 40) != TRUE)
            {
                break;
            }
            data->controllerCounter = 2;
            break;

        case 2: //Hello there! It’s so very nice to meet you!
            if(MOD59_DisplayMessage(data, narc_0341_00000, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 3;
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            break;

        case 3: //play SE, make rowan visible, fade from black
            FUN_0200521C(SEQ_OPENING);
            data->spriteDataIndex0 = 1;
            data->spriteDataIndex1 = 0;
            MOD59_LoadCharDataFromIndex(data);
            ToggleBgLayer(GF_BG_LYR_MAIN_3, GX_LAYER_TOGGLE_ON);
            ToggleBgLayer(GF_BG_LYR_MAIN_1, GX_LAYER_TOGGLE_ON);
            BeginNormalPaletteFade(3, 1, 1, GX_RGB_BLACK, 16, 4, data->heap_id);
            data->controllerCounter = 4;
            break;

        case 4: //wait for fade
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            data->controllerCounter = 5;
            break;

        case 5: //My name is Rowan. However, everyone just calls me the Pokémon Professor.
            if (MOD59_DisplayMessage(data, narc_0341_00001, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 6;
            break;

        case 6: //move rowan to the right
            if (MOD59_MoveSprite(data, GF_BG_LYR_MAIN_1, 1) != TRUE)
            {
                break;
            }
            data->controllerCounter = 7;
            break;

        case 7: //help menu input handler
            if (MOD59_CreateListWithText(data, 1, 1) != TRUE)
            {
                break;
            }
            switch (data->listMenuInput)
            {
                case 1: //Control Info
                    data->nextControllerCounter = 10;
                    data->controllerCounter = 8;
                    break;

                case 2: //Adventure Info
                    data->nextControllerCounter = 31;
                    data->controllerCounter = 8;
                    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
                    break;

                case 3: //No Info Needed
                    data->controllerCounter = 41;
                    break;
            }
            break;

        case 8: //fade to black
            BeginNormalPaletteFade(0, 0, 0, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 9;
            break;

        case 9: //wait for fade and clear screen of rowan
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            ToggleBgLayer(GF_BG_LYR_MAIN_1, GX_LAYER_TOGGLE_OFF);
            data->controllerCounter = data->nextControllerCounter;
            break;

        case 10: //load screen and palette data, fade from black
            data->scrnDataIndexMain = 1;
            MOD59_LoadMainScrnData(data);
            data->scrnDataIndexSub = 1;
            MOD59_LoadSubScrnData(data);
            BeginNormalPaletteFade(0, 1, 1, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 11;
            break;

        case 11: //wait for fade
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            data->controllerCounter = 12;
            break;

        case 12: //Moves the main character. Also used to choose various headings and selections.
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00002, 0, 3, 18) != TRUE)
            {
                break;
            }
            data->controllerCounter = 13;
            break;

        case 13: //load screen data
            data->scrnDataIndexMain = 2;
            MOD59_LoadMainScrnData(data);
            data->controllerCounter = 14;
            break;

        case 14: //Press to open the menu.  Press to use an item,
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00003, 0, 7, 12) != TRUE)
            {
                break;
            }
            data->controllerCounter = 15;
            break;

        case 15: //load screen data
            data->scrnDataIndexMain = 3;
            MOD59_LoadMainScrnData(data);
            data->controllerCounter = 16;
            break;

        case 16: //The lower screen is called the Touch Screen.
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00004, 0, 4, 12) != TRUE)
            {
                break;
            }
            data->controllerCounter = 17;
            break;

        case 17: //Use DisplayMessage to create the flashing touchscreen icon ({YESNO 0})
            if (MOD59_DisplayMessage(data, narc_0341_00006, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 18;
            break;

        case 18: //If this mark is shown in the message window
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00005, 0, 4, 10) != TRUE)
            {
                break;
            }
            data->controllerCounter = 19;
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            break;

        case 19: //toggle layer 0 (no idea whats in here)
            ToggleBgLayer(GF_BG_LYR_MAIN_0, GX_LAYER_TOGGLE_ON);
            data->controllerCounter = 20;
            break;

        case 20: //Do you understand everything so far?{YESNO 0}
            if (MOD59_DisplayMessage(data, narc_0341_00007, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 21;
            break;

        case 21: //Display Yes/No touchscreen buttons
#ifdef __MWERKS__
            u32 arr[5]; //todo - this is 100% a struct
            arr = MOD59_021D9E44;
#else
            u32 arr[5] = {};
            for (int i = 0; i < 5; i++)
            {
                arr[i] = MOD59_021D9E44[i];
            }
#endif
            arr[0] = (u32)data->bgConfig;
            FUN_020145C8(data->unk68, arr);
            ToggleBgLayer(GF_BG_LYR_SUB_2, GX_LAYER_TOGGLE_ON);
            data->scrnDataIndexSub = 3;
            MOD59_LoadSubScrnData(data);
            data->controllerCounter = 22;
            break;

        case 22: //check input
            if (gSystem.newKeys != 0)
            {
                data->controllerCounter = 27;
                break;
            }
            else
            {
                if ((FUN_02014630(data->unk68) - 3) > 1)
                {
                    break;
                }
                data->controllerCounter = 23;
                break;
            }

        case 23: //check whether yes or no
            switch (FUN_02014630(data->unk68))
            {
                case 1:
                    data->controllerCounter = 24;
                    break;

                case 2:
                    data->controllerCounter = 26;
                    break;
            }
            break;

        case 24: //cleanup control info and fade to black
            if (MOD59_FadeController(data, GF_BG_LYR_SUB_2, 1) != TRUE)
            {
                break;
            }
            FUN_020146C4(data->unk68);
            BeginNormalPaletteFade(0, 0, 0, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 25;
            break;

        case 25: //wait for fade
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            data->controllerCounter = 28;
            break;

        case 26: //reload initial screen data for help
            if (MOD59_FadeController(data, GF_BG_LYR_SUB_2, 1) != TRUE)
            {
                break;
            }
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            FUN_020146C4(data->unk68);
            data->scrnDataIndexMain = 1;
            MOD59_LoadMainScrnData(data);
            data->scrnDataIndexSub = 1;
            MOD59_LoadSubScrnData(data);
            data->controllerCounter = 12;
            break;

        case 27: //Please touch a button on the Touch Screen below.{YESNO 0}
            if (MOD59_DisplayMessage(data, narc_0341_00008, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 22;
            break;

        case 28: //redisplay rowan, fade from black
            data->scrnDataIndexMain = 0;
            MOD59_LoadMainScrnData(data);
            data->scrnDataIndexSub = 0;
            MOD59_LoadSubScrnData(data);
            ToggleBgLayer(GF_BG_LYR_MAIN_1, GX_LAYER_TOGGLE_ON);
            BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_1, BG_POS_OP_SET_X, 0);
            BeginNormalPaletteFade(0, 1, 1, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 29;
            break;

        case 29: //wait for fade
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            data->controllerCounter = 30;
            break;

        case 30: //Would you like to know more about anything else?
            if (MOD59_DisplayMessage(data, narc_0341_00009, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 6;
            break;

        case 31: //load screen data, fade from black
            data->scrnDataIndexMain = 4;
            MOD59_LoadMainScrnData(data);
            data->scrnDataIndexSub = 2;
            MOD59_LoadSubScrnData(data);
            BeginNormalPaletteFade(0, 1, 1, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 32;
            break;

        case 32: //wait for fade
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            data->controllerCounter = 33;
            break;

        case 33: //You are about to enter a world where you will embark on a grand...
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00010, 1, 9, 6) != TRUE)
            {
                break;
            }
            data->controllerCounter = 34;
            break;

        case 34: //Speak to people and check things wherever you go, be it in towns, roads, or caves.
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00011, 1, 8, 8) != TRUE)
            {
                break;
            }
            data->controllerCounter = 35;
            break;

        case 35: //New paths will open to you when you help people in need...
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00012, 1, 9, 6) != TRUE)
            {
                break;
            }
            data->controllerCounter = 36;
            break;

        case 36: //At times, you will be challenged by others to a battle. At other times, wild creatures may stand in your way.
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00013, 1, 5, 14) != TRUE)
            {
                break;
            }
            data->controllerCounter = 37;
            break;

        case 37: //However, your adventure is not solely about becoming powerful.
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00014, 1, 10, 4) != TRUE)
            {
                break;
            }
            data->controllerCounter = 38;
            break;

        case 38: //On your travels, we hope that you will meet countless people and, through them, achieve personal growth.
            if (MOD59_DisplayControlAdventureMessage(data, narc_0341_00015, 1, 6, 12) != TRUE)
            {
                break;
            }
            data->controllerCounter = 39;
            break;

        case 39: //fade to black
            BeginNormalPaletteFade(0, 0, 0, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 40;
            break;

        case 40: //wait for fade
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            ToggleBgLayer(GF_BG_LYR_MAIN_0, GX_LAYER_TOGGLE_ON);
            data->controllerCounter = 28;
            break;

        case 41:
            if (MOD59_MoveSprite(data, GF_BG_LYR_MAIN_1, 2) != TRUE)
            {
                break;
            }
            data->controllerCounter = 42;
            break;

        case 42: //This world is widely inhabited by creatures known as Pokémon.
            if (MOD59_DisplayMessage(data, narc_0341_00016, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 43;
            break;

        case 43: //fade to black
            BeginNormalPaletteFade(4, 0, 0, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 44;
            break;

        case 44: //wait for fade, display pokeball button, fade from black
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            MOD59_LoadPokeballButton(data);
            data->scrnDataIndexSub = 4;
            MOD59_LoadSubScrnData(data);
            ToggleBgLayer(GF_BG_LYR_SUB_2, GX_LAYER_TOGGLE_ON);
            BeginNormalPaletteFade(4, 1, 1, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 45;
            break;

        case 45: //wait for fade
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            data->controllerCounter = 46;
            break;

        case 46:// Here, I have a Poké Ball. Touch the button on the middle
            if (MOD59_DisplayMessage(data, narc_0341_00017, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 47;
            break;

        case 47: //test touch location
            if (MOD59_TestPokeballTouchLocation() == TRUE)
            {
                data->spriteDataIndex2 = 0;
                data->spriteData2Timer = 0;
                BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
                data->controllerCounter = 48;
            }
            else
            {
                if (gSystem.newKeys == 0)
                {
                    break;
                }
                data->controllerCounter = 49;
            }
            break;

        case 48: //load graphics
            if (data->spriteData2Timer != 0)
            {
                data->spriteData2Timer--;
                break;
            }
#ifdef __MWERKS__
            u32 arr2[3]; //todo - this is 100% a struct
            arr2 = MOD59_021D9DC0;
#else
            u32 arr2[3] = {};
            for (int i = 0; i < 3; i++)
            {
                arr2[i] = MOD59_021D9DC0[i];
            }
#endif
            if (arr2[data->spriteDataIndex2] == 0xFFFF)
            {
                PlaySE(SEQ_SE_DP_BOWA2);
                data->controllerCounter = 50;
            }
            else
            {
                GfGfxLoader_LoadCharData(NARC_DEMO_INTRO_INTRO, arr2[data->spriteDataIndex2], data->bgConfig, GF_BG_LYR_SUB_2, 32, 0, FALSE, data->heap_id);
                data->spriteDataIndex2++;
                data->spriteData2Timer = 4;
            }
            break;

        case 49: //No, no! Not that button! The button on the Poké Ball.{YESNO 0}
            if (MOD59_DisplayMessage(data, narc_0341_00018, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 47;
            break;

        case 50: //flash
            StartBrightnessTransition(1, 16, 0, 11, 1); //main screen
            StartBrightnessTransition(1, 16, 0, 13, 2); //sub screen (should be a mask enum)
            data->controllerCounter = 51;
            break;

        case 51: //unflash
            if (IsBrightnessTransitionActive(1) != TRUE || IsBrightnessTransitionActive(2) != TRUE)
            {
                break;
            }
            StartBrightnessTransition(1, 0, 16, 11, 1); //main screen
            StartBrightnessTransition(1, 0, 16, 13, 2); //sub screen
            data->controllerCounter = 52;
            break;

        case 52: //flash
            if (IsBrightnessTransitionActive(1) != TRUE || IsBrightnessTransitionActive(2) != TRUE)
            {
                break;
            }
            StartBrightnessTransition(4, 16, 0, 11, 1); //main screen
            StartBrightnessTransition(4, 16, 0, 13, 2); //sub screen
            data->controllerCounter = 53;
            break;

        case 53: //wait for transition
            if (IsBrightnessTransitionActive(1) != TRUE || IsBrightnessTransitionActive(2) != TRUE)
            {
                break;
            }
            data->controllerCounter = 54;
            break;

        case 54: //spawn munchlax and unflash
            MOD59_DrawMunchlax(data);
            ToggleBgLayer(GF_BG_LYR_SUB_2, GX_LAYER_TOGGLE_OFF);
            data->spriteDataIndex2 = 0;
            MOD59_MunchlaxJumpAnimation(data, &data->spriteDataIndex2);
            data->scrnDataIndexSub = 0;
            MOD59_LoadSubScrnData(data);
            StartBrightnessTransition(16, 0, 16, 11, 1); //main screen
            StartBrightnessTransition(16, 0, 16, 13, 2); //sub screen
            data->controllerCounter = 55;
            break;

        case 55: //movement and wait for transition
            MOD59_MunchlaxJumpAnimation(data, &data->spriteDataIndex2);
            if (IsBrightnessTransitionActive(1) != TRUE || IsBrightnessTransitionActive(2) != TRUE)
            {
                break;
            }
            data->controllerCounter = 56;
            break;

        case 56: //finish movement
            if (MOD59_MunchlaxJumpAnimation(data, &data->spriteDataIndex2) != TRUE)
            {
                break;
            }
            data->controllerCounter = 57;
            break;

        case 57: //wait
            if (MOD59_Timer(data, 40) != TRUE)
            {
                break;
            }
            data->controllerCounter = 58;
            break;

        case 58: // We humans live alongside Pokémon as friends. At times we play together,
            if (MOD59_DisplayMessage(data, narc_0341_00019, TRUE) != TRUE)
            {
                break;
            }
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            data->controllerCounter = 59;
            break;

        case 59: //bring rowan to front
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_2, 1) != TRUE)
            {
                break;
            }
            MOD59_ResetMunchlaxPriority(data);
            data->controllerCounter = 60;
            break;

        case 60: //wait
            if (MOD59_Timer(data, 30) != TRUE)
            {
                break;
            }
            data->controllerCounter = 61;
            break;

        case 61: //Now, why don’t you tell me a little bit about yourself?
            if (MOD59_DisplayMessage(data, narc_0341_00020, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 62;
            break;

        case 62: //set blend
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 1) != TRUE)
            {
                break;
            }
            data->controllerCounter = 63;
            break;

        case 63: //load and setup boy/girl frontsprites
            MOD59_ResetPlayerAnimation(data);
            data->spriteDataIndex0 = 2;
            data->spriteDataIndex1 = 6;
            MOD59_LoadCharDataFromIndex(data);
            BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_1, BG_POS_OP_SET_X, -48);
            BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_X, 48);
            data->controllerCounter = 64;
            break;

        case 64: //set blend
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 0) != TRUE)
            {
                break;
            }
            data->controllerCounter = 65;
            break;

        case 65: //set blend
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_2, 0) != TRUE)
            {
                break;
            }
            data->controllerCounter = 66;
            break;

        case 66: //Are you a boy? Or are you a girl?
            if (MOD59_DisplayMessage(data, narc_0341_00021, TRUE) != TRUE)
            {
                break;
            }
            data->selectedGender = Male;
            data->controllerCounter = 67;
            break;

        case 67: //handle gender selection + animation
            if ((gSystem.newKeys & PAD_BUTTON_A) == 1)
            {
                data->alphaBlend1 = 6;
                data->alphaBlend2 = 10;
                data->fadeCounter = 2;
                if (data->selectedGender == Male)
                {
                    data->controllerCounter = 68;
                }
                else
                {
                    data->controllerCounter = 70;
                }
                break;
            }
            if ((gSystem.newKeys & PAD_KEY_LEFT) == 0x20 || (gSystem.newKeys & PAD_KEY_RIGHT) == 0x10)
            {
                data->selectedGender = (data->selectedGender == Male ? Female : Male);
                PlaySE(SEQ_SE_DP_SELECT);
            }
            MOD59_AnimatePlayerSprite(data); //animate sprite
            break;

        case 68: //set blend
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_2, 1) != TRUE)
            {
                break;
            }
            data->controllerCounter = 69;
            break;

        case 69: //move sprite to centre
            if (MOD59_MoveSprite(data, GF_BG_LYR_MAIN_1, 0) != TRUE)
            {
                break;
            }
            MOD59_DisableBlend(data);
            data->controllerCounter = 72;
            break;

        case 70: //set blend
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 1) != TRUE)
            {
                break;
            }
            data->controllerCounter = 71;
            break;

        case 71: //move sprite to centre
            if (MOD59_MoveSprite(data, GF_BG_LYR_MAIN_2, 0) != TRUE)
            {
                break;
            }
            MOD59_DisableBlend(data);
            data->controllerCounter = 72;
            break;

        case 72: //All right, so you’re a boy/girl?
            u32 msgNo = data->selectedGender == Male ? narc_0341_00022 : narc_0341_00023;
            if (MOD59_DisplayMessage(data, msgNo, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 73;
            break;

        case 73: //YES/NO
            if (MOD59_CreateListWithText(data, 0, 0) != TRUE)
            {
                break;
            }
            switch (data->listMenuInput)
            {
                case 1:
                    data->controllerCounter = 75;
                    break;

                case -2:
                case 2:
                    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
                    data->controllerCounter = 74;
                    break;
            }
            break;

        case 74: //reset blend
            enum GFBgLayer layer = ((data->selectedGender == Male) ? GF_BG_LYR_MAIN_1 : GF_BG_LYR_MAIN_2);
            if (MOD59_FadeController(data, layer, 1) != TRUE)
            {
                break;
            }
            data->controllerCounter = 63;
            break;

        case 75: //Tell me, what is your name?
            if (MOD59_DisplayMessage(data, narc_0341_00024, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 76;
            break;

        case 76: //load keyboard overlay (except this is not an overlay at all)
            data->playerStruct->gender = data->selectedGender;
            data->loadedOverlay = OverlayManager_New(&UNK_020FA5FC, (s32 *)data->playerStruct, data->heap_id);
            data->controllerCounter = 77;
            break;

        case 77: //toggle bg layers and position, fade from black
            ToggleBgLayer(GF_BG_LYR_MAIN_0, GX_LAYER_TOGGLE_ON);
            ToggleBgLayer(GF_BG_LYR_MAIN_3, GX_LAYER_TOGGLE_ON);
            ToggleBgLayer(GF_BG_LYR_SUB_3, GX_LAYER_TOGGLE_ON);
            if (data->selectedGender == Male)
            {
                ToggleBgLayer(GF_BG_LYR_MAIN_1, GX_LAYER_TOGGLE_ON);
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_1, BG_POS_OP_SET_X, 0);
            }
            else
            {
                ToggleBgLayer(GF_BG_LYR_MAIN_2, GX_LAYER_TOGGLE_ON);
                BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_X, 0);
            }
            BeginNormalPaletteFade(0, 1, 1, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 78;
            break;

        case 78: //wait for fade
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            data->controllerCounter = 79;
            break;

        case 79: //Your name is {STRVAR_1 3, 0}?
            u32 messageNumber = (data->selectedGender == Male ? narc_0341_00025 : narc_0341_00026); //no idea why these are different strings, they contain the same thing
            if (MOD59_DisplayMessage(data, messageNumber, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 80;
            break;

        case 80: //YES/NO
            if (MOD59_CreateListWithText(data, 0, 0) != TRUE)
            {
                break;
            }
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            switch (data->listMenuInput)
            {
                case 1:
                    data->nextControllerCounter = 82;
                    data->controllerCounter = 81;
                    break;

                case -2:
                case 2:
                    StringSetEmpty(data->playerStruct->name);
                    data->nextControllerCounter = 63;
                    data->controllerCounter = 81;
                    break;
            }
            break;

        case 81: //blend adjust
            enum GFBgLayer layer2 = ((data->selectedGender == Male) ? GF_BG_LYR_MAIN_1 : GF_BG_LYR_MAIN_2);
            if (MOD59_FadeController(data, layer2, 1) != TRUE)
            {
                break;
            }
            data->controllerCounter = data->nextControllerCounter;
            break;

        case 82: //load sprite
            data->spriteDataIndex0 = 1;
            data->spriteDataIndex1 = 0;
            MOD59_LoadCharDataFromIndex(data);
            data->controllerCounter = 83;
            break;

        case 83: //blend adjust
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 0) != TRUE)
            {
                break;
            }
            data->controllerCounter = 84;
            break;

        case 84: // OK... So, you’re {STRVAR_1 3, 0}? A fine name that is!
            if (MOD59_DisplayMessage(data, narc_0341_00027, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 85;
            break;

        case 85: //blend adjust
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 1) != TRUE)
            {
                break;
            }
            data->controllerCounter = 86;
            break;

        case 86:
            data->spriteDataIndex0 = 10;
            data->spriteDataIndex1 = 0;
            MOD59_LoadCharDataFromIndex(data);
            data->controllerCounter = 87;
            break;

        case 87: //blend adjust
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 0) != TRUE)
            {
                break;
            }
            data->controllerCounter = 88;
            break;

        case 88: //What might his name be?
            if (MOD59_DisplayMessage(data, narc_0341_00028, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 89;
            break;

        case 89: //move sprite
            if (MOD59_MoveSprite(data, GF_BG_LYR_MAIN_1, 1) != TRUE)
            {
                break;
            }
            data->controllerCounter = 90;
            break;

        case 90: //rival name list
            if (MOD59_CreateListWithText(data, 2, 1) != TRUE)
            {
                break;
            }
            const struct MOD59_ListStruct021D9E0C *nameList;
            switch (data->listMenuInput)
            {
                case 0:
                    break;

                case 1: //New Name!
                    data->controllerCounter = 92;
                    break;

                case 2: //Barry/Clint
                case 3: //Damion/Ralph
                case 4: //Tyson/Lewis
                case 5: //Markus/Tommy
                    u32 index;
                    u32 msgNo;
                    if ((u8)gGameVersion == VERSION_DIAMOND)
                    {
                        index = data->listMenuInput - 1;
                        nameList = MOD59_021D9F40;
                        msgNo = nameList[index].msgNo;
                    }
                    else
                    {
                        index = data->listMenuInput - 1;
                        nameList = MOD59_021D9F68;
                        msgNo = nameList[index].msgNo;
                    }
                    struct String *name = NewString_ReadMsgData(data->msgData, msgNo);
                    StringCopy(data->rivalStruct->name, name);
                    String_Delete(name);
                    data->controllerCounter = 91;
                    break;
            }
            break;

        case 91: //move sprite
            if (MOD59_MoveSprite(data, GF_BG_LYR_MAIN_1, 2) != TRUE)
            {
                break;
            }
            data->controllerCounter = 95;
            break;

        case 92: //load keyboard
            data->loadedOverlay = OverlayManager_New(&UNK_020FA5FC, (s32 *)data->rivalStruct, data->heap_id);
            data->controllerCounter = 93;
            break;

        case 93: //toggle layers and position, fade from black
            ToggleBgLayer(GF_BG_LYR_MAIN_0, GX_LAYER_TOGGLE_ON);
            ToggleBgLayer(GF_BG_LYR_MAIN_3, GX_LAYER_TOGGLE_ON);
            ToggleBgLayer(GF_BG_LYR_SUB_3, GX_LAYER_TOGGLE_ON);
            ToggleBgLayer(GF_BG_LYR_MAIN_1, GX_LAYER_TOGGLE_ON);
            BgSetPosTextAndCommit(data->bgConfig, GF_BG_LYR_MAIN_1, BG_POS_OP_SET_X, 0);
            BeginNormalPaletteFade(0, 1, 1, GX_RGB_BLACK, 6, 1, data->heap_id);
            data->controllerCounter = 94;
            break;

        case 94: //wait for fade
            if (IsPaletteFadeFinished() != TRUE)
            {
                break;
            }
            data->controllerCounter = 95;
            break;

        case 95: //{STRVAR_1 3, 1}, is it? That’s your friend’s name?
            if (MOD59_DisplayMessage(data, narc_0341_00029, TRUE) != TRUE)
            {
                break;
            }
            data->controllerCounter = 96;
            break;

        case 96: //YES/NO
            if (MOD59_CreateListWithText(data, 0, 0) != TRUE)
            {
                break;
            }
            switch (data->listMenuInput)
            {
                case 1:
                    BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
                    data->controllerCounter = 97;
                    break;

                case -2:
                case 2:
                    StringSetEmpty(data->rivalStruct->name);
                    data->controllerCounter = 88;
                    break;
            }
            break;

        case 97: //set blend
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 1) != TRUE)
            {
                break;
            }
            data->controllerCounter = 98;
            break;

        case 98: //load sprite
            data->spriteDataIndex0 = 1;
            data->spriteDataIndex1 = 0;
            MOD59_LoadCharDataFromIndex(data);
            data->controllerCounter = 99;
            break;

        case 99: //send blend
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 0) != TRUE)
            {
                break;
            }
            data->controllerCounter = 100;
            break;

        case 100: //wait
            if (MOD59_Timer(data, 30) != TRUE)
            {
                break;
            }
            data->controllerCounter = 101;
            break;

        case 101: //All right, {STRVAR_1 3, 0}, the time has come. Your very own tale of grand...
            if (MOD59_DisplayMessage(data, narc_0341_00030, TRUE) != TRUE)
            {
                break;
            }
            FUN_020053CC(0, 50); //fade music
            data->controllerCounter = 102;
            break;

        case 102: //set blend
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 1) != TRUE)
            {
                break;
            }
            BgClearTilemapBufferAndCommit(data->bgConfig, GF_BG_LYR_MAIN_0);
            data->controllerCounter = 103;
            break;

        case 103: //wait
            if (MOD59_Timer(data, 30) != TRUE)
            {
                break;
            }
            data->controllerCounter = 104;
            break;

        case 104: //load sprite
            if (data->selectedGender == Male)
            {
                data->spriteDataIndex0 = 2;
                data->spriteDataIndex1 = 0;
                MOD59_LoadCharDataFromIndex(data);
            }
            else
            {
                data->spriteDataIndex0 = 6;
                data->spriteDataIndex1 = 0;
                MOD59_LoadCharDataFromIndex(data);
            }
            data->controllerCounter = 105;
            break;

        case 105: //set blend
            if (MOD59_FadeController(data, GF_BG_LYR_MAIN_1, 0) != TRUE)
            {
                break;
            }
            MOD59_ResetPlayerShrinkAnimation(data);
            data->controllerCounter = 106;
            break;

        case 106: //wait
            if (MOD59_Timer(data, 30) != TRUE)
            {
                break;
            }
            data->controllerCounter = 107;
            break;

        case 107: //shrink player sprite
            if (MOD59_PlayerShrinkAnimation(data) != TRUE)
            {
                break;
            }
            data->controllerCounter = 108;
            break;

        case 108: //load overaly 59 TV
            data->loadedOverlay = OverlayManager_New(&MOD59_021D9DDC, 0, data->heap_id);
            data->controllerCounter = 109;
            break;

        case 109: //return
            ret = TRUE;
            break;
    }
    return ret;
}
