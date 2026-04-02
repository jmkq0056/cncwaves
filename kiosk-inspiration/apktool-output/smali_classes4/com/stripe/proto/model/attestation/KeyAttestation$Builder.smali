.class public final Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "KeyAttestation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/attestation/KeyAttestation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/attestation/KeyAttestation;",
        "Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/attestation/KeyAttestation;",
        "()V",
        "certificates",
        "",
        "",
        "public_key",
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
.field public certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public public_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;->public_key:Ljava/lang/String;

    .line 101
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;->certificates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;->build()Lcom/stripe/proto/model/attestation/KeyAttestation;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/attestation/KeyAttestation;
    .locals 4

    .line 117
    new-instance v0, Lcom/stripe/proto/model/attestation/KeyAttestation;

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;->public_key:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;->certificates:Ljava/util/List;

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 117
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/attestation/KeyAttestation;-><init>(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final certificates(Ljava/util/List;)Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;"
        }
    .end annotation

    const-string v0, "certificates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 113
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;->certificates:Ljava/util/List;

    return-object p0
.end method

.method public final public_key(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;
    .locals 1

    const-string v0, "public_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;->public_key:Ljava/lang/String;

    return-object p0
.end method
