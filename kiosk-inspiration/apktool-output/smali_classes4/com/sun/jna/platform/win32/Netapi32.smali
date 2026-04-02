.class public interface abstract Lcom/sun/jna/platform/win32/Netapi32;
.super Ljava/lang/Object;
.source "Netapi32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-class v0, Lcom/sun/jna/platform/win32/Netapi32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Netapi32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Netapi32;

    sput-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    return-void
.end method


# virtual methods
.method public abstract DsEnumerateDomainTrusts(Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract DsGetDcName(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/Guid$GUID;Ljava/lang/String;ILcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;)I
.end method

.method public abstract DsGetForestTrustInformation(Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_INFORMATION;)I
.end method

.method public abstract NetApiBufferFree(Lcom/sun/jna/Pointer;)I
.end method

.method public abstract NetGetDCName(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract NetGetJoinInformation(Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract NetGroupEnum(Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract NetLocalGroupEnum(Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract NetShareAdd(Ljava/lang/String;ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract NetShareDel(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract NetUserAdd(Ljava/lang/String;ILcom/sun/jna/Structure;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract NetUserChangePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract NetUserDel(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract NetUserEnum(Ljava/lang/String;IILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract NetUserGetGroups(Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract NetUserGetInfo(Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract NetUserGetLocalGroups(Ljava/lang/String;Ljava/lang/String;IILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method
