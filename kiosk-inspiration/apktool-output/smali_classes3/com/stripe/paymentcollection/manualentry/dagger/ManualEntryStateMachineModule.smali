.class public final Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;
.super Ljava/lang/Object;
.source "ManualEntryStateMachineModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManualEntryStateMachineModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualEntryStateMachineModule.kt\ncom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule\n+ 2 Logger.kt\ncom/stripe/paymentcollection/log/LoggerKt\n*L\n1#1,153:1\n17#2:154\n17#2:155\n17#2:156\n17#2:157\n17#2:158\n17#2:159\n17#2:160\n17#2:161\n17#2:162\n*S KotlinDebug\n*F\n+ 1 ManualEntryStateMachineModule.kt\ncom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule\n*L\n47#1:154\n60#1:155\n73#1:156\n86#1:157\n98#1:158\n110#1:159\n123#1:160\n136#1:161\n149#1:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007JX\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010!\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\"\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;",
        "",
        "()V",
        "providesConfigureReaderHandler",
        "Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;",
        "paymentCollectionEventDelegate",
        "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "loggerFactory",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
        "providesConfirmDetailsHandler",
        "Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;",
        "providesCvvEntryHandler",
        "Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;",
        "providesEmptyHandler",
        "Lcom/stripe/paymentcollection/manualentry/EmptyHandler;",
        "providesExpiryDateEntryHandler",
        "Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;",
        "providesFinishedHandler",
        "Lcom/stripe/paymentcollection/manualentry/FinishedHandler;",
        "providesManualEntryStateMachine",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
        "emptyHandler",
        "configureReaderHandler",
        "zipCodeHandler",
        "Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;",
        "confirmDetailsHandler",
        "panEntryHandler",
        "Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;",
        "expiryDateEntryHandler",
        "cvvEntryHandler",
        "finishedHandler",
        "manualEntryLogger",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;",
        "providesPanEntryHandler",
        "providesZipCodeHandler",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;-><init>()V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;->INSTANCE:Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providesConfigureReaderHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "paymentCollectionEventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;

    .line 156
    const-class v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p2

    .line 70
    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v0
.end method

.method public final providesConfirmDetailsHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "paymentCollectionEventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;

    .line 161
    const-class v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p2

    .line 133
    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v0
.end method

.method public final providesCvvEntryHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "paymentCollectionEventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;

    .line 159
    const-class v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p2

    .line 107
    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v0
.end method

.method public final providesEmptyHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/EmptyHandler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "paymentCollectionEventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/EmptyHandler;

    .line 155
    const-class v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p2

    .line 57
    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/EmptyHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v0
.end method

.method public final providesExpiryDateEntryHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "paymentCollectionEventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;

    .line 158
    const-class v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p2

    .line 95
    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v0
.end method

.method public final providesFinishedHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/FinishedHandler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "paymentCollectionEventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/FinishedHandler;

    .line 162
    const-class v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p2

    .line 146
    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/FinishedHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v0
.end method

.method public final providesManualEntryStateMachine(Lcom/stripe/paymentcollection/manualentry/EmptyHandler;Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;Lcom/stripe/paymentcollection/manualentry/FinishedHandler;Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;
    .locals 13
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object/from16 v0, p10

    const-string v1, "emptyHandler"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configureReaderHandler"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zipCodeHandler"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "confirmDetailsHandler"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "panEntryHandler"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "expiryDateEntryHandler"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cvvEntryHandler"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "finishedHandler"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "manualEntryLogger"

    move-object/from16 v11, p9

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    .line 154
    const-class v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v12

    move-object v3, p1

    move-object v4, p2

    .line 37
    invoke-direct/range {v2 .. v12}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;-><init>(Lcom/stripe/paymentcollection/manualentry/EmptyHandler;Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;Lcom/stripe/paymentcollection/manualentry/FinishedHandler;Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v2
.end method

.method public final providesPanEntryHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "paymentCollectionEventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;

    .line 157
    const-class v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p2

    .line 83
    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v0
.end method

.method public final providesZipCodeHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "paymentCollectionEventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;

    .line 160
    const-class v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p2

    .line 120
    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v0
.end method
