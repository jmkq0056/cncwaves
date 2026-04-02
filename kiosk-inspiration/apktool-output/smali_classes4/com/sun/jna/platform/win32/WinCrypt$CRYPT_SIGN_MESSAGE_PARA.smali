.class public Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "dwMsgEncodingType",
        "pSigningCert",
        "HashAlgorithm",
        "pvHashAuxInfo",
        "cMsgCert",
        "rgpMsgCert",
        "cMsgCrl",
        "rgpMsgCrl",
        "cAuthAttr",
        "rgAuthAttr",
        "cUnauthAttr",
        "rgUnauthAttr",
        "dwFlags",
        "dwInnerContentType",
        "HashEncryptionAlgorithm",
        "pvHashEncryptionAuxInfo"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRYPT_SIGN_MESSAGE_PARA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA$ByReference;
    }
.end annotation


# instance fields
.field public HashAlgorithm:Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ALGORITHM_IDENTIFIER;

.field public HashEncryptionAlgorithm:Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ALGORITHM_IDENTIFIER;

.field public cAuthAttr:I

.field public cMsgCert:I

.field public cMsgCrl:I

.field public cUnauthAttr:I

.field public cbSize:I

.field public dwFlags:I

.field public dwInnerContentType:I

.field public dwMsgEncodingType:I

.field public pSigningCert:Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT$ByReference;

.field public pvHashAuxInfo:Lcom/sun/jna/Pointer;

.field public pvHashEncryptionAuxInfo:Lcom/sun/jna/Pointer;

.field public rgAuthAttr:Lcom/sun/jna/Pointer;

.field public rgUnauthAttr:Lcom/sun/jna/Pointer;

.field public rgpMsgCert:Lcom/sun/jna/Pointer;

.field public rgpMsgCrl:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 935
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 945
    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCert:Lcom/sun/jna/Pointer;

    .line 947
    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCrl:Lcom/sun/jna/Pointer;

    .line 949
    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->rgAuthAttr:Lcom/sun/jna/Pointer;

    .line 951
    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->rgUnauthAttr:Lcom/sun/jna/Pointer;

    return-void
.end method


# virtual methods
.method public getRgAuthAttr()[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;
    .locals 2

    .line 980
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->cAuthAttr:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 981
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    return-object v0

    .line 983
    :cond_0
    const-class v0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->rgAuthAttr:Lcom/sun/jna/Pointer;

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    iget v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->cAuthAttr:I

    .line 986
    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    return-object v0
.end method

.method public getRgUnauthAttr()[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;
    .locals 2

    .line 991
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->cUnauthAttr:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 992
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    return-object v0

    .line 994
    :cond_0
    const-class v0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->rgUnauthAttr:Lcom/sun/jna/Pointer;

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    iget v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->cUnauthAttr:I

    .line 997
    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    check-cast v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    return-object v0
.end method

.method public getRgpMsgCert()[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;
    .locals 7

    .line 958
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->cMsgCrl:I

    new-array v1, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 960
    const-class v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

    iget-object v4, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCert:Lcom/sun/jna/Pointer;

    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    .line 962
    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    .line 960
    invoke-static {v3, v4}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

    aput-object v3, v1, v2

    .line 963
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRgpMsgCrl()[Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;
    .locals 7

    .line 969
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->cMsgCrl:I

    new-array v1, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 971
    const-class v3, Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;

    iget-object v4, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCrl:Lcom/sun/jna/Pointer;

    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    .line 973
    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    .line 971
    invoke-static {v3, v4}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;

    aput-object v3, v1, v2

    .line 974
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
