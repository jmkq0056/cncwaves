.class public interface abstract Lcom/sun/jna/platform/win32/ShlObj;
.super Ljava/lang/Object;
.source "ShlObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;
    }
.end annotation


# static fields
.field public static final CSIDL_ADMINTOOLS:I = 0x30

.field public static final CSIDL_ALTSTARTUP:I = 0x1d

.field public static final CSIDL_APPDATA:I = 0x1a

.field public static final CSIDL_BITBUCKET:I = 0xa

.field public static final CSIDL_CDBURN_AREA:I = 0x3b

.field public static final CSIDL_COMMON_ADMINTOOLS:I = 0x2f

.field public static final CSIDL_COMMON_ALTSTARTUP:I = 0x1e

.field public static final CSIDL_COMMON_APPDATA:I = 0x23

.field public static final CSIDL_COMMON_DESKTOPDIRECTORY:I = 0x19

.field public static final CSIDL_COMMON_DOCUMENTS:I = 0x2e

.field public static final CSIDL_COMMON_FAVORITES:I = 0x1f

.field public static final CSIDL_COMMON_MUSIC:I = 0x35

.field public static final CSIDL_COMMON_OEM_LINKS:I = 0x3a

.field public static final CSIDL_COMMON_PICTURES:I = 0x36

.field public static final CSIDL_COMMON_PROGRAMS:I = 0x17

.field public static final CSIDL_COMMON_STARTMENU:I = 0x16

.field public static final CSIDL_COMMON_STARTUP:I = 0x18

.field public static final CSIDL_COMMON_TEMPLATES:I = 0x2d

.field public static final CSIDL_COMMON_VIDEO:I = 0x37

.field public static final CSIDL_COMPUTERSNEARME:I = 0x3d

.field public static final CSIDL_CONNECTIONS:I = 0x31

.field public static final CSIDL_CONTROLS:I = 0x3

.field public static final CSIDL_COOKIES:I = 0x21

.field public static final CSIDL_DESKTOP:I = 0x0

.field public static final CSIDL_DESKTOPDIRECTORY:I = 0x10

.field public static final CSIDL_DRIVES:I = 0x11

.field public static final CSIDL_FAVORITES:I = 0x6

.field public static final CSIDL_FONTS:I = 0x14

.field public static final CSIDL_HISTORY:I = 0x22

.field public static final CSIDL_INTERNET:I = 0x1

.field public static final CSIDL_INTERNET_CACHE:I = 0x20

.field public static final CSIDL_LOCAL_APPDATA:I = 0x1c

.field public static final CSIDL_MYDOCUMENTS:I = 0x5

.field public static final CSIDL_MYMUSIC:I = 0xd

.field public static final CSIDL_MYPICTURES:I = 0x27

.field public static final CSIDL_MYVIDEO:I = 0xe

.field public static final CSIDL_NETHOOD:I = 0x13

.field public static final CSIDL_NETWORK:I = 0x12

.field public static final CSIDL_PERSONAL:I = 0x5

.field public static final CSIDL_PRINTERS:I = 0x4

.field public static final CSIDL_PRINTHOOD:I = 0x1b

.field public static final CSIDL_PROFILE:I = 0x28

.field public static final CSIDL_PROGRAMS:I = 0x2

.field public static final CSIDL_PROGRAM_FILES:I = 0x26

.field public static final CSIDL_PROGRAM_FILESX86:I = 0x2a

.field public static final CSIDL_PROGRAM_FILES_COMMON:I = 0x2b

.field public static final CSIDL_PROGRAM_FILES_COMMONX86:I = 0x2c

.field public static final CSIDL_RECENT:I = 0x8

.field public static final CSIDL_RESOURCES:I = 0x38

.field public static final CSIDL_RESOURCES_LOCALIZED:I = 0x39

.field public static final CSIDL_SENDTO:I = 0x9

.field public static final CSIDL_STARTMENU:I = 0xb

.field public static final CSIDL_STARTUP:I = 0x7

.field public static final CSIDL_SYSTEM:I = 0x25

.field public static final CSIDL_SYSTEMX86:I = 0x29

.field public static final CSIDL_TEMPLATES:I = 0x15

.field public static final CSIDL_WINDOWS:I = 0x24

.field public static final SHGFP_TYPE_CURRENT:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public static final SHGFP_TYPE_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/win32/ShlObj;->SHGFP_TYPE_CURRENT:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 36
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/win32/ShlObj;->SHGFP_TYPE_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-void
.end method
