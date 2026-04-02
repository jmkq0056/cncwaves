.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule$Bindings;
.super Ljava/lang/Object;
.source "LoggerExceptionListenerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u0008a\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0013\u0010\u0008\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\n0\tH\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000b\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule$Bindings;",
        "",
        "bindAsListener",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "impl",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;",
        "bindAsRegistry",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerExceptionListenerRegistry;",
        "provideLoggerExceptionListeners",
        "",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "wiring"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract bindAsListener(Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;)Lcom/stripe/loggingmodels/LoggerExceptionListener;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindAsRegistry(Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;)Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerExceptionListenerRegistry;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideLoggerExceptionListeners()Ljava/util/Set;
    .annotation runtime Ldagger/multibindings/Multibinds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;"
        }
    .end annotation
.end method
