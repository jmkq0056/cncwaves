.class public final Lcom/sun/jna/platform/win32/User32Util;
.super Ljava/lang/Object;
.source "User32Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;
    }
.end annotation


# static fields
.field public static final WIN32VK_MAPPABLE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sun/jna/platform/win32/Win32VK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 313
    sget-object v0, Lcom/sun/jna/platform/win32/Win32VK;->VK_BACK:Lcom/sun/jna/platform/win32/Win32VK;

    const/16 v1, 0x6a

    new-array v1, v1, [Lcom/sun/jna/platform/win32/Win32VK;

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_TAB:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_CLEAR:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_RETURN:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_ESCAPE:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_SPACE:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_SELECT:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_EXECUTE:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_0:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_1:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_2:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_3:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_4:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_5:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_6:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_7:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_8:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_9:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_A:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_B:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_C:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_D:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_E:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_F:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_G:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_H:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_I:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_J:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_K:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_L:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_M:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_N:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_O:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_P:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_Q:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_R:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_S:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_T:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_U:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_V:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_W:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_X:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_Y:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_Z:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD0:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD1:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD2:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD3:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD4:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD5:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD6:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD7:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD8:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NUMPAD9:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_MULTIPLY:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x36

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_ADD:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x37

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_SEPARATOR:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x38

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_SUBTRACT:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x39

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_DECIMAL:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_DIVIDE:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_NEC_EQUAL:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_FJ_MASSHOU:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_FJ_TOUROKU:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_FJ_LOYA:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_FJ_ROYA:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x40

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_1:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x41

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_PLUS:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x42

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_COMMA:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x43

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_MINUS:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x44

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_PERIOD:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x45

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_2:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x46

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_3:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x47

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_RESERVED_C1:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x48

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_RESERVED_C2:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x49

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_4:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_5:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_6:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_7:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_8:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_AX:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_102:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x50

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_ICO_HELP:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_PROCESSKEY:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x52

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_ICO_CLEAR:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x53

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_PACKET:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x54

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_RESET:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x55

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_JUMP:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x56

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_PA1:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x57

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_PA2:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x58

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_PA3:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x59

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_WSCTRL:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_CUSEL:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_ATTN:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_FINISH:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_COPY:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_AUTO:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_ENLW:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x60

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_BACKTAB:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x61

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_ATTN:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x62

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_CRSEL:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x63

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_EXSEL:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x64

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_EREOF:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x65

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_PLAY:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x66

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_ZOOM:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x67

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_NONAME:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x68

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_PA1:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    const/16 v2, 0x69

    sget-object v3, Lcom/sun/jna/platform/win32/Win32VK;->VK_OEM_CLEAR:Lcom/sun/jna/platform/win32/Win32VK;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/User32Util;->WIN32VK_MAPPABLE:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final GetRawInputDeviceList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 93
    new-instance v1, Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;-><init>()V

    .line 94
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;->sizeof()I

    move-result v2

    .line 96
    sget-object v3, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0, v2}, Lcom/sun/jna/platform/win32/User32;->GetRawInputDeviceList([Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;Lcom/sun/jna/ptr/IntByReference;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v3

    .line 102
    invoke-virtual {v1, v3}, Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v1

    check-cast v1, [Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;

    check-cast v1, [Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;

    .line 103
    sget-object v3, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v3, v1, v0, v2}, Lcom/sun/jna/platform/win32/User32;->GetRawInputDeviceList([Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;Lcom/sun/jna/ptr/IntByReference;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 108
    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 112
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mismatched allocated ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") vs. received devices count ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 98
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public static final createWindow(Ljava/lang/String;Ljava/lang/String;IIIIILcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HMENU;Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;Lcom/sun/jna/platform/win32/WinDef$LPVOID;)Lcom/sun/jna/platform/win32/WinDef$HWND;
    .locals 12

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 74
    invoke-static/range {v0 .. v11}, Lcom/sun/jna/platform/win32/User32Util;->createWindowEx(ILjava/lang/String;Ljava/lang/String;IIIIILcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HMENU;Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;Lcom/sun/jna/platform/win32/WinDef$LPVOID;)Lcom/sun/jna/platform/win32/WinDef$HWND;

    move-result-object p0

    return-object p0
.end method

.method public static final createWindowEx(ILjava/lang/String;Ljava/lang/String;IIIIILcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HMENU;Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;Lcom/sun/jna/platform/win32/WinDef$LPVOID;)Lcom/sun/jna/platform/win32/WinDef$HWND;
    .locals 13

    .line 79
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 80
    invoke-interface/range {v0 .. v12}, Lcom/sun/jna/platform/win32/User32;->CreateWindowEx(ILjava/lang/String;Ljava/lang/String;IIIIILcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HMENU;Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;Lcom/sun/jna/platform/win32/WinDef$LPVOID;)Lcom/sun/jna/platform/win32/WinDef$HWND;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 82
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static final destroyWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/User32;->DestroyWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static loadString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 290
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 291
    invoke-static {v2}, Lcom/sun/jna/platform/win32/Kernel32Util;->expandEnvironmentStrings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v2, v0, v3, v4}, Lcom/sun/jna/platform/win32/Kernel32;->LoadLibraryEx(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)Lcom/sun/jna/platform/win32/WinDef$HMODULE;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 296
    new-instance v2, Lcom/sun/jna/Memory;

    sget v3, Lcom/sun/jna/Native;->POINTER_SIZE:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 297
    sget-object v3, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v3, v0, p0, v2, v1}, Lcom/sun/jna/platform/win32/User32;->LoadString(Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;ILcom/sun/jna/Pointer;I)I

    move-result p0

    if-eqz p0, :cond_1

    .line 302
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    const-wide/16 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4, p0}, Lcom/sun/jna/Pointer;->getCharArray(JI)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4, p0}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object p0

    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 299
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 294
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static final registerWindowMessage(Ljava/lang/String;)I
    .locals 1

    .line 66
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/User32;->RegisterWindowMessage(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    .line 68
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method
