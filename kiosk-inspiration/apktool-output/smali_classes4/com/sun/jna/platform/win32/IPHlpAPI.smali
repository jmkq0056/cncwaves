.class public interface abstract Lcom/sun/jna/platform/win32/IPHlpAPI;
.super Ljava/lang/Object;
.source "IPHlpAPI.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/IPHlpAPI$FIXED_INFO;,
        Lcom/sun/jna/platform/win32/IPHlpAPI$IP_ADDR_STRING;,
        Lcom/sun/jna/platform/win32/IPHlpAPI$IP_ADDRESS_STRING;,
        Lcom/sun/jna/platform/win32/IPHlpAPI$MIB_IF_ROW2;,
        Lcom/sun/jna/platform/win32/IPHlpAPI$MIB_IFROW;
    }
.end annotation


# static fields
.field public static final IF_MAX_PHYS_ADDRESS_LENGTH:I = 0x20

.field public static final IF_MAX_STRING_SIZE:I = 0x100

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/IPHlpAPI;

.field public static final MAXLEN_IFDESCR:I = 0x100

.field public static final MAXLEN_PHYSADDR:I = 0x8

.field public static final MAX_DOMAIN_NAME_LEN:I = 0x80

.field public static final MAX_HOSTNAME_LEN:I = 0x80

.field public static final MAX_INTERFACE_NAME_LEN:I = 0x100

.field public static final MAX_SCOPE_ID_LEN:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-class v0, Lcom/sun/jna/platform/win32/IPHlpAPI;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "IPHlpAPI"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/IPHlpAPI;

    sput-object v0, Lcom/sun/jna/platform/win32/IPHlpAPI;->INSTANCE:Lcom/sun/jna/platform/win32/IPHlpAPI;

    return-void
.end method


# virtual methods
.method public abstract GetIfEntry(Lcom/sun/jna/platform/win32/IPHlpAPI$MIB_IFROW;)I
.end method

.method public abstract GetIfEntry2(Lcom/sun/jna/platform/win32/IPHlpAPI$MIB_IF_ROW2;)I
.end method

.method public abstract GetNetworkParams(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method
