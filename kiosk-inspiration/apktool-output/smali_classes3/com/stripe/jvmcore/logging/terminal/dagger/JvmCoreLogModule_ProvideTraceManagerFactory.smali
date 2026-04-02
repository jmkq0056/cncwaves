.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTraceManagerFactory;
.super Ljava/lang/Object;
.source "JvmCoreLogModule_ProvideTraceManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTraceManagerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
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

.method public static create()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTraceManagerFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTraceManagerFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTraceManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideTraceManager()Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->provideTraceManager()Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTraceManagerFactory;->provideTraceManager()Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTraceManagerFactory;->get()Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    move-result-object v0

    return-object v0
.end method
