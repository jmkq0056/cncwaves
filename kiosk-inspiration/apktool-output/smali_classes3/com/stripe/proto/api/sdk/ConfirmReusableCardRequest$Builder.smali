.class public final Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmReusableCardRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;",
        "()V",
        "customer",
        "",
        "metadata",
        "",
        "reusable_card_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
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
.field public customer:Ljava/lang/String;

.field public metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->customer:Ljava/lang/String;

    .line 124
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;
    .locals 5

    .line 150
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 152
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->customer:Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->metadata:Ljava/util/Map;

    .line 154
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 150
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;-><init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;
    .locals 1

    const-string v0, "customer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final reusable_card_method(Lcom/stripe/proto/model/sdk/PaymentMethod;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object p0
.end method
