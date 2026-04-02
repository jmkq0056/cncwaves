.class public final Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;
.super Ljava/lang/Object;
.source "ReaderInfoModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderInfoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderInfoModule.kt\ncom/stripe/core/hardware/reactive/dagger/ReaderInfoModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,32:1\n16#2:33\n*S KotlinDebug\n*F\n+ 1 ReaderInfoModule.kt\ncom/stripe/core/hardware/reactive/dagger/ReaderInfoModule\n*L\n29#1:33\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;",
        "",
        "()V",
        "provideReaderInfoRepository",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "readerInfoHandler",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;

    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;-><init>()V

    sput-object v0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;->INSTANCE:Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideReaderInfoRepository(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;
    .locals 2
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "appScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "io"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerInfoHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    .line 33
    const-class v1, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p4

    .line 25
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method
