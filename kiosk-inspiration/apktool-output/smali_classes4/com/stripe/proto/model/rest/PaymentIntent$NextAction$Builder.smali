.class public final Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;",
        "()V",
        "redirect_to_url",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;",
        "type",
        "",
        "use_stripe_sdk",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;",
        "wechat_pay_display_qr_code",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
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
.field public redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

.field public type:Ljava/lang/String;

.field public use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

.field public wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1748
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->build()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;
    .locals 6

    .line 1783
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    .line 1784
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->type:Ljava/lang/String;

    .line 1785
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    .line 1786
    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    .line 1787
    iget-object v4, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    .line 1788
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 1783
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;)V

    return-object v0
.end method

.method public final redirect_to_url(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;
    .locals 0

    .line 1778
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    const/4 p1, 0x0

    .line 1779
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;
    .locals 0

    .line 1762
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final use_stripe_sdk(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;
    .locals 0

    .line 1767
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    return-object p0
.end method

.method public final wechat_pay_display_qr_code(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;
    .locals 0

    .line 1772
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    const/4 p1, 0x0

    .line 1773
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    return-object p0
.end method
