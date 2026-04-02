.class public final Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdatePaymentIntentPaymentMethodOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;",
        "()V",
        "dynamic_currency_conversion_selected",
        "",
        "Ljava/lang/Boolean;",
        "request_dynamic_currency_conversion",
        "",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;",
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
.field public dynamic_currency_conversion_selected:Ljava/lang/Boolean;

.field public request_dynamic_currency_conversion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;->build()Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;
    .locals 4

    .line 222
    new-instance v0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;

    .line 223
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;->request_dynamic_currency_conversion:Ljava/lang/String;

    .line 224
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;->dynamic_currency_conversion_selected:Ljava/lang/Boolean;

    .line 225
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 222
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final dynamic_currency_conversion_selected(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;->dynamic_currency_conversion_selected:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final request_dynamic_currency_conversion(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;->request_dynamic_currency_conversion:Ljava/lang/String;

    return-object p0
.end method
