.class public abstract Lcom/stripe/jvmcore/gator/dagger/GatorDispatchersModule;
.super Ljava/lang/Object;
.source "GatorDispatchersModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\n\u001a\u00020\u000bH\'J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\'\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/jvmcore/gator/dagger/GatorDispatchersModule;",
        "",
        "()V",
        "bindEventDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;",
        "Lcom/stripe/proto/api/gator/ProxyEventPb;",
        "gatorEventDispatcher",
        "Lcom/stripe/jvmcore/gator/GatorEventDispatcher;",
        "bindSchemaEventDispatcher",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        "gatorSchemaEventDispatcher",
        "Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;",
        "bindTraceDispatcher",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        "gatorTraceDispatcher",
        "Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;",
        "gator"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindEventDispatcher(Lcom/stripe/jvmcore/gator/GatorEventDispatcher;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
    .end annotation

    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/gator/GatorEventDispatcher;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract bindSchemaEventDispatcher(Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
    .end annotation

    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract bindTraceDispatcher(Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
    .end annotation

    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
