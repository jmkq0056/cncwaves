.class public final Lcom/stripe/proto/api/attestation/SignedRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SignedRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/attestation/SignedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/attestation/SignedRequest;",
        "Lcom/stripe/proto/api/attestation/SignedRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/attestation/SignedRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/attestation/SignedRequest;",
        "()V",
        "attest_device_request",
        "Lcom/stripe/proto/api/attestation/AttestDeviceRequest;",
        "bind_device_request",
        "Lcom/stripe/proto/api/attestation/BindDeviceRequest;",
        "nonce",
        "",
        "rotate_key_request",
        "Lcom/stripe/proto/api/attestation/RotateKeyRequest;",
        "build",
        "internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public attest_device_request:Lcom/stripe/proto/api/attestation/AttestDeviceRequest;

.field public bind_device_request:Lcom/stripe/proto/api/attestation/BindDeviceRequest;

.field public nonce:Ljava/lang/String;

.field public rotate_key_request:Lcom/stripe/proto/api/attestation/RotateKeyRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->nonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final attest_device_request(Lcom/stripe/proto/api/attestation/AttestDeviceRequest;)Lcom/stripe/proto/api/attestation/SignedRequest$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->attest_device_request:Lcom/stripe/proto/api/attestation/AttestDeviceRequest;

    return-object p0
.end method

.method public final bind_device_request(Lcom/stripe/proto/api/attestation/BindDeviceRequest;)Lcom/stripe/proto/api/attestation/SignedRequest$Builder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->bind_device_request:Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->build()Lcom/stripe/proto/api/attestation/SignedRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/attestation/SignedRequest;
    .locals 6

    .line 154
    new-instance v0, Lcom/stripe/proto/api/attestation/SignedRequest;

    .line 155
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->bind_device_request:Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    .line 156
    iget-object v2, p0, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->nonce:Ljava/lang/String;

    .line 157
    iget-object v3, p0, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->attest_device_request:Lcom/stripe/proto/api/attestation/AttestDeviceRequest;

    .line 158
    iget-object v4, p0, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->rotate_key_request:Lcom/stripe/proto/api/attestation/RotateKeyRequest;

    .line 159
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/attestation/SignedRequest;-><init>(Lcom/stripe/proto/api/attestation/BindDeviceRequest;Ljava/lang/String;Lcom/stripe/proto/api/attestation/AttestDeviceRequest;Lcom/stripe/proto/api/attestation/RotateKeyRequest;Lokio/ByteString;)V

    return-object v0
.end method

.method public final nonce(Ljava/lang/String;)Lcom/stripe/proto/api/attestation/SignedRequest$Builder;
    .locals 1

    const-string v0, "nonce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method public final rotate_key_request(Lcom/stripe/proto/api/attestation/RotateKeyRequest;)Lcom/stripe/proto/api/attestation/SignedRequest$Builder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/SignedRequest$Builder;->rotate_key_request:Lcom/stripe/proto/api/attestation/RotateKeyRequest;

    return-object p0
.end method
