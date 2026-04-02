.class public final Lcom/stripe/core/schedulers/dagger/SchedulersModule;
.super Ljava/lang/Object;
.source "SchedulersModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/core/schedulers/dagger/SchedulersModule;",
        "",
        "()V",
        "provideMainDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "schedulers_release"
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
.field public static final INSTANCE:Lcom/stripe/core/schedulers/dagger/SchedulersModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/schedulers/dagger/SchedulersModule;

    invoke-direct {v0}, Lcom/stripe/core/schedulers/dagger/SchedulersModule;-><init>()V

    sput-object v0, Lcom/stripe/core/schedulers/dagger/SchedulersModule;->INSTANCE:Lcom/stripe/core/schedulers/dagger/SchedulersModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideMainDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Main;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 25
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method
