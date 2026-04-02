.class public final Lcom/stripe/proto/model/attestation/InnerError$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "InnerError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/attestation/InnerError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/attestation/InnerError;",
        "Lcom/stripe/proto/model/attestation/InnerError$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/InnerError$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/attestation/InnerError;",
        "()V",
        "message",
        "",
        "request_log_url",
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
.field public message:Ljava/lang/String;

.field public request_log_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InnerError$Builder;->message:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InnerError$Builder;->request_log_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InnerError$Builder;->build()Lcom/stripe/proto/model/attestation/InnerError;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/attestation/InnerError;
    .locals 4

    .line 114
    new-instance v0, Lcom/stripe/proto/model/attestation/InnerError;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InnerError$Builder;->message:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/stripe/proto/model/attestation/InnerError$Builder;->request_log_url:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InnerError$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 114
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/attestation/InnerError;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final message(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InnerError$Builder;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InnerError$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final request_log_url(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InnerError$Builder;
    .locals 1

    const-string v0, "request_log_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InnerError$Builder;->request_log_url:Ljava/lang/String;

    return-object p0
.end method
