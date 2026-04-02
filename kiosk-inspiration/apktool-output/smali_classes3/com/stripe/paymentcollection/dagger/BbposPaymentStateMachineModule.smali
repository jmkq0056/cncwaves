.class public final Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;
.super Ljava/lang/Object;
.source "BbposPaymentStateMachineModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0001\u00a2\u0006\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;",
        "",
        "()V",
        "providePaymentCollectionStateMachine",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
        "eventDelegate",
        "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "eventLoggers",
        "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "paymentCollectionFeatureFlagRepository",
        "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
        "manualEntryStateMachine",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
        "loggerFactory",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
        "providePaymentCollectionStateMachine$wiring",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providePaymentCollectionStateMachine$wiring(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;
    .locals 8
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "eventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventLoggers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentCollectionFeatureFlagRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualEntryStateMachine"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    return-object v1
.end method
