.class public interface abstract Lcom/sun/jna/platform/win32/ShellAPI;
.super Ljava/lang/Object;
.source "ShellAPI.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/ShellAPI$SHELLEXECUTEINFO;,
        Lcom/sun/jna/platform/win32/ShellAPI$APPBARDATA;,
        Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;
    }
.end annotation


# static fields
.field public static final ABE_BOTTOM:I = 0x3

.field public static final ABE_LEFT:I = 0x0

.field public static final ABE_RIGHT:I = 0x2

.field public static final ABE_TOP:I = 0x1

.field public static final ABM_ACTIVATE:I = 0x6

.field public static final ABM_GETAUTOHIDEBAR:I = 0x7

.field public static final ABM_GETSTATE:I = 0x4

.field public static final ABM_GETTASKBARPOS:I = 0x5

.field public static final ABM_NEW:I = 0x0

.field public static final ABM_QUERYPOS:I = 0x2

.field public static final ABM_REMOVE:I = 0x1

.field public static final ABM_SETAUTOHIDEBAR:I = 0x8

.field public static final ABM_SETPOS:I = 0x3

.field public static final ABM_SETSTATE:I = 0xa

.field public static final ABM_WINDOWPOSCHANGED:I = 0x9

.field public static final FOF_ALLOWUNDO:I = 0x40

.field public static final FOF_CONFIRMMOUSE:I = 0x2

.field public static final FOF_FILESONLY:I = 0x80

.field public static final FOF_MULTIDESTFILES:I = 0x1

.field public static final FOF_NOCONFIRMATION:I = 0x10

.field public static final FOF_NOCONFIRMMKDIR:I = 0x200

.field public static final FOF_NOCOPYSECURITYATTRIBS:I = 0x800

.field public static final FOF_NOERRORUI:I = 0x400

.field public static final FOF_NORECURSEREPARSE:I = 0x8000

.field public static final FOF_NORECURSION:I = 0x1000

.field public static final FOF_NO_CONNECTED_ELEMENTS:I = 0x2000

.field public static final FOF_NO_UI:I = 0x614

.field public static final FOF_RENAMEONCOLLISION:I = 0x8

.field public static final FOF_SILENT:I = 0x4

.field public static final FOF_SIMPLEPROGRESS:I = 0x100

.field public static final FOF_WANTMAPPINGHANDLE:I = 0x20

.field public static final FOF_WANTNUKEWARNING:I = 0x4000

.field public static final FO_COPY:I = 0x2

.field public static final FO_DELETE:I = 0x3

.field public static final FO_MOVE:I = 0x1

.field public static final FO_RENAME:I = 0x4

.field public static final PO_DELETE:I = 0x13

.field public static final PO_PORTCHANGE:I = 0x20

.field public static final PO_RENAME:I = 0x14

.field public static final PO_REN_PORT:I = 0x34

.field public static final STRUCTURE_ALIGNMENT:I

.field public static final TYPE_MAPPER:Lcom/sun/jna/TypeMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Lcom/sun/jna/Platform;->is64Bit()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sun/jna/platform/win32/ShellAPI;->STRUCTURE_ALIGNMENT:I

    .line 50
    const-string v0, "w32.ascii"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->ASCII:Lcom/sun/jna/TypeMapper;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    :goto_0
    sput-object v0, Lcom/sun/jna/platform/win32/ShellAPI;->TYPE_MAPPER:Lcom/sun/jna/TypeMapper;

    return-void
.end method
