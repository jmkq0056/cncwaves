.class public final Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;
.super Ljava/lang/Object;
.source "GatorEventDispatcher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/gator/GatorEventDispatcher;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;->ioProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;->gatorApiProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;
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
            ">;)",
            "Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/gator/GatorEventDispatcher;
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
            ">;)",
            "Lcom/stripe/jvmcore/gator/GatorEventDispatcher;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/stripe/jvmcore/gator/GatorEventDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/jvmcore/gator/GatorEventDispatcher;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/gator/GatorEventDispatcher;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;->gatorApiProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;->newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/gator/GatorEventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;->get()Lcom/stripe/jvmcore/gator/GatorEventDispatcher;

    move-result-object v0

    return-object v0
.end method
