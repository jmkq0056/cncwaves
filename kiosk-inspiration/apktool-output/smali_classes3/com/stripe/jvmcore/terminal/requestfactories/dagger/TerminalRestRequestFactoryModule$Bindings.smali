.class public interface abstract Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule$Bindings;
.super Ljava/lang/Object;
.source "TerminalRestRequestFactoryModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\'J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000e\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule$Bindings;",
        "",
        "bindPaymentApiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
        "defaultPaymentIntentRestApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;",
        "bindRefundRestApiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;",
        "defaultRefundApiRestRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;",
        "bindSetupIntentApiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
        "defaultSetupIntentRestApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;",
        "terminal-requestfactories"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract bindPaymentApiRequestFactory(Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindRefundRestApiRequestFactory(Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindSetupIntentApiRequestFactory(Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
