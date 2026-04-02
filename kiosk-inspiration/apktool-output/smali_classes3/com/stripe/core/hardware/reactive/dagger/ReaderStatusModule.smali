.class public final Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;
.super Ljava/lang/Object;
.source "ReaderStatusModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderStatusModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderStatusModule.kt\ncom/stripe/core/hardware/reactive/dagger/ReaderStatusModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,37:1\n16#2:38\n*S KotlinDebug\n*F\n+ 1 ReaderStatusModule.kt\ncom/stripe/core/hardware/reactive/dagger/ReaderStatusModule\n*L\n24#1:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;",
        "",
        "()V",
        "provideReactiveReaderStatusListener",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "Bindings",
        "hardware-reactive_release"
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideReactiveReaderStatusListener(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "loggerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    .line 38
    const-class v1, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method
