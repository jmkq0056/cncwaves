.class public final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$providePaymentCollectionContextFactory$1;
.super Ljava/lang/Object;
.source "PaymentCollectionModule.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->providePaymentCollectionContextFactory$wiring(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/stripe/paymentcollection/dagger/PaymentCollectionModule$providePaymentCollectionContextFactory$1",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;",
        "create",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;",
        "paymentCollectionListener",
        "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "wiring"
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
.field final synthetic $paymentCollectionStateMachine:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$providePaymentCollectionContextFactory$1;->$paymentCollectionStateMachine:Ljavax/inject/Provider;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;
    .locals 3

    const-string v0, "paymentCollectionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    .line 90
    iget-object v1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$providePaymentCollectionContextFactory$1;->$paymentCollectionStateMachine:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    .line 86
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;)V

    return-object v0
.end method
