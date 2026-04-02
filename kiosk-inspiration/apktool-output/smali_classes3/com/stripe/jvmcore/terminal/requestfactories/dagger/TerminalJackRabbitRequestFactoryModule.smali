.class public final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;
.super Ljava/lang/Object;
.source "TerminalJackRabbitRequestFactoryModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalJackRabbitRequestFactoryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalJackRabbitRequestFactoryModule.kt\ncom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,127:1\n16#2:128\n*S KotlinDebug\n*F\n+ 1 TerminalJackRabbitRequestFactoryModule.kt\ncom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule\n*L\n41#1:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0001)B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J@\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0008\u0010!\u001a\u00020\"H\u0007J\u0008\u0010#\u001a\u00020$H\u0007J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0007\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;",
        "",
        "()V",
        "provideDefaultAccessibilityJackRabbitApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;",
        "provideDefaultActivateJackRabbitApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;",
        "applicationInformationProvider",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideDefaultDiscoveryJackRabbitApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;",
        "provideDefaultJackRabbitApiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;",
        "activateApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;",
        "discoveryApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;",
        "readerDisplayApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;",
        "accessibilityJackRabbitApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;",
        "paymentIntentApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;",
        "setupIntentApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;",
        "refundApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;",
        "provideDefaultPaymentIntentJackRabbitApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;",
        "paymentIntentRestApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
        "provideDefaultReaderDisplayJackRabbitApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory;",
        "provideDefaultRefundJackRabbitApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundJackRabbitApiFactory;",
        "provideDefaultSetupIntentJackRabbitApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;",
        "setupIntentRestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideDefaultAccessibilityJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;-><init>()V

    return-object v0
.end method

.method public final provideDefaultActivateJackRabbitApiFactory(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "applicationInformationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;

    .line 128
    const-class v1, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p2

    .line 39
    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;-><init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method

.method public final provideDefaultDiscoveryJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 32
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;-><init>()V

    return-object v0
.end method

.method public final provideDefaultJackRabbitApiRequestFactory(Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "activateApiFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryApiFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerDisplayApiFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityJackRabbitApiFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentIntentApiFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setupIntentApiFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refundApiFactory"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;-><init>(Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;)V

    return-object v1
.end method

.method public final provideDefaultPaymentIntentJackRabbitApiFactory(Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "paymentIntentRestApiFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;-><init>(Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;)V

    return-object v0
.end method

.method public final provideDefaultReaderDisplayJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory;-><init>()V

    return-object v0
.end method

.method public final provideDefaultRefundJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundJackRabbitApiFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 52
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundJackRabbitApiFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundJackRabbitApiFactory;-><init>()V

    return-object v0
.end method

.method public final provideDefaultSetupIntentJackRabbitApiFactory(Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "setupIntentRestFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;-><init>(Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;)V

    return-object v0
.end method
