.class public Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pszObjId",
        "cValue",
        "rgValue"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRYPT_ATTRIBUTE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE$ByReference;
    }
.end annotation


# instance fields
.field public cValue:I

.field public pszObjId:Ljava/lang/String;

.field public rgValue:Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 846
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->ASCII:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method


# virtual methods
.method public getRgValue()[Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->rgValue:Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB$ByReference;

    iget v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->cValue:I

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB$ByReference;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

    return-object v0
.end method
