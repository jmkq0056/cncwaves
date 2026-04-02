.class public final Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;
.super Lcom/stripe/core/transaction/TransactionStateSummary;
.source "TransactionStateSummary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/TransactionStateSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicCurrencyConversionSelection"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;",
        "Lcom/stripe/core/transaction/TransactionStateSummary;",
        "model",
        "Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;",
        "(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;)V",
        "getModel",
        "()Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;",
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
.field private final model:Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;


# direct methods
.method public constructor <init>(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lcom/stripe/core/transaction/TransactionStateSummary;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;->model:Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;ILjava/lang/Object;)Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;->model:Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;->copy(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;)Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;->model:Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    return-object v0
.end method

.method public final copy(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;)Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;

    invoke-direct {v0, p1}, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;-><init>(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;->model:Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    iget-object p1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;->model:Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getModel()Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;->model:Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;->model:Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    invoke-virtual {v0}, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicCurrencyConversionSelection(model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;->model:Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
