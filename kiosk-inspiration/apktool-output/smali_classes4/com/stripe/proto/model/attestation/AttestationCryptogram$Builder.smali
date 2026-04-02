.class public final Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AttestationCryptogram.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/attestation/AttestationCryptogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/attestation/AttestationCryptogram;",
        "Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/attestation/AttestationCryptogram;",
        "()V",
        "expiration",
        "",
        "inner_key_id",
        "",
        "pdk_key_id",
        "session_token",
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
.field public expiration:J

.field public inner_key_id:Ljava/lang/String;

.field public pdk_key_id:Ljava/lang/String;

.field public session_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->inner_key_id:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->pdk_key_id:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->session_token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->build()Lcom/stripe/proto/model/attestation/AttestationCryptogram;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/attestation/AttestationCryptogram;
    .locals 7

    .line 177
    new-instance v0, Lcom/stripe/proto/model/attestation/AttestationCryptogram;

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->inner_key_id:Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->pdk_key_id:Ljava/lang/String;

    .line 180
    iget-object v3, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->session_token:Ljava/lang/String;

    .line 181
    iget-wide v4, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->expiration:J

    .line 182
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 177
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/attestation/AttestationCryptogram;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLokio/ByteString;)V

    return-object v0
.end method

.method public final expiration(J)Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;
    .locals 0

    .line 173
    iput-wide p1, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->expiration:J

    return-object p0
.end method

.method public final inner_key_id(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;
    .locals 1

    const-string v0, "inner_key_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->inner_key_id:Ljava/lang/String;

    return-object p0
.end method

.method public final pdk_key_id(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;
    .locals 1

    const-string v0, "pdk_key_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->pdk_key_id:Ljava/lang/String;

    return-object p0
.end method

.method public final session_token(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;
    .locals 1

    const-string v0, "session_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;->session_token:Ljava/lang/String;

    return-object p0
.end method
