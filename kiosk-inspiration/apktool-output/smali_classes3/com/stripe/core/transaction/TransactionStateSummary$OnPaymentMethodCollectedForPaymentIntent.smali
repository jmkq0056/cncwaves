.class public final Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;
.super Lcom/stripe/core/transaction/TransactionStateSummary;
.source "TransactionStateSummary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/TransactionStateSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnPaymentMethodCollectedForPaymentIntent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;",
        "Lcom/stripe/core/transaction/TransactionStateSummary;",
        "merchantUiIntent",
        "Landroid/content/Intent;",
        "(Landroid/content/Intent;)V",
        "getMerchantUiIntent",
        "()Landroid/content/Intent;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "transaction_release"
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
.field private final merchantUiIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcom/stripe/core/transaction/TransactionStateSummary;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;->merchantUiIntent:Landroid/content/Intent;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;Landroid/content/Intent;ILjava/lang/Object;)Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;->merchantUiIntent:Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;->copy(Landroid/content/Intent;)Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;->merchantUiIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final copy(Landroid/content/Intent;)Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;
    .locals 1

    new-instance v0, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;

    invoke-direct {v0, p1}, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;->merchantUiIntent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;->merchantUiIntent:Landroid/content/Intent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMerchantUiIntent()Landroid/content/Intent;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;->merchantUiIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;->merchantUiIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnPaymentMethodCollectedForPaymentIntent(merchantUiIntent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;->merchantUiIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
