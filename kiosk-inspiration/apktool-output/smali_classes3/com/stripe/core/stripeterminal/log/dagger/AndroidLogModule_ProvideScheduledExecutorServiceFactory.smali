.class public final Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;
.super Ljava/lang/Object;
.source "AndroidLogModule_ProvideScheduledExecutorServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory$InstanceHolder;->access$000()Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;->INSTANCE:Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;

    invoke-virtual {v0}, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;->provideScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;->provideScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
