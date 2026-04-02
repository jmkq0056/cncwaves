.class public final Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdatePaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Long;",
        "amount_tip",
        "expand",
        "",
        "",
        "id",
        "payment_method_data",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "payment_method_options",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;",
        "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;",
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
.field public amount:Ljava/lang/Long;

.field public amount_tip:Ljava/lang/Long;

.field public expand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

.field public payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 155
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->expand:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_tip(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->amount_tip:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->build()Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;
    .locals 8

    .line 209
    new-instance v0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    .line 210
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->expand:Ljava/util/List;

    .line 211
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->amount:Ljava/lang/Long;

    .line 212
    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->id:Ljava/lang/String;

    .line 213
    iget-object v4, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 214
    iget-object v5, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->amount_tip:Ljava/lang/Long;

    .line 215
    iget-object v6, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    .line 216
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 209
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;Lokio/ByteString;)V

    return-object v0
.end method

.method public final expand(Ljava/util/List;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->expand:Ljava/util/List;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_data(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    return-object p0
.end method

.method public final payment_method_options(Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    return-object p0
.end method
