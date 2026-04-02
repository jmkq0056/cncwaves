.class public final Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsCollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;",
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;",
        "()V",
        "amount",
        "",
        "currency",
        "",
        "readerProfile",
        "transactionDataObjects",
        "",
        "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;",
        "uxConfig",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig;",
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
.field public amount:J

.field public currency:Ljava/lang/String;

.field public readerProfile:Ljava/lang/String;

.field public transactionDataObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;",
            ">;"
        }
    .end annotation
.end field

.field public uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->currency:Ljava/lang/String;

    .line 146
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->transactionDataObjects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final amount(J)Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;
    .locals 0

    .line 152
    iput-wide p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->amount:J

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->build()Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;
    .locals 8

    .line 177
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;

    .line 178
    iget-wide v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->amount:J

    .line 179
    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->currency:Ljava/lang/String;

    .line 180
    iget-object v4, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->readerProfile:Ljava/lang/String;

    .line 181
    iget-object v5, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->transactionDataObjects:Ljava/util/List;

    .line 182
    iget-object v6, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    .line 183
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 177
    invoke-direct/range {v0 .. v7}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;)V

    return-object v0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final readerProfile(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->readerProfile:Ljava/lang/String;

    return-object p0
.end method

.method public final transactionDataObjects(Ljava/util/List;)Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;",
            ">;)",
            "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;"
        }
    .end annotation

    const-string v0, "transactionDataObjects"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 168
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->transactionDataObjects:Ljava/util/List;

    return-object p0
.end method

.method public final uxConfig(Lcom/stripe/cots/aidlservice/CotsUxConfig;)Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    return-object p0
.end method
