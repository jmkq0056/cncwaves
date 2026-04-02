.class public final Lcom/stripe/stripeterminal/dagger/AdapterModule;
.super Ljava/lang/Object;
.source "AdapterModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdapterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdapterModule.kt\ncom/stripe/stripeterminal/dagger/AdapterModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,32:1\n16#2:33\n*S KotlinDebug\n*F\n+ 1 AdapterModule.kt\ncom/stripe/stripeterminal/dagger/AdapterModule\n*L\n28#1:33\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/AdapterModule;",
        "",
        "()V",
        "provideDisconnectReasonRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideSimulatorConfigurationRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        "sdkmanager_publish"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/dagger/AdapterModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/dagger/AdapterModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/AdapterModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/AdapterModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/AdapterModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideDisconnectReasonRepository(Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    .line 33
    const-class v1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p2

    .line 26
    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;-><init>(Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method

.method public final provideSimulatorConfigurationRepository()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 17
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;-><init>()V

    return-object v0
.end method
