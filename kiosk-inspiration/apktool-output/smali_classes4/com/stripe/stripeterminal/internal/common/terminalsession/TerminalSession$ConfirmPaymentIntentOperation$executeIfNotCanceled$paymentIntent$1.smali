.class final synthetic Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "TerminalSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->executeIfNotCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/transaction/CollectiblePayment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/stripe/stripeterminal/internal/common/Adapter;

    const-string v5, "collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v4, "collectiblePayment"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    .line 2759
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2759
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$1;->invoke()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v0

    return-object v0
.end method
