.class public final Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;
.super Ljava/lang/Object;
.source "CommonModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonModule.kt\ncom/stripe/stripeterminal/internal/common/dagger/CommonModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,65:1\n16#2:66\n*S KotlinDebug\n*F\n+ 1 CommonModule.kt\ncom/stripe/stripeterminal/internal/common/dagger/CommonModule\n*L\n45#1:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JP\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J(\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0004H\u0007\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;",
        "",
        "()V",
        "provideApiRequestFactory",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
        "posInfoFactory",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "locationHandler",
        "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "setupIntentRestApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
        "paymentIntentRestApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
        "refundRestApiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "providePaymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "apiClient",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
        "apiRequestFactory",
        "common_publish"
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideApiRequestFactory(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;
    .locals 12
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    move-object/from16 v0, p9

    const-string v1, "posInfoFactory"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "locationHandler"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "statusManager"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settingsRepository"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transactionRepository"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "setupIntentRestApiFactory"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paymentIntentRestApiFactory"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "refundRestApiRequestFactory"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 66
    const-class v1, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 36
    invoke-direct/range {v2 .. v11}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;-><init>(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v2
.end method

.method public final providePaymentIntentUpdater(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiRequestFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;-><init>(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    return-object v0
.end method
