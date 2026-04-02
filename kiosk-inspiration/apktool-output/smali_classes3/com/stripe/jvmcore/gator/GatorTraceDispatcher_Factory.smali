.class public final Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;
.super Ljava/lang/Object;
.source "GatorTraceDispatcher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final gatorApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/api/gator/GatorApi;",
            ">;"
        }
    .end annotation
.end field

.field private final gatorUploaderOutOfMemoryLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;",
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

.field private final isNetworkAvailableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/api/gator/GatorApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->ioProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->gatorApiProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->gatorUploaderOutOfMemoryLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/api/gator/GatorApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;",
            ">;)",
            "Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ljavax/inject/Provider;Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;)Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ldagger/Lazy<",
            "Lcom/stripe/proto/api/gator/GatorApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;",
            ")",
            "Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ljavax/inject/Provider;Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->gatorApiProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->gatorUploaderOutOfMemoryLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ljavax/inject/Provider;Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;)Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->get()Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;

    move-result-object v0

    return-object v0
.end method
