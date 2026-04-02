.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;
.super Ljava/lang/Object;
.source "JvmCoreLogModule_ProvideApplicationTraceHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;
    .locals 1

    .line 35
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideApplicationTraceHelper()Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->provideApplicationTraceHelper()Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;->provideApplicationTraceHelper()Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;->get()Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    move-result-object v0

    return-object v0
.end method
