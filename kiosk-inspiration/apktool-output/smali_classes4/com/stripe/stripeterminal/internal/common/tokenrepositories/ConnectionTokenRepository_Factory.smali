.class public final Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;
.super Ljava/lang/Object;
.source "ConnectionTokenRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final epochProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
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
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;->tokenProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;->epochProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/ExecutorService;)Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;-><init>(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;->tokenProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;->epochProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;->newInstance(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/ExecutorService;)Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;->get()Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    move-result-object v0

    return-object v0
.end method
