.class public final Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "Lcom/stripe/proto/model/rest/PaymentMethod$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\tJ\u0015\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u001bJ\u001a\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u001e\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentMethod$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "()V",
        "affirm",
        "Lcom/stripe/proto/model/rest/Affirm;",
        "card",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod;",
        "card_present",
        "Lcom/stripe/proto/model/rest/CardPresent;",
        "created",
        "",
        "Ljava/lang/Long;",
        "customer",
        "",
        "id",
        "interac_present",
        "livemode",
        "",
        "Ljava/lang/Boolean;",
        "metadata",
        "",
        "type",
        "wechat_pay",
        "Lcom/stripe/proto/model/rest/WechatPay;",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;",
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

.field public card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

.field public card_present:Lcom/stripe/proto/model/rest/CardPresent;

.field public created:Ljava/lang/Long;

.field public customer:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public interac_present:Lcom/stripe/proto/model/rest/CardPresent;

.field public livemode:Ljava/lang/Boolean;

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

.field public type:Ljava/lang/String;

.field public wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 257
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final affirm(Lcom/stripe/proto/model/rest/Affirm;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    const/4 p1, 0x0

    .line 375
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    .line 376
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 377
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 378
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->build()Lcom/stripe/proto/model/rest/PaymentMethod;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentMethod;
    .locals 13

    .line 382
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 383
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->id:Ljava/lang/String;

    .line 384
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->created:Ljava/lang/Long;

    .line 385
    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->customer:Ljava/lang/String;

    .line 386
    iget-object v4, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->livemode:Ljava/lang/Boolean;

    .line 387
    iget-object v5, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->metadata:Ljava/util/Map;

    .line 388
    iget-object v6, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->type:Ljava/lang/String;

    .line 389
    iget-object v7, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    .line 390
    iget-object v8, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 391
    iget-object v9, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 392
    iget-object v10, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 393
    iget-object v11, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    .line 394
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 382
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/rest/PaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card(Lcom/stripe/proto/model/rest/CardPaymentMethod;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    const/4 p1, 0x0

    .line 327
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 328
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 329
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 330
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    return-object p0
.end method

.method public final card_present(Lcom/stripe/proto/model/rest/CardPresent;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    const/4 p1, 0x0

    .line 339
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    .line 340
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 341
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 342
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    return-object p0
.end method

.method public final created(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->created:Ljava/lang/Long;

    return-object p0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final interac_present(Lcom/stripe/proto/model/rest/CardPresent;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    const/4 p1, 0x0

    .line 351
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    .line 352
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 353
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 354
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/PaymentMethod$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final wechat_pay(Lcom/stripe/proto/model/rest/WechatPay;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    .line 364
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 365
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 366
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    return-object p0
.end method
