.class public final Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Long;",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge$Builder;",
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
.field public amount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1582
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge$Builder;
    .locals 0

    .line 1590
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1582
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge$Builder;->build()Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge;
    .locals 3

    .line 1594
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge;

    .line 1595
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge$Builder;->amount:Ljava/lang/Long;

    .line 1596
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 1594
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge;-><init>(Ljava/lang/Long;Lokio/ByteString;)V

    return-object v0
.end method
