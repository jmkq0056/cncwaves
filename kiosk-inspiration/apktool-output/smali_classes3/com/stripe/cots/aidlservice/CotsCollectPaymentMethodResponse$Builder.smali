.class public final Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsCollectPaymentMethodResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;",
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;",
        "()V",
        "result",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
        "build",
        "proto_release"
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
.field public result:Lcom/stripe/cots/aidlservice/CotsContactlessResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse$Builder;->build()Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;
    .locals 3

    .line 79
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;

    .line 80
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse$Builder;->result:Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    .line 81
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 79
    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;-><init>(Lcom/stripe/cots/aidlservice/CotsContactlessResult;Lokio/ByteString;)V

    return-object v0
.end method

.method public final result(Lcom/stripe/cots/aidlservice/CotsContactlessResult;)Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse$Builder;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse$Builder;->result:Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    return-object p0
.end method
