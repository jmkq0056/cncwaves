.class public Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_PARAM;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwParam",
        "pbData",
        "cbData",
        "dwFlags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRYPT_KEY_PROV_PARAM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_PARAM$ByReference;
    }
.end annotation


# instance fields
.field public cbData:I

.field public dwFlags:I

.field public dwParam:I

.field public pbData:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 913
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
