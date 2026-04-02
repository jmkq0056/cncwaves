.class public final Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;",
        "()V",
        "amount",
        "",
        "label",
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
.field public amount:J

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 711
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 716
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final amount(J)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;
    .locals 0

    .line 722
    iput-wide p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;->amount:J

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 711
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;->build()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;
    .locals 5

    .line 734
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;

    .line 735
    iget-wide v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;->amount:J

    .line 736
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;->label:Ljava/lang/String;

    .line 737
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 734
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;-><init>(JLjava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final label(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;
    .locals 1

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;->label:Ljava/lang/String;

    return-object p0
.end method
