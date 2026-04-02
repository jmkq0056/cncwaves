.class public final Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AesGcmCiphertext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/attestation/AesGcmCiphertext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/attestation/AesGcmCiphertext;",
        "Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/attestation/AesGcmCiphertext;",
        "()V",
        "ciphertext",
        "Lokio/ByteString;",
        "initialization_vector",
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
.field public ciphertext:Lokio/ByteString;

.field public initialization_vector:Lokio/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 93
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;->ciphertext:Lokio/ByteString;

    .line 96
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;->initialization_vector:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;->build()Lcom/stripe/proto/model/attestation/AesGcmCiphertext;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/attestation/AesGcmCiphertext;
    .locals 4

    .line 108
    new-instance v0, Lcom/stripe/proto/model/attestation/AesGcmCiphertext;

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;->ciphertext:Lokio/ByteString;

    .line 110
    iget-object v2, p0, Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;->initialization_vector:Lokio/ByteString;

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 108
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/attestation/AesGcmCiphertext;-><init>(Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;)V

    return-object v0
.end method

.method public final ciphertext(Lokio/ByteString;)Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;
    .locals 1

    const-string v0, "ciphertext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;->ciphertext:Lokio/ByteString;

    return-object p0
.end method

.method public final initialization_vector(Lokio/ByteString;)Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;
    .locals 1

    const-string v0, "initialization_vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;->initialization_vector:Lokio/ByteString;

    return-object p0
.end method
