.class public final Lcom/stripe/currency/AmountKt;
.super Ljava/lang/Object;
.source "Amount.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "QUICK_EMV_AMOUNT",
        "Lcom/stripe/currency/Amount;",
        "getQUICK_EMV_AMOUNT",
        "()Lcom/stripe/currency/Amount;",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final QUICK_EMV_AMOUNT:Lcom/stripe/currency/Amount;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/stripe/currency/Amount;

    const-wide/16 v1, 0x1389

    sget-object v3, Lcom/stripe/currency/CurrencyCode;->USD:Lcom/stripe/currency/CurrencyCode;

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    sput-object v0, Lcom/stripe/currency/AmountKt;->QUICK_EMV_AMOUNT:Lcom/stripe/currency/Amount;

    return-void
.end method

.method public static final getQUICK_EMV_AMOUNT()Lcom/stripe/currency/Amount;
    .locals 1

    .line 41
    sget-object v0, Lcom/stripe/currency/AmountKt;->QUICK_EMV_AMOUNT:Lcom/stripe/currency/Amount;

    return-object v0
.end method
