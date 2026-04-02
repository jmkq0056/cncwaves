.class public Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_BIT_BLOB;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbData",
        "pbData",
        "cUnusedBits"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRYPT_BIT_BLOB"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_BIT_BLOB$ByReference;
    }
.end annotation


# instance fields
.field public cUnusedBits:I

.field public cbData:I

.field public pbData:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 858
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
