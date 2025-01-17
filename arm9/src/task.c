#include "global.h"
#include "task.h"
#include "script.h"
#include "heap.h"

struct TaskManager *FieldSys_CreateTask(struct FieldSystem * fieldSystem, TaskFunc taskFunc, void *env)
{
    struct TaskManager *taskManager = AllocFromHeapAtEnd(32, sizeof(struct TaskManager));
    taskManager->prev = NULL;
    taskManager->func = taskFunc;
    taskManager->state = 0;
    taskManager->env = env;
    taskManager->unk10 = NULL;
    taskManager->unk14 = NULL;
    taskManager->fieldSystem = fieldSystem;
    taskManager->unk1C = AllocFromHeapAtEnd(32, 4);
    return taskManager;
}

void FUN_020463CC(struct FieldSystem * fieldSystem, TaskFunc taskFunc, void *env)
{
    GF_ASSERT(fieldSystem->taskManager == NULL);
    fieldSystem->taskManager = FieldSys_CreateTask(fieldSystem, taskFunc, env);
}

void FUN_020463EC(struct TaskManager *taskManager, TaskFunc taskFunc, void *env)
{
    taskManager->func = taskFunc;
    taskManager->state = 0;
    taskManager->env = env;
    if (taskManager->unk14 != NULL || taskManager->unk14 != NULL)
    {
        FreeToHeap(taskManager->unk14);
        taskManager->unk10 = NULL;
        taskManager->unk14 = NULL;
    }
}

void FUN_0204640C(struct TaskManager *taskManager, TaskFunc taskFunc, void *env)
{
    struct TaskManager *taskManager2 = FieldSys_CreateTask(taskManager->fieldSystem, taskFunc, env);
    taskManager2->prev = taskManager;
    taskManager->fieldSystem->taskManager = taskManager2;
}

BOOL FUN_02046420(struct TaskManager *taskManager)
{
    if (taskManager->unk10 == NULL)
        return FALSE;
    while (taskManager->unk10->func(taskManager->unk10) == TRUE)
    {
        struct TaskManager *taskManager2 = taskManager->unk10->prev;
        if (taskManager->unk10->unk14 != NULL)
            FreeToHeap(taskManager->unk10->unk14);
        FreeToHeap(taskManager->unk10->unk1C);
        FreeToHeap(taskManager->unk10);
        taskManager->unk10 = taskManager2;
        if (taskManager2 == NULL)
            return TRUE;
    }
    return FALSE;
}

BOOL FUN_0204646C(struct TaskManager *taskManager)
{
    return (taskManager->unk10 != NULL);
}

BOOL FUN_0204647C(struct FieldSystem *fieldSystem)
{
    return (FUN_0203739C(fieldSystem) || FUN_020373C4(fieldSystem));
}

void FUN_0204649C(void * r0)
{
    LoadOverlay_MODULE_05(r0);
}

BOOL FUN_020464A4(void * r0)
{
    return (FUN_020373AC(r0) != FALSE);
}

BOOL FUN_020464B8(struct TaskManager *taskManager)
{
    struct FieldSystem *fieldSystem = FUN_02046528(taskManager);
    u32 * r4_2 = FUN_0204652C(taskManager);
    switch (r4_2[0])
    {
    case 0:
        FUN_020373D4(fieldSystem, (struct OverlayManagerTemplate *)r4_2[1], (void *)r4_2[2]); //FIXME: typing is wrong
        r4_2[0]++;
        break;
    case 1:
        if (!FUN_0204647C(fieldSystem))
        {
            FreeToHeap(r4_2);
            return TRUE;
        }
        break;
    }
    return FALSE;
}

void FUN_02046500(struct TaskManager *taskManager, u32 r5, u32 r4)
{
    u32 * r2 = AllocFromHeapAtEnd(32, 3 * sizeof(u32));
    r2[0] = 0;
    r2[1] = r5;
    r2[2] = r4;
    FUN_0204640C(taskManager, FUN_020464B8, r2);
}

struct FieldSystem *FUN_02046528(struct TaskManager *taskManager)
{
    return taskManager->fieldSystem;
}

void * FUN_0204652C(struct TaskManager *taskManager)
{
    return taskManager->env;
}

u32 * FUN_02046530(struct TaskManager *taskManager)
{
    return &taskManager->state;
}

u32 FUN_02046534(struct TaskManager *taskManager)
{
    return *taskManager->unk1C;
}
