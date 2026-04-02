.class public final Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BindDeviceRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/attestation/BindDeviceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/attestation/BindDeviceRequest;",
        "Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/attestation/BindDeviceRequest;",
        "()V",
        "device_authentication_key",
        "Lcom/stripe/proto/model/attestation/KeyAttestation;",
        "installation_fingerprint",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprint;",
        "key_transport_key",
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
.field public device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

.field public installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

.field public key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;->build()Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/attestation/BindDeviceRequest;
    .locals 5

    .line 129
    new-instance v0, Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    .line 131
    iget-object v2, p0, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    .line 132
    iget-object v3, p0, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    .line 133
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 129
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/attestation/BindDeviceRequest;-><init>(Lcom/stripe/proto/model/attestation/InstallationFingerprint;Lcom/stripe/proto/model/attestation/KeyAttestation;Lcom/stripe/proto/model/attestation/KeyAttestation;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_authentication_key(Lcom/stripe/proto/model/attestation/KeyAttestation;)Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    return-object p0
.end method

.method public final installation_fingerprint(Lcom/stripe/proto/model/attestation/InstallationFingerprint;)Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    return-object p0
.end method

.method public final key_transport_key(Lcom/stripe/proto/model/attestation/KeyAttestation;)Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    return-object p0
.end method
