.class public final Lcom/stripe/proto/api/attestation/AttestDeviceResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AttestDeviceResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/attestation/AttestDeviceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/attestation/AttestDeviceResponse;",
        "Lcom/stripe/proto/api/attestation/AttestDeviceResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/api/attestation/AttestDeviceResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/attestation/AttestDeviceResponse;",
        "()V",
        "fingerprint_status",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;",
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
.field public fingerprint_status:Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestDeviceResponse$Builder;->build()Lcom/stripe/proto/api/attestation/AttestDeviceResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/attestation/AttestDeviceResponse;
    .locals 3

    .line 87
    new-instance v0, Lcom/stripe/proto/api/attestation/AttestDeviceResponse;

    .line 88
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestDeviceResponse$Builder;->fingerprint_status:Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;

    .line 89
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestDeviceResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 87
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/api/attestation/AttestDeviceResponse;-><init>(Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final fingerprint_status(Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;)Lcom/stripe/proto/api/attestation/AttestDeviceResponse$Builder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/AttestDeviceResponse$Builder;->fingerprint_status:Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;

    return-object p0
.end method
