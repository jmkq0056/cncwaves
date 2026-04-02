.class public final Lcom/stripe/paymentcollection/manualentry/ManualEntryDataKt;
.super Ljava/lang/Object;
.source "ManualEntryData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000*\"\u0010\u0002\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "UNKNOWN_AMOUNT",
        "Lcom/stripe/currency/Amount;",
        "ManualEntryResultListener",
        "Lkotlin/Function1;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
        "",
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
.field private static final UNKNOWN_AMOUNT:Lcom/stripe/currency/Amount;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/stripe/currency/Amount;

    const-wide/16 v1, 0x0

    sget-object v3, Lcom/stripe/currency/CurrencyCode;->USD:Lcom/stripe/currency/CurrencyCode;

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryDataKt;->UNKNOWN_AMOUNT:Lcom/stripe/currency/Amount;

    return-void
.end method

.method public static final synthetic access$getUNKNOWN_AMOUNT$p()Lcom/stripe/currency/Amount;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryDataKt;->UNKNOWN_AMOUNT:Lcom/stripe/currency/Amount;

    return-object v0
.end method
