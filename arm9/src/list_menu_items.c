#include "global.h"
#include "list_menu_items.h"
#include "msgdata.h"
#include "heap.h"

void ListMenuItems_DestroyMenuStrings(struct ListMenuItem * items);

struct ListMenuItem * ListMenuItems_New(u32 count, u32 heap_id)
{
    s32 i;
    struct ListMenuItem * ret = AllocFromHeap(heap_id, (count + 1) * sizeof(struct ListMenuItem));
    if (ret != NULL)
    {
        for (i = 0; i < count; i++)
        {
            ret[i].text = NULL;
            ret[i].value = 0;
        }
        ret[i].text = (struct String *)-1u;
        ret[i].value = (s32)heap_id;
    }
    return ret;
}

void ListMenuItems_Delete(struct ListMenuItem * items)
{
    ListMenuItems_DestroyMenuStrings(items);
    FreeToHeap(items);
}

void ListMenuItems_AppendFromMsgData(struct ListMenuItem * items, struct MsgData * msgData, u32 msgNo, s32 value)
{
    u32 heap_id;
    struct ListMenuItem * newItem = ListMenuItems_SeekEnd(items, &heap_id);
    if (newItem != NULL)
    {
        newItem->text = NewString_ReadMsgData(msgData, msgNo);
        newItem->value = value;
    }
}

void ListMenuItems_AddItem(struct ListMenuItem * items, struct String * str, s32 value)
{
    u32 heap_id;
    struct ListMenuItem * newItem = ListMenuItems_SeekEnd(items, &heap_id);
    if (newItem != NULL)
    {
        newItem->text = StringDup(str, heap_id);
        newItem->value = value;
    }
}

void ListMenuItems_CopyItem(struct ListMenuItem * items, struct ListMenuItem * src)
{
    u32 heap_id;
    struct ListMenuItem * newItem = ListMenuItems_SeekEnd(items, &heap_id);
    if (newItem != NULL)
    {
        newItem->text = src->text;
        newItem->value = src->value;
    }
}

struct ListMenuItem * ListMenuItems_SeekEnd(struct ListMenuItem * items, u32 * heap_id_p)
{
    struct ListMenuItem * ret;
    for (; items->text != NULL; items++)
    {
        if (items->text == (struct String *)-1u)
        {
            GF_ASSERT(0);
            return NULL;
        }
    }
    ret = items;
    for (; items->text != (struct String *)-1u; items++)
        ;
    *heap_id_p = (u32)items->value;
    return ret;
}

void ListMenuItems_DestroyMenuStrings(struct ListMenuItem * items)
{
    s32 i;
    for (i = 0; items[i].text != (struct String *)-1u; i++)
    {
        if (items[i].text == NULL)
            break;
        String_Delete(items[i].text);
        items[i].text = NULL;
    }
}
