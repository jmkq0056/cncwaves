.class public final Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;
.super Ljava/lang/Object;
.source "DeviceListenerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$Bindings;,
        Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$EncryptionHandler;,
        Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$MissingKeyHandler;,
        Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$ObservabilityHandler;,
        Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$ReaderStatusHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceListenerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceListenerModule.kt\ncom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,74:1\n16#2:75\n*S KotlinDebug\n*F\n+ 1 DeviceListenerModule.kt\ncom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule\n*L\n47#1:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0005\u0011\u0012\u0013\u0014\u0015B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008\u000cJ\u0018\u0010\r\u001a\r\u0012\t\u0012\u00070\u0006\u00a2\u0006\u0002\u0008\u000f0\u000eH\u0001\u00a2\u0006\u0002\u0008\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;",
        "",
        "()V",
        "provideListenerRegistry",
        "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;",
        "encryptionHandler",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "observabilityHandler",
        "missingKeyHandler",
        "readerStatusHandler",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideListenerRegistry$hardware_release",
        "providesDeviceListenerSet",
        "",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "providesDeviceListenerSet$hardware_release",
        "Bindings",
        "EncryptionHandler",
        "MissingKeyHandler",
        "ObservabilityHandler",
        "ReaderStatusHandler",
        "hardware_release"
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
.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideListenerRegistry$hardware_release(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;
    .locals 7
    .param p1    # Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
        .annotation runtime Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$EncryptionHandler;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
        .annotation runtime Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$ObservabilityHandler;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
        .annotation runtime Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$MissingKeyHandler;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
        .annotation runtime Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$ReaderStatusHandler;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "encryptionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observabilityHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingKeyHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;

    .line 75
    const-class v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 42
    invoke-direct/range {v1 .. v6}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;-><init>(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v1
.end method

.method public final providesDeviceListenerSet$hardware_release()Ljava/util/Set;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/ElementsIntoSet;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
