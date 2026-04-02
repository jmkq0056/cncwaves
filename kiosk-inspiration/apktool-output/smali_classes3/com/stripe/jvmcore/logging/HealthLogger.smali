.class public final Lcom/stripe/jvmcore/logging/HealthLogger;
.super Ljava/lang/Object;
.source "HealthLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/HealthLogger$Companion;,
        Lcom/stripe/jvmcore/logging/HealthLogger$Domain;,
        Lcom/stripe/jvmcore/logging/HealthLogger$Event;,
        Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;,
        Lcom/stripe/jvmcore/logging/HealthLogger$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/squareup/wire/Message<",
        "TD;TDB;>;DB:",
        "Lcom/squareup/wire/Message$Builder<",
        "TD;TDB;>;S:",
        "Lcom/squareup/wire/Message<",
        "TS;TSB;>;SB:",
        "Lcom/squareup/wire/Message$Builder<",
        "TS;TSB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHealthLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,637:1\n1179#2,2:638\n1253#2,4:640\n1855#2,2:645\n1#3:644\n*S KotlinDebug\n*F\n+ 1 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLogger\n*L\n165#1:638,2\n165#1:640,4\n354#1:645,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d2\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 R*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\u0008\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u00020\u0007:\u0005RSTUVB\u00bd\u0001\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00010\t\u0012\'\u0010\u000b\u001a#\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000e0\u000cj\u0008\u0012\u0004\u0012\u00028\u0000`\u000f\u00a2\u0006\u0002\u0008\u0010\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00020\t\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00030\t\u0012-\u0010\u0013\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002`\u0014\u00a2\u0006\u0002\u0008\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0018\u0012\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0002\u0010\u001eJJ\u0010\u001f\u001a\u00020 \"\u0004\u0008\u0004\u0010!2\u0006\u0010\"\u001a\u0002H!2-\u0010#\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u0002H!\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u0002H!`$\u00a2\u0006\u0002\u0008\u0010H\u0002\u00a2\u0006\u0002\u0010%J<\u0010&\u001a\u00020\u000e2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0008\u0002\u0010)\u001a\u00020*2\u0014\u0008\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/Ja\u00100\u001a\u00020\u000e2\u0008\u0008\u0002\u0010)\u001a\u00020*2\u0014\u0008\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2-\u00101\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u000202`$\u00a2\u0006\u0002\u0008\u0010J\u0010\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u00020-H\u0002J\u0018\u00105\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001062\u0006\u00107\u001a\u00020 H\u0002J\u0017\u00108\u001a\u0004\u0018\u0001092\u0006\u0010:\u001a\u00028\u0002H\u0002\u00a2\u0006\u0002\u0010;J\u001d\u0010<\u001a\n\u0012\u0004\u0012\u00028\u0002\u0018\u00010=2\u0006\u0010>\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010?J]\u0010@\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020-2\u0006\u0010:\u001a\u00020-2\u0006\u0010\"\u001a\u00020-2\u0006\u0010A\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010D2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\u0006\u0010)\u001a\u00020*2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0002\u00a2\u0006\u0002\u0010EJ\u001e\u0010F\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0002\u0018\u00010G2\u0006\u0010H\u001a\u00020 H\u0002Ji\u0010I\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020D2\u0008\u0008\u0002\u0010)\u001a\u00020*2\u0014\u0008\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2-\u0010K\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020L`$\u00a2\u0006\u0002\u0008\u0010Ji\u0010M\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020D2\u0008\u0008\u0002\u0010)\u001a\u00020*2\u0014\u0008\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2-\u0010O\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020P`$\u00a2\u0006\u0002\u0008\u0010JM\u0010Q\u001a\u0004\u0018\u00010(2\u0014\u0008\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2-\u0010O\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020P`$\u00a2\u0006\u0002\u0008\u0010R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u000b\u001a#\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000e0\u000cj\u0008\u0012\u0004\u0012\u00028\u0000`\u000f\u00a2\u0006\u0002\u0008\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R5\u0010\u0013\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002`\u0014\u00a2\u0006\u0002\u0008\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006W"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "D",
        "Lcom/squareup/wire/Message;",
        "DB",
        "Lcom/squareup/wire/Message$Builder;",
        "S",
        "SB",
        "",
        "domainClass",
        "Ljava/lang/Class;",
        "domainBuilderClass",
        "domainSetter",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
        "",
        "Lcom/stripe/jvmcore/logging/DomainSetter;",
        "Lkotlin/ExtensionFunctionType;",
        "scopeClass",
        "scopeBuilderClass",
        "scopeSetter",
        "Lcom/stripe/jvmcore/logging/ScopeSetter;",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "isDebug",
        "",
        "listeners",
        "",
        "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Lcom/stripe/loggingmodels/MetricLogger;ZLjava/util/List;Lcom/stripe/logwriter/LogWriter;)V",
        "buildHealthMetric",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        "T",
        "event",
        "eventSetter",
        "Lcom/stripe/jvmcore/logging/EventSetter;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        "endTimer",
        "pendingTimer",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "outcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "tags",
        "",
        "",
        "cause",
        "",
        "incrementCounter",
        "counterSetter",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "logOrCrash",
        "message",
        "lookupDomain",
        "Lcom/stripe/jvmcore/logging/HealthLogger$Domain;",
        "metric",
        "lookupEvent",
        "Lcom/stripe/jvmcore/logging/HealthLogger$Event;",
        "scope",
        "(Lcom/squareup/wire/Message;)Lcom/stripe/jvmcore/logging/HealthLogger$Event;",
        "lookupScope",
        "Lcom/stripe/jvmcore/logging/HealthLogger$Scope;",
        "domain",
        "(Lcom/squareup/wire/Message;)Lcom/stripe/jvmcore/logging/HealthLogger$Scope;",
        "notifyListeners",
        "type",
        "Lcom/stripe/jvmcore/logging/MetricType;",
        "value",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V",
        "parseHealthMetric",
        "Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;",
        "healthMetric",
        "recordGauge",
        "measurement",
        "gaugeSetter",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;",
        "recordTimer",
        "durationMillis",
        "timerSetter",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "startTimer",
        "Companion",
        "Domain",
        "Event",
        "ParsedHealthMetric",
        "Scope",
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


# static fields
.field public static final Companion:Lcom/stripe/jvmcore/logging/HealthLogger$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final domainBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDB;>;"
        }
    .end annotation
.end field

.field private final domainClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final domainSetter:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
            "TD;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final isDebug:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/HealthLogger;->Companion:Lcom/stripe/jvmcore/logging/HealthLogger$Companion;

    .line 410
    const-string v0, "HealthLogger"

    sput-object v0, Lcom/stripe/jvmcore/logging/HealthLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Lcom/stripe/loggingmodels/MetricLogger;ZLjava/util/List;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1
    .param p8    # Z
        .annotation runtime Lcom/stripe/jvmcore/dagger/Debug;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;",
            "Ljava/lang/Class<",
            "TDB;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
            "-TD;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/Class<",
            "TSB;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TDB;-TS;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
            ">;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "domainClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainBuilderClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainSetter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeBuilderClass"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeSetter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricLogger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->domainClass:Ljava/lang/Class;

    .line 48
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->domainBuilderClass:Ljava/lang/Class;

    .line 49
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->domainSetter:Lkotlin/jvm/functions/Function2;

    .line 50
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->scopeClass:Ljava/lang/Class;

    .line 51
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->scopeBuilderClass:Ljava/lang/Class;

    .line 52
    iput-object p6, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->scopeSetter:Lkotlin/jvm/functions/Function2;

    .line 54
    iput-object p7, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 55
    iput-boolean p8, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->isDebug:Z

    .line 56
    iput-object p9, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->listeners:Ljava/util/List;

    .line 57
    iput-object p10, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-void
.end method

.method private final buildHealthMetric(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->scopeBuilderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 267
    check-cast v0, Lcom/squareup/wire/Message$Builder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object p1

    .line 271
    iget-object p2, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->domainBuilderClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 272
    check-cast p2, Lcom/squareup/wire/Message$Builder;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->scopeSetter:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p2}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object p1

    .line 276
    new-instance p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;

    invoke-direct {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->domainSetter:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 143
    sget-object p2, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p2, Lcom/stripe/loggingmodels/Outcome;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 144
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 139
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer(Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 65
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 66
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p3, 0x0

    .line 64
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter(Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final logOrCrash(Ljava/lang/String;)V
    .locals 3

    .line 372
    iget-boolean v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->isDebug:Z

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    sget-object v1, Lcom/stripe/jvmcore/logging/HealthLogger;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final lookupDomain(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/jvmcore/logging/HealthLogger$Domain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Domain<",
            "TD;>;"
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    .line 297
    sget-object v1, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    .line 296
    sget-object v2, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {v2, v3}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->properties(Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 297
    const-string v3, "domain"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->withOneOf(Lkotlin/sequences/Sequence;Ljava/lang/String;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->domainClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->withType(Lkotlin/sequences/Sequence;Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 299
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 302
    :cond_0
    sget-object v2, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    invoke-virtual {v2, v0}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->declaredFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 303
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/squareup/wire/Message;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/squareup/wire/Message;

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_3

    return-object v1

    .line 305
    :cond_3
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v2, p1}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final lookupEvent(Lcom/squareup/wire/Message;)Lcom/stripe/jvmcore/logging/HealthLogger$Event;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Event;"
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    .line 328
    sget-object v1, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->scopeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->properties(Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 329
    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->withOneOf(Lkotlin/sequences/Sequence;Ljava/lang/String;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 330
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLogger$lookupEvent$1;

    invoke-direct {v1, p1}, Lcom/stripe/jvmcore/logging/HealthLogger$lookupEvent$1;-><init>(Lcom/squareup/wire/Message;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 331
    sget-object v0, Lcom/stripe/jvmcore/logging/HealthLogger$lookupEvent$2;->INSTANCE:Lcom/stripe/jvmcore/logging/HealthLogger$lookupEvent$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 332
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 328
    :cond_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    .line 335
    sget-object v2, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    invoke-virtual {v2, v1}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->declaredFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 337
    :cond_1
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLogger$Event$CounterEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-direct {v0, v2, p1}, Lcom/stripe/jvmcore/logging/HealthLogger$Event$CounterEvent;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)V

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    return-object v0

    .line 338
    :cond_2
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_3

    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLogger$Event$TimerEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-direct {v0, v2, p1}, Lcom/stripe/jvmcore/logging/HealthLogger$Event$TimerEvent;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)V

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    return-object v0

    .line 339
    :cond_3
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    if-eqz v1, :cond_4

    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLogger$Event$GaugeEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    invoke-direct {v0, v2, p1}, Lcom/stripe/jvmcore/logging/HealthLogger$Event$GaugeEvent;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;)V

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    :cond_4
    return-object v0
.end method

.method private final lookupScope(Lcom/squareup/wire/Message;)Lcom/stripe/jvmcore/logging/HealthLogger$Scope;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Scope<",
            "TS;>;"
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    .line 313
    sget-object v1, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    .line 312
    sget-object v2, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->domainClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->properties(Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 313
    const-string v3, "scope"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->withOneOf(Lkotlin/sequences/Sequence;Ljava/lang/String;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->scopeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->withType(Lkotlin/sequences/Sequence;Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 315
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 318
    :cond_0
    sget-object v2, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    invoke-virtual {v2, v0}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->declaredFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 319
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/squareup/wire/Message;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/squareup/wire/Message;

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_3

    return-object v1

    .line 321
    :cond_3
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v2, p1}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/jvmcore/logging/MetricType;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->listeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 645
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/jvmcore/logging/HealthMetricListener;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 355
    invoke-interface/range {v2 .. v10}, Lcom/stripe/jvmcore/logging/HealthMetricListener;->onHealthMetricLogged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final parseHealthMetric(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric<",
            "TD;TS;>;"
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/logging/HealthLogger;->lookupDomain(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/Message;

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/logging/HealthLogger;->lookupScope(Lcom/squareup/wire/Message;)Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 288
    :cond_1
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/Message;

    invoke-direct {p0, v2}, Lcom/stripe/jvmcore/logging/HealthLogger;->lookupEvent(Lcom/squareup/wire/Message;)Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 289
    :cond_2
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;

    invoke-direct {v0, p1, v1, v2}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger$Domain;Lcom/stripe/jvmcore/logging/HealthLogger$Scope;Lcom/stripe/jvmcore/logging/HealthLogger$Event;)V

    return-object v0
.end method

.method public static synthetic recordGauge$default(Lcom/stripe/jvmcore/logging/HealthLogger;JLcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 221
    sget-object p3, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p3, Lcom/stripe/loggingmodels/Outcome;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x4

    if-eqz p3, :cond_1

    .line 222
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p5

    move-object v6, p6

    .line 219
    invoke-virtual/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->recordGauge(JLcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic recordTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;JLcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 180
    sget-object p3, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p3, Lcom/stripe/loggingmodels/Outcome;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x4

    if-eqz p3, :cond_1

    .line 181
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p5

    move-object v6, p6

    .line 178
    invoke-virtual/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->recordTimer(JLcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 108
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 107
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final endTimer(Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/PendingTimer;",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "outcome"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 148
    const-string p1, "Received null pendingTimer for a call to endTimer"

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/logging/HealthLogger;->logOrCrash(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 153
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/PendingTimer;->getMetric$logging()Lcom/stripe/loggingmodels/Metric;

    move-result-object v1

    .line 156
    sget-object v2, Lcom/stripe/loggingmodels/Tag$HealthTag;->Companion:Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;

    invoke-virtual {v2, p3}, Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;->toHealthTags(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 152
    invoke-interface {v0, v1, p2, v2}, Lcom/stripe/loggingmodels/MetricLogger;->endTimedMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)J

    move-result-wide v0

    .line 160
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/PendingTimer;->getMetric$logging()Lcom/stripe/loggingmodels/Metric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/loggingmodels/Metric;->getDomain()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/PendingTimer;->getMetric$logging()Lcom/stripe/loggingmodels/Metric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/loggingmodels/Metric;->getScope()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/PendingTimer;->getMetric$logging()Lcom/stripe/loggingmodels/Metric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/loggingmodels/Metric;->getEvent()Ljava/lang/String;

    move-result-object v6

    .line 163
    sget-object v7, Lcom/stripe/jvmcore/logging/MetricType;->TIMER:Lcom/stripe/jvmcore/logging/MetricType;

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 165
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/PendingTimer;->getMetric$logging()Lcom/stripe/loggingmodels/Metric;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Metric;->getTags()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 638
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 639
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 640
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 641
    check-cast v0, Lcom/stripe/loggingmodels/Tag;

    .line 165
    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {v1, p3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    move-object v3, p0

    move-object v10, p2

    move-object/from16 v11, p4

    .line 159
    invoke-direct/range {v3 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final incrementCounter(Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p4

    const-string v2, "outcome"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "tags"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "counterSetter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v3, v4, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v2, v1}, Lcom/stripe/jvmcore/logging/HealthLogger;->buildHealthMetric(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object v1

    .line 71
    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/logging/HealthLogger;->parseHealthMetric(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;

    move-result-object v2

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse health metric for counter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/logging/HealthLogger;->logOrCrash(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_0
    iget-object v7, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 79
    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getDomain()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;->getName()Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getScope()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;->getName()Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getEvent()Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Event;->getName()Ljava/lang/String;

    move-result-object v10

    .line 83
    sget-object v1, Lcom/stripe/loggingmodels/Tag$HealthTag;->Companion:Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;

    invoke-virtual {v1, p2}, Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;->toHealthTags(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    move-object v12, p1

    .line 78
    invoke-interface/range {v7 .. v12}, Lcom/stripe/loggingmodels/MetricLogger;->recordCounterMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/loggingmodels/Outcome;)V

    .line 88
    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getDomain()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;->getName()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getScope()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;->getName()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getEvent()Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$Event;->getName()Ljava/lang/String;

    move-result-object v2

    .line 91
    sget-object v4, Lcom/stripe/jvmcore/logging/MetricType;->COUNTER:Lcom/stripe/jvmcore/logging/MetricType;

    const/4 v5, 0x0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, p0

    move-object v7, p1

    move-object v6, p2

    move-object/from16 v8, p3

    .line 87
    invoke-direct/range {v0 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordGauge(JLcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p4

    move-object/from16 v0, p6

    const-string v1, "outcome"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "gaugeSetter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;-><init>(Ljava/lang/Long;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v1, v0}, Lcom/stripe/jvmcore/logging/HealthLogger;->buildHealthMetric(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object v0

    .line 227
    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/logging/HealthLogger;->parseHealthMetric(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;

    move-result-object v1

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse health metric for gauge: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/logging/HealthLogger;->logOrCrash(Ljava/lang/String;)V

    return-void

    .line 234
    :cond_0
    iget-object v7, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 235
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getDomain()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;->getName()Ljava/lang/String;

    move-result-object v8

    .line 236
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getScope()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;->getName()Ljava/lang/String;

    move-result-object v9

    .line 237
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getEvent()Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Event;->getName()Ljava/lang/String;

    move-result-object v10

    .line 240
    sget-object v0, Lcom/stripe/loggingmodels/Tag$HealthTag;->Companion:Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;

    invoke-virtual {v0, v6}, Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;->toHealthTags(Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    move-wide/from16 v11, p1

    .line 234
    invoke-interface/range {v7 .. v14}, Lcom/stripe/loggingmodels/MetricLogger;->recordGaugeMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;)V

    .line 245
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getDomain()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;->getName()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getScope()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;->getName()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getEvent()Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Event;->getName()Ljava/lang/String;

    move-result-object v3

    .line 248
    sget-object v4, Lcom/stripe/jvmcore/logging/MetricType;->GAUGE:Lcom/stripe/jvmcore/logging/MetricType;

    .line 249
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object v1, v0

    move-object v0, p0

    .line 244
    invoke-direct/range {v0 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordTimer(JLcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p4

    move-object/from16 v0, p6

    const-string v1, "outcome"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timerSetter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;-><init>(Ljava/lang/Long;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v1, v0}, Lcom/stripe/jvmcore/logging/HealthLogger;->buildHealthMetric(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object v0

    .line 186
    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/logging/HealthLogger;->parseHealthMetric(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;

    move-result-object v1

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse health metric for timer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/logging/HealthLogger;->logOrCrash(Ljava/lang/String;)V

    return-void

    .line 193
    :cond_0
    iget-object v7, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 194
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getDomain()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;->getName()Ljava/lang/String;

    move-result-object v8

    .line 195
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getScope()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;->getName()Ljava/lang/String;

    move-result-object v9

    .line 196
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getEvent()Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Event;->getName()Ljava/lang/String;

    move-result-object v10

    .line 199
    sget-object v0, Lcom/stripe/loggingmodels/Tag$HealthTag;->Companion:Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;

    invoke-virtual {v0, v6}, Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;->toHealthTags(Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    move-wide/from16 v11, p1

    .line 193
    invoke-interface/range {v7 .. v14}, Lcom/stripe/loggingmodels/MetricLogger;->recordTimedMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;)V

    .line 204
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getDomain()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;->getName()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getScope()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;->getName()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getEvent()Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Event;->getName()Ljava/lang/String;

    move-result-object v3

    .line 207
    sget-object v4, Lcom/stripe/jvmcore/logging/MetricType;->TIMER:Lcom/stripe/jvmcore/logging/MetricType;

    .line 208
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object v1, v0

    move-object v0, p0

    .line 203
    invoke-direct/range {v0 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final startTimer(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/PendingTimer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/PendingTimer;"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerSetter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;-><init>(Ljava/lang/Long;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, p2}, Lcom/stripe/jvmcore/logging/HealthLogger;->buildHealthMetric(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object p2

    .line 112
    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/logging/HealthLogger;->parseHealthMetric(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse health metric for counter: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/logging/HealthLogger;->logOrCrash(Ljava/lang/String;)V

    return-object v2

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/stripe/jvmcore/logging/HealthLogger;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 125
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getDomain()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;->getName()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getScope()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;->getName()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->getEvent()Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Event;->getName()Ljava/lang/String;

    move-result-object v0

    .line 129
    sget-object v3, Lcom/stripe/loggingmodels/Tag$HealthTag;->Companion:Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;

    invoke-virtual {v3, p1}, Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;->toHealthTags(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 124
    invoke-interface {p2, v1, v2, v0, p1}, Lcom/stripe/loggingmodels/MetricLogger;->startTimedMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/stripe/loggingmodels/Metric;

    move-result-object p1

    .line 132
    new-instance p2, Lcom/stripe/jvmcore/logging/PendingTimer;

    invoke-direct {p2, p1}, Lcom/stripe/jvmcore/logging/PendingTimer;-><init>(Lcom/stripe/loggingmodels/Metric;)V

    return-object p2
.end method
