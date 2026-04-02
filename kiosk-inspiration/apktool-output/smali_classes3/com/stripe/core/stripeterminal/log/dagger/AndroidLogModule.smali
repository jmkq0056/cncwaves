.class public final Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;
.super Ljava/lang/Object;
.source "AndroidLogModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;",
        "",
        "()V",
        "provideScheduledExecutorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "stripeterminal_release"
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
.field public static final INSTANCE:Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;

    invoke-direct {v0}, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;-><init>()V

    sput-object v0, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;->INSTANCE:Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadScheduledExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
