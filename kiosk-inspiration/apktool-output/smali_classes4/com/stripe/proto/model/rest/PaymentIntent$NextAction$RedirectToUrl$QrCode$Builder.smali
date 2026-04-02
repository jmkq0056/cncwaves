.class public final Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;",
        "()V",
        "expires_at",
        "",
        "Ljava/lang/Long;",
        "image_url_png",
        "",
        "image_url_svg",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;",
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
.field public expires_at:Ljava/lang/Long;

.field public image_url_png:Ljava/lang/String;

.field public image_url_svg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2342
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 2342
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;->build()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;
    .locals 5

    .line 2367
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;

    .line 2368
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;->expires_at:Ljava/lang/Long;

    .line 2369
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;->image_url_png:Ljava/lang/String;

    .line 2370
    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;->image_url_svg:Ljava/lang/String;

    .line 2371
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 2367
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final expires_at(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;
    .locals 0

    .line 2353
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;->expires_at:Ljava/lang/Long;

    return-object p0
.end method

.method public final image_url_png(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;
    .locals 0

    .line 2358
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;->image_url_png:Ljava/lang/String;

    return-object p0
.end method

.method public final image_url_svg(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;
    .locals 0

    .line 2363
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl$QrCode$Builder;->image_url_svg:Ljava/lang/String;

    return-object p0
.end method
