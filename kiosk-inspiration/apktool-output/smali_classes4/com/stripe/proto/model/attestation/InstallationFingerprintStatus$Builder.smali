.class public final Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "InstallationFingerprintStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;",
        "()V",
        "attestation_cryptogram",
        "",
        "attestation_status",
        "Lcom/stripe/proto/model/attestation/AttestationStatus;",
        "id",
        "working_nonce",
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
.field public attestation_cryptogram:Ljava/lang/String;

.field public attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

.field public id:Ljava/lang/String;

.field public working_nonce:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->id:Ljava/lang/String;

    .line 133
    sget-object v1, Lcom/stripe/proto/model/attestation/AttestationStatus;->ATTESTED:Lcom/stripe/proto/model/attestation/AttestationStatus;

    iput-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    .line 136
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->attestation_cryptogram:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->working_nonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final attestation_cryptogram(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;
    .locals 1

    const-string v0, "attestation_cryptogram"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->attestation_cryptogram:Ljava/lang/String;

    return-object p0
.end method

.method public final attestation_status(Lcom/stripe/proto/model/attestation/AttestationStatus;)Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;
    .locals 1

    const-string v0, "attestation_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->build()Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;
    .locals 6

    .line 173
    new-instance v0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->id:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    .line 176
    iget-object v3, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->attestation_cryptogram:Ljava/lang/String;

    .line 177
    iget-object v4, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->working_nonce:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final working_nonce(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;
    .locals 1

    const-string v0, "working_nonce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->working_nonce:Ljava/lang/String;

    return-object p0
.end method
