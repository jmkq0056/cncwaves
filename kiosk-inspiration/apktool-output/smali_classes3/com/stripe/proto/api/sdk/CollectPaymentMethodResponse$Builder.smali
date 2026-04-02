.class public final Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectPaymentMethodResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0012\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;",
        "()V",
        "payment",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
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
.field public payment:Lcom/stripe/proto/model/sdk/PaymentMethod;

.field public system_context:Lcom/stripe/proto/model/sdk/SystemContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;->build()Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;
    .locals 4

    .line 121
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;

    .line 122
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 123
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;->payment:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 124
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 121
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lokio/ByteString;)V

    return-object v0
.end method

.method public final payment(Lcom/stripe/proto/model/sdk/PaymentMethod;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;->payment:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object p0
.end method

.method public final system_context(Lcom/stripe/proto/model/sdk/SystemContext;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    return-object p0
.end method
