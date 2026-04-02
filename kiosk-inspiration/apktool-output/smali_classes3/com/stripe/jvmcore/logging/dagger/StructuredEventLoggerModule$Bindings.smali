.class public abstract Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule$Bindings;
.super Ljava/lang/Object;
.source "StructuredEventLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!\u00a2\u0006\u0002\u0008\u0007J\u0015\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H!\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule$Bindings;",
        "",
        "()V",
        "bindStructuredEventLogger",
        "Lcom/stripe/loggingmodels/StructuredEventLogger;",
        "observabilityDataStructuredEventLogger",
        "Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;",
        "bindStructuredEventLogger$logging",
        "bindStructuredEventLoggerInitializer",
        "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;",
        "bindStructuredEventLoggerInitializer$logging",
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindStructuredEventLogger$logging(Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;)Lcom/stripe/loggingmodels/StructuredEventLogger;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract bindStructuredEventLoggerInitializer$logging(Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;)Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
