.class public final Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;
.super Ljava/lang/Object;
.source "HealthLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScopedBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/squareup/wire/Message<",
        "TS;TSB;>;SB:",
        "Lcom/squareup/wire/Message$Builder<",
        "TS;TSB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u0000*\u0014\u0008\u0002\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\u0008\u0003\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00042\u00020\u0005BP\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00030\u0007\u0012-\u0010\t\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000b0\nj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002`\u000c\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0010J\u0008\u0010\u0011\u001a\u00020\u000bH\u0002R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R5\u0010\t\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000b0\nj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002`\u000c\u00a2\u0006\u0002\u0008\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;",
        "S",
        "Lcom/squareup/wire/Message;",
        "SB",
        "Lcom/squareup/wire/Message$Builder;",
        "",
        "scopeClass",
        "Ljava/lang/Class;",
        "scopeBuilderClass",
        "scopeSetter",
        "Lkotlin/Function2;",
        "",
        "Lcom/stripe/jvmcore/logging/ScopeSetter;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V",
        "build",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "validate",
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


# instance fields
.field private final scopeBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TSB;>;"
        }
    .end annotation
.end field

.field private final scopeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final scopeSetter:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TDB;TS;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder<",
            "TD;TDB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/Class<",
            "TSB;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TDB;-TS;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scopeClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeBuilderClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeSetter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->scopeClass:Ljava/lang/Class;

    .line 466
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->scopeBuilderClass:Ljava/lang/Class;

    .line 467
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->scopeSetter:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private final validate()V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    iget-object v0, v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->access$isDebug$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    sget-object v0, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    .line 492
    sget-object v1, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->properties(Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 493
    const-string v2, "domain"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->withOneOf(Lkotlin/sequences/Sequence;Ljava/lang/String;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 494
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HealthMetric must have a protobuf oneof named domain"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    iget-object v0, v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->access$isDebug$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    sget-object v0, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    .line 501
    sget-object v1, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    invoke-static {v2}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->access$getDomainClass$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->properties(Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 502
    const-string v2, "scope"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->withOneOf(Lkotlin/sequences/Sequence;Ljava/lang/String;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 503
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 500
    :goto_2
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    if-eqz v0, :cond_6

    .line 510
    iget-object v0, v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->access$isDebug$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 511
    sget-object v0, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    .line 510
    sget-object v1, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->scopeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->properties(Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 511
    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->withOneOf(Lkotlin/sequences/Sequence;Ljava/lang/String;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 512
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_3

    .line 514
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->scopeClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must have a protobuf oneof named event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    return-void

    .line 505
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->access$getDomainClass$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must have a protobuf oneof named scope"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final build()Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "TD;TDB;TS;TSB;>;"
        }
    .end annotation

    .line 474
    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->validate()V

    .line 475
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 476
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    invoke-static {v1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->access$getDomainClass$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;)Ljava/lang/Class;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    invoke-static {v2}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->access$getDomainBuilderClass$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;)Ljava/lang/Class;

    move-result-object v2

    .line 478
    iget-object v3, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    invoke-static {v3}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->access$getDomainSetter$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;)Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .line 479
    iget-object v4, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->scopeClass:Ljava/lang/Class;

    .line 480
    iget-object v5, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->scopeBuilderClass:Ljava/lang/Class;

    .line 481
    iget-object v6, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->scopeSetter:Lkotlin/jvm/functions/Function2;

    .line 482
    iget-object v7, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    iget-object v7, v7, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v7}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->access$getMetricLogger$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/loggingmodels/MetricLogger;

    move-result-object v7

    .line 483
    iget-object v8, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    iget-object v8, v8, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v8}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->access$isDebug$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Z

    move-result v8

    .line 484
    iget-object v9, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    iget-object v9, v9, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v9}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->access$getListeners$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;->getHealthMetricListeners()Ljava/util/List;

    move-result-object v9

    .line 485
    iget-object v10, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    iget-object v10, v10, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v10}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->access$getLogWriter$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v10

    .line 475
    invoke-direct/range {v0 .. v10}, Lcom/stripe/jvmcore/logging/HealthLogger;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Lcom/stripe/loggingmodels/MetricLogger;ZLjava/util/List;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method
