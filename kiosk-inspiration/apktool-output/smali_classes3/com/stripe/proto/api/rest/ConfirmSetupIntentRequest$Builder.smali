.class public final Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u001a\u0010\u000c\u001a\u00020\u00002\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
        "()V",
        "expand",
        "",
        "",
        "id",
        "mandate_data",
        "Lcom/stripe/proto/api/rest/Mandate;",
        "payment_method_data",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "payment_method_options",
        "",
        "return_url",
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

.field public mandate_data:Lcom/stripe/proto/api/rest/Mandate;

.field public payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

.field public payment_method_options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public return_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 174
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->expand:Ljava/util/List;

    .line 183
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->payment_method_options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->build()Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;
    .locals 8

    .line 240
    new-instance v0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    .line 241
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->expand:Ljava/util/List;

    .line 242
    iget-object v2, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 243
    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    .line 244
    iget-object v4, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->payment_method_options:Ljava/util/Map;

    .line 245
    iget-object v5, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->return_url:Ljava/lang/String;

    .line 246
    iget-object v6, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->id:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 240
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final expand(Ljava/util/List;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->expand:Ljava/util/List;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final mandate_data(Lcom/stripe/proto/api/rest/Mandate;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    return-object p0
.end method

.method public final payment_method_data(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    return-object p0
.end method

.method public final payment_method_options(Ljava/util/Map;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;"
        }
    .end annotation

    const-string v0, "payment_method_options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->payment_method_options:Ljava/util/Map;

    return-object p0
.end method

.method public final return_url(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;->return_url:Ljava/lang/String;

    return-object p0
.end method
