.class public final Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;
.super Ljava/lang/Object;
.source "StructuredEventLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule$Bindings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;",
        "",
        "()V",
        "provideObservabilityDataStructuredEventLogger",
        "Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;",
        "observabilityDataBatchDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "baseSearchIndicesProvider",
        "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
        "provideObservabilityDataStructuredEventLogger$logging",
        "Bindings",
        "logging"
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
.method public final provideObservabilityDataStructuredEventLogger$logging(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;)Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
            ")",
            "Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "observabilityDataBatchDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseSearchIndicesProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;-><init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;)V

    return-object v0
.end method
