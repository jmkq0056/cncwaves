.class public final Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmPaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0015J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0015J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000eH\u0007R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "()V",
        "amount_surcharge",
        "",
        "Ljava/lang/Long;",
        "amount_tip",
        "amount_to_confirm",
        "expand",
        "",
        "",
        "id",
        "payment_method_data",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "payment_method_options",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
        "redirect_preferences",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;",
        "return_url",
        "source_data",
        "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
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
.field public amount_surcharge:Ljava/lang/Long;

.field public amount_tip:Ljava/lang/Long;

.field public amount_to_confirm:Ljava/lang/Long;

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

.field public payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

.field public redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

.field public return_url:Ljava/lang/String;

.field public source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 236
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->expand:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final amount_surcharge(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->amount_surcharge:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_tip(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->amount_tip:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_to_confirm(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->amount_to_confirm:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->build()Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;
    .locals 12

    .line 347
    new-instance v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    .line 348
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->expand:Ljava/util/List;

    .line 349
    iget-object v2, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 350
    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 351
    iget-object v4, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->amount_to_confirm:Ljava/lang/Long;

    .line 352
    iget-object v5, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->id:Ljava/lang/String;

    .line 353
    iget-object v6, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->amount_tip:Ljava/lang/Long;

    .line 354
    iget-object v7, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    .line 355
    iget-object v8, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->amount_surcharge:Ljava/lang/Long;

    .line 356
    iget-object v9, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->return_url:Ljava/lang/String;

    .line 357
    iget-object v10, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    .line 358
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 347
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)V

    return-object v0
.end method

.method public final expand(Ljava/util/List;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->expand:Ljava/util/List;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_data(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    return-object p0
.end method

.method public final payment_method_options(Lcom/stripe/proto/api/rest/PaymentMethodOptions;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    return-object p0
.end method

.method public final redirect_preferences(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    return-object p0
.end method

.method public final return_url(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->return_url:Ljava/lang/String;

    return-object p0
.end method

.method public final source_data(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "source_data is deprecated"
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    return-object p0
.end method
