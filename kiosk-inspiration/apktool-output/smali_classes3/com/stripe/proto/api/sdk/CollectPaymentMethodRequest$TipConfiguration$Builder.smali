.class public final Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;",
        "()V",
        "hide_custom_amount",
        "",
        "options",
        "",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;",
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
.field public hide_custom_amount:Z

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 868
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 870
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->options:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->build()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;
    .locals 4

    .line 892
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    .line 893
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->options:Ljava/util/List;

    .line 894
    iget-boolean v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->hide_custom_amount:Z

    .line 895
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 892
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;-><init>(Ljava/util/List;ZLokio/ByteString;)V

    return-object v0
.end method

.method public final hide_custom_amount(Z)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;
    .locals 0

    .line 888
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->hide_custom_amount:Z

    return-object p0
.end method

.method public final options(Ljava/util/List;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 880
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->options:Ljava/util/List;

    return-object p0
.end method
