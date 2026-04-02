.class public final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;
.super Ljava/lang/Object;
.source "TerminalRestRequestFactoryModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule$Bindings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;",
        "",
        "()V",
        "provideDefaultRestPaymentApiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;",
        "provideDefaultRestRefundApiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;",
        "provideDefaultRestSetupIntentRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;",
        "Bindings",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideDefaultRestPaymentApiRequestFactory()Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 16
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;-><init>()V

    return-object v0
.end method

.method public final provideDefaultRestRefundApiRequestFactory()Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 22
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;-><init>()V

    return-object v0
.end method

.method public final provideDefaultRestSetupIntentRequestFactory()Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 19
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;-><init>()V

    return-object v0
.end method
