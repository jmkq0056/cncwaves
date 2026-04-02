.class public interface abstract Lcom/sun/jna/platform/win32/Cfgmgr32;
.super Ljava/lang/Object;
.source "Cfgmgr32.java"

# interfaces
.implements Lcom/sun/jna/Library;


# static fields
.field public static final CM_LOCATE_DEVNODE_BITS:I = 0x7

.field public static final CM_LOCATE_DEVNODE_CANCELREMOVE:I = 0x2

.field public static final CM_LOCATE_DEVNODE_NORMAL:I = 0x0

.field public static final CM_LOCATE_DEVNODE_NOVALIDATION:I = 0x4

.field public static final CM_LOCATE_DEVNODE_PHANTOM:I = 0x1

.field public static final CR_BUFFER_SMALL:I = 0x1a

.field public static final CR_SUCCESS:I

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Cfgmgr32;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-class v0, Lcom/sun/jna/platform/win32/Cfgmgr32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Cfgmgr32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Cfgmgr32;

    sput-object v0, Lcom/sun/jna/platform/win32/Cfgmgr32;->INSTANCE:Lcom/sun/jna/platform/win32/Cfgmgr32;

    return-void
.end method


# virtual methods
.method public abstract CM_Get_Child(Lcom/sun/jna/ptr/IntByReference;II)I
.end method

.method public abstract CM_Get_Device_ID(ILcom/sun/jna/Pointer;II)I
.end method

.method public abstract CM_Get_Device_ID_Size(Lcom/sun/jna/ptr/IntByReference;II)I
.end method

.method public abstract CM_Get_Parent(Lcom/sun/jna/ptr/IntByReference;II)I
.end method

.method public abstract CM_Get_Sibling(Lcom/sun/jna/ptr/IntByReference;II)I
.end method

.method public abstract CM_Locate_DevNode(Lcom/sun/jna/ptr/IntByReference;Ljava/lang/String;I)I
.end method
