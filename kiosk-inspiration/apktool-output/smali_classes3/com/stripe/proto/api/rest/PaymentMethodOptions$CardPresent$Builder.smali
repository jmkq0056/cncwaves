.class public final Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentMethodOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;",
        "()V",
        "capture_method",
        "",
        "dynamic_currency_conversion_selected",
        "",
        "Ljava/lang/Boolean;",
        "request_extended_authorization",
        "request_incremental_authorization_support",
        "request_partial_authorization",
        "routing",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;",
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
.field public capture_method:Ljava/lang/String;

.field public dynamic_currency_conversion_selected:Ljava/lang/Boolean;

.field public request_extended_authorization:Ljava/lang/Boolean;

.field public request_incremental_authorization_support:Ljava/lang/Boolean;

.field public request_partial_authorization:Ljava/lang/String;

.field public routing:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->build()Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;
    .locals 8

    .line 398
    new-instance v0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    .line 399
    iget-object v1, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->request_extended_authorization:Ljava/lang/Boolean;

    .line 400
    iget-object v2, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    .line 401
    iget-object v3, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->capture_method:Ljava/lang/String;

    .line 402
    iget-object v4, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->routing:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;

    .line 403
    iget-object v5, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->dynamic_currency_conversion_selected:Ljava/lang/Boolean;

    .line 404
    iget-object v6, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->request_partial_authorization:Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 398
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final capture_method(Ljava/lang/String;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->capture_method:Ljava/lang/String;

    return-object p0
.end method

.method public final dynamic_currency_conversion_selected(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->dynamic_currency_conversion_selected:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final request_extended_authorization(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->request_extended_authorization:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final request_incremental_authorization_support(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final request_partial_authorization(Ljava/lang/String;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->request_partial_authorization:Ljava/lang/String;

    return-object p0
.end method

.method public final routing(Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->routing:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;

    return-object p0
.end method
