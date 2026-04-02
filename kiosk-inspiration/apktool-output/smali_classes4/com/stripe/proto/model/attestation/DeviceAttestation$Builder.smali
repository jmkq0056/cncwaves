.class public final Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeviceAttestation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/attestation/DeviceAttestation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/attestation/DeviceAttestation;",
        "Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cR\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/attestation/DeviceAttestation;",
        "()V",
        "dak_certificates",
        "",
        "",
        "local_attestation",
        "Lcom/stripe/proto/model/attestation/LocalAttestation;",
        "play_integrity_attestation",
        "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;",
        "timestamp",
        "",
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
.field public dak_certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

.field public play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 132
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->dak_certificates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->build()Lcom/stripe/proto/model/attestation/DeviceAttestation;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/attestation/DeviceAttestation;
    .locals 7

    .line 161
    new-instance v0, Lcom/stripe/proto/model/attestation/DeviceAttestation;

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    .line 163
    iget-wide v2, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->timestamp:J

    .line 164
    iget-object v4, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->dak_certificates:Ljava/util/List;

    .line 165
    iget-object v5, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    .line 166
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 161
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/attestation/DeviceAttestation;-><init>(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;)V

    return-object v0
.end method

.method public final dak_certificates(Ljava/util/List;)Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;"
        }
    .end annotation

    const-string v0, "dak_certificates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->dak_certificates:Ljava/util/List;

    return-object p0
.end method

.method public final local_attestation(Lcom/stripe/proto/model/attestation/LocalAttestation;)Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    return-object p0
.end method

.method public final play_integrity_attestation(Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;)Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    return-object p0
.end method

.method public final timestamp(J)Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->timestamp:J

    return-object p0
.end method
