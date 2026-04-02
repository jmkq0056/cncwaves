.class public final Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;",
        "()V",
        "qr_code",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;",
        "return_url",
        "",
        "url",
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
.field public qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;

.field public return_url:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2170
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 2170
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;->build()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;
    .locals 5

    .line 2195
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    .line 2196
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;->url:Ljava/lang/String;

    .line 2197
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;->return_url:Ljava/lang/String;

    .line 2198
    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;->qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;

    .line 2199
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 2195
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;Lokio/ByteString;)V

    return-object v0
.end method

.method public final qr_code(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;
    .locals 0

    .line 2191
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;->qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;

    return-object p0
.end method

.method public final return_url(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;
    .locals 0

    .line 2186
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;->return_url:Ljava/lang/String;

    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;
    .locals 0

    .line 2181
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
