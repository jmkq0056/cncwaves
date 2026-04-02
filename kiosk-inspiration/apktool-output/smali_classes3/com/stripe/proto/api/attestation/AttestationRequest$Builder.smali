.class public final Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AttestationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/attestation/AttestationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/attestation/AttestationRequest;",
        "Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/attestation/AttestationRequest;",
        "()V",
        "id",
        "",
        "signature",
        "signed_request",
        "Lcom/stripe/proto/api/attestation/SignedRequest;",
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
.field public id:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->signature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->build()Lcom/stripe/proto/api/attestation/AttestationRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/attestation/AttestationRequest;
    .locals 5

    .line 125
    new-instance v0, Lcom/stripe/proto/api/attestation/AttestationRequest;

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    .line 127
    iget-object v2, p0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->signature:Ljava/lang/String;

    .line 128
    iget-object v3, p0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->id:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 125
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/attestation/AttestationRequest;-><init>(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final signature(Ljava/lang/String;)Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;
    .locals 1

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public final signed_request(Lcom/stripe/proto/api/attestation/SignedRequest;)Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    return-object p0
.end method
