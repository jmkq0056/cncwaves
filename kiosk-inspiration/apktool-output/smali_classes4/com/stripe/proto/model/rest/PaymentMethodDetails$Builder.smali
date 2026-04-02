.class public final Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentMethodDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentMethodDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
        "()V",
        "affirm",
        "Lcom/stripe/proto/model/rest/Affirm;",
        "card",
        "Lcom/stripe/proto/model/rest/Card;",
        "card_present",
        "Lcom/stripe/proto/model/rest/CardPresent;",
        "interac_present",
        "type",
        "",
        "wechat_pay",
        "Lcom/stripe/proto/model/rest/WechatPay;",
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
.field public affirm:Lcom/stripe/proto/model/rest/Affirm;

.field public card:Lcom/stripe/proto/model/rest/Card;

.field public card_present:Lcom/stripe/proto/model/rest/CardPresent;

.field public interac_present:Lcom/stripe/proto/model/rest/CardPresent;

.field public type:Ljava/lang/String;

.field public wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final affirm(Lcom/stripe/proto/model/rest/Affirm;)Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 219
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 220
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card:Lcom/stripe/proto/model/rest/Card;

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->build()Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentMethodDetails;
    .locals 8

    .line 225
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    .line 226
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->type:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 228
    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 229
    iget-object v4, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card:Lcom/stripe/proto/model/rest/Card;

    .line 230
    iget-object v5, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 231
    iget-object v6, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    .line 232
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 225
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card(Lcom/stripe/proto/model/rest/Card;)Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card:Lcom/stripe/proto/model/rest/Card;

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 201
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 202
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 203
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    return-object p0
.end method

.method public final card_present(Lcom/stripe/proto/model/rest/CardPresent;)Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 183
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card:Lcom/stripe/proto/model/rest/Card;

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    return-object p0
.end method

.method public final interac_present(Lcom/stripe/proto/model/rest/CardPresent;)Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 192
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card:Lcom/stripe/proto/model/rest/Card;

    .line 193
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final wechat_pay(Lcom/stripe/proto/model/rest/WechatPay;)Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 210
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 211
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card:Lcom/stripe/proto/model/rest/Card;

    .line 212
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    return-object p0
.end method
