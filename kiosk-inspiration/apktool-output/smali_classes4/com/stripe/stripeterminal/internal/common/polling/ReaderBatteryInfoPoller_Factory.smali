.class public final Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;
.super Ljava/lang/Object;
.source "ReaderBatteryInfoPoller_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final ioProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;->ioProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;
    .locals 1

    .line 54
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/time/Clock;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;->newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;->get()Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

    move-result-object v0

    return-object v0
.end method
