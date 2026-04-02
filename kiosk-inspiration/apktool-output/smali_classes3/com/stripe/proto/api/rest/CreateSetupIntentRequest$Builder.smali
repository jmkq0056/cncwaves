.class public final Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CreateSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u001a\u0010\u000c\u001a\u00020\u00002\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0014\u0010\u0012\u001a\u00020\u00002\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "()V",
        "confirm",
        "",
        "Ljava/lang/Boolean;",
        "customer",
        "",
        "description",
        "mandate_data",
        "Lcom/stripe/proto/api/rest/Mandate;",
        "metadata",
        "",
        "on_behalf_of",
        "payment_method",
        "payment_method_options",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
        "payment_method_types",
        "",
        "return_url",
        "single_use",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;",
        "usage",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;",
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
.field public confirm:Ljava/lang/Boolean;

.field public customer:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public mandate_data:Lcom/stripe/proto/api/rest/Mandate;

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

.field public on_behalf_of:Ljava/lang/String;

.field public payment_method:Ljava/lang/String;

.field public payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

.field public payment_method_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public return_url:Ljava/lang/String;

.field public single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

.field public usage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 278
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->metadata:Ljava/util/Map;

    .line 284
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method_types:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->build()Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
    .locals 14

    .line 401
    new-instance v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    .line 402
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->confirm:Ljava/lang/Boolean;

    .line 403
    iget-object v2, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->customer:Ljava/lang/String;

    .line 404
    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->description:Ljava/lang/String;

    .line 405
    iget-object v4, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->metadata:Ljava/util/Map;

    .line 406
    iget-object v5, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method:Ljava/lang/String;

    .line 407
    iget-object v6, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method_types:Ljava/util/List;

    .line 408
    iget-object v7, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->usage:Ljava/lang/String;

    .line 409
    iget-object v8, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    .line 410
    iget-object v9, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->on_behalf_of:Ljava/lang/String;

    .line 411
    iget-object v10, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    .line 412
    iget-object v11, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->return_url:Ljava/lang/String;

    .line 413
    iget-object v12, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    .line 414
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v13

    .line 401
    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)V

    return-object v0
.end method

.method public final confirm(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->confirm:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final mandate_data(Lcom/stripe/proto/api/rest/Mandate;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final on_behalf_of(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->on_behalf_of:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_options(Lcom/stripe/proto/model/rest/PaymentMethodOptions;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    return-object p0
.end method

.method public final payment_method_types(Ljava/util/List;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;"
        }
    .end annotation

    const-string v0, "payment_method_types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 349
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method_types:Ljava/util/List;

    return-object p0
.end method

.method public final return_url(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->return_url:Ljava/lang/String;

    return-object p0
.end method

.method public final single_use(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    return-object p0
.end method

.method public final usage(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->usage:Ljava/lang/String;

    return-object p0
.end method
