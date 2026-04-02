.class public final Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReadCardPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;",
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007J\u001a\u0010\u0008\u001a\u00020\u00002\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;",
        "()V",
        "customer",
        "",
        "expand",
        "",
        "metadata",
        "",
        "payment_method_data",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
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

.field public expand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field public payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 139
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->expand:Ljava/util/List;

    .line 148
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->build()Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;
    .locals 6

    .line 183
    new-instance v0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;

    .line 184
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->expand:Ljava/util/List;

    .line 185
    iget-object v2, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->customer:Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 187
    iget-object v4, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->metadata:Ljava/util/Map;

    .line 188
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final expand(Ljava/util/List;)Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 155
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->expand:Ljava/util/List;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final payment_method_data(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    return-object p0
.end method
