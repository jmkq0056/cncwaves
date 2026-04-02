.class public Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_VERIFY_MESSAGE_PARA$ByReference;
.super Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;
.source "WinCrypt.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_VERIFY_MESSAGE_PARA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1050
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;-><init>()V

    return-void
.end method
