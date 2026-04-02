.class public Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_INFO;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pwszContainerName",
        "pwszProvName",
        "dwProvType",
        "dwFlags",
        "cProvParam",
        "rgProvParam",
        "dwKeySpec"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRYPT_KEY_PROV_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_INFO$ByReference;
    }
.end annotation


# instance fields
.field public cProvParam:I

.field public dwFlags:I

.field public dwKeySpec:I

.field public dwProvType:I

.field public pwszContainerName:Ljava/lang/String;

.field public pwszProvName:Ljava/lang/String;

.field public rgProvParam:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 889
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method


# virtual methods
.method public getRgProvParam()[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_PARAM;
    .locals 7

    .line 893
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_INFO;->cProvParam:I

    new-array v1, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_PARAM;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 895
    const-class v3, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_PARAM;

    iget-object v4, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_INFO;->rgProvParam:Lcom/sun/jna/Pointer;

    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    .line 897
    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    .line 895
    invoke-static {v3, v4}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_PARAM;

    aput-object v3, v1, v2

    .line 898
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_PARAM;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
