.class public final Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ObservableProperty<",
        "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 PaymentCollectionCoordinatorWrapper.kt\ncom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper\n*L\n1#1,73:1\n101#2,6:74\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J)\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/properties/Delegates$observable$1",
        "Lkotlin/properties/ObservableProperty;",
        "afterChange",
        "",
        "property",
        "Lkotlin/reflect/KProperty;",
        "oldValue",
        "newValue",
        "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V",
        "kotlin-stdlib"
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;)V
    .locals 0

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$special$$inlined$observable$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    .line 33
    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
            "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Lcom/stripe/paymentcollection/PaymentCollectionListener;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionListener;

    if-eqz p3, :cond_0

    .line 75
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$special$$inlined$observable$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->access$getPaymentCollectionCoordinator$p(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->initReaderContext(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V

    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$special$$inlined$observable$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->access$getPaymentCollectionCoordinator$p(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->clearReaderContext()V

    return-void
.end method
