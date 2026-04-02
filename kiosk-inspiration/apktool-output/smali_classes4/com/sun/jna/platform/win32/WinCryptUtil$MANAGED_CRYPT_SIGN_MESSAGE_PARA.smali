.class public Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;
.super Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;
.source "WinCryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCryptUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MANAGED_CRYPT_SIGN_MESSAGE_PARA"
.end annotation


# instance fields
.field private rgAuthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

.field private rgUnauthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

.field private rgpMsgCerts:[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

.field private rgpMsgCrls:[Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;-><init>()V

    return-void
.end method


# virtual methods
.method public getRgAuthAttr()[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgAuthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    return-object v0
.end method

.method public getRgUnauthAttr()[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgUnauthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    return-object v0
.end method

.method public getRgpMsgCert()[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCerts:[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

    return-object v0
.end method

.method public getRgpMsgCrl()[Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCrls:[Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;

    return-object v0
.end method

.method public read()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCerts:[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 155
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;->read()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCrls:[Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;

    if-eqz v0, :cond_1

    .line 159
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 160
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;->read()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgAuthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    if-eqz v0, :cond_2

    .line 164
    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 165
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->read()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgUnauthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    if-eqz v0, :cond_3

    .line 169
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 170
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->read()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 173
    :cond_3
    invoke-super {p0}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->read()V

    return-void
.end method

.method public setRgAuthAttr([Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;)V
    .locals 2

    .line 89
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgAuthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 90
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCerts:[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

    array-length v1, v1

    iput v1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->cMsgCert:I

    .line 95
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgAuthAttr:Lcom/sun/jna/Pointer;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgAuthAttr:Lcom/sun/jna/Pointer;

    .line 92
    iput v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->cMsgCert:I

    return-void
.end method

.method public setRgUnauthAttr([Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;)V
    .locals 2

    .line 110
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgUnauthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 111
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCerts:[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

    array-length v1, v1

    iput v1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->cMsgCert:I

    .line 116
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgUnauthAttr:Lcom/sun/jna/Pointer;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgUnauthAttr:Lcom/sun/jna/Pointer;

    .line 113
    iput v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->cMsgCert:I

    return-void
.end method

.method public setRgpMsgCert([Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;)V
    .locals 5

    .line 44
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCerts:[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 45
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    array-length v1, p1

    iput v1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->cMsgCert:I

    .line 50
    new-instance v1, Lcom/sun/jna/Memory;

    sget v2, Lcom/sun/jna/Native;->POINTER_SIZE:I

    array-length v3, p1

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 51
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 52
    sget v2, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v2, v0

    int-to-long v2, v2

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/jna/Memory;->setPointer(JLcom/sun/jna/Pointer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCert:Lcom/sun/jna/Pointer;

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCert:Lcom/sun/jna/Pointer;

    .line 47
    iput v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->cMsgCert:I

    return-void
.end method

.method public setRgpMsgCrl([Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;)V
    .locals 5

    .line 64
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCrls:[Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 65
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    array-length v1, p1

    iput v1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->cMsgCert:I

    .line 70
    new-instance v1, Lcom/sun/jna/Memory;

    sget v2, Lcom/sun/jna/Native;->POINTER_SIZE:I

    array-length v3, p1

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 71
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 72
    sget v2, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v2, v0

    int-to-long v2, v2

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/jna/Memory;->setPointer(JLcom/sun/jna/Pointer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCert:Lcom/sun/jna/Pointer;

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCert:Lcom/sun/jna/Pointer;

    .line 67
    iput v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->cMsgCert:I

    return-void
.end method

.method public write()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCerts:[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 129
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;->write()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgpMsgCrls:[Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;

    if-eqz v0, :cond_1

    .line 133
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 134
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;->write()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgAuthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    if-eqz v0, :cond_2

    .line 138
    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 139
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->write()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->rgUnauthAttrs:[Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;

    if-eqz v0, :cond_3

    .line 143
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 144
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;->write()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinCryptUtil$MANAGED_CRYPT_SIGN_MESSAGE_PARA;->cbSize:I

    .line 148
    invoke-super {p0}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;->write()V

    return-void
.end method
