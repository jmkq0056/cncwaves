.class public final Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentMethodOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;",
        "()V",
        "computed_priority",
        "",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
        "requested_priority",
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
.field public computed_priority:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;"
        }
    .end annotation
.end field

.field public requested_priority:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 707
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 712
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;->computed_priority:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 707
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;->build()Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;
    .locals 4

    .line 725
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;

    .line 726
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;->requested_priority:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    .line 727
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;->computed_priority:Ljava/util/List;

    .line 728
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 725
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;-><init>(Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final computed_priority(Ljava/util/List;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;)",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;"
        }
    .end annotation

    const-string v0, "computed_priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 721
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;->computed_priority:Ljava/util/List;

    return-object p0
.end method

.method public final requested_priority(Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;->requested_priority:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    return-object p0
.end method
