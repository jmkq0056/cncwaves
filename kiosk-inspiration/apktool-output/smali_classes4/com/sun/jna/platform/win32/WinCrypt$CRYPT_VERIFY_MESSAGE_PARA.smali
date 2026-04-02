.class public Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_VERIFY_MESSAGE_PARA;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "dwMsgAndCertEncodingType",
        "hCryptProv",
        "pfnGetSignerCertificate",
        "pvGetArg",
        "pStrongSignPara"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRYPT_VERIFY_MESSAGE_PARA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_VERIFY_MESSAGE_PARA$ByReference;
    }
.end annotation


# instance fields
.field public cbSize:I

.field public dwMsgAndCertEncodingType:I

.field public hCryptProv:Lcom/sun/jna/platform/win32/WinCrypt$HCRYPTPROV_LEGACY;

.field public pStrongSignPara:Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA$ByReference;

.field public pfnGetSignerCertificate:Lcom/sun/jna/platform/win32/WinCrypt$CryptGetSignerCertificateCallback;

.field public pvGetArg:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1049
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 1

    .line 1062
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_VERIFY_MESSAGE_PARA;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_VERIFY_MESSAGE_PARA;->cbSize:I

    .line 1063
    invoke-super {p0}, Lcom/sun/jna/Structure;->write()V

    return-void
.end method
