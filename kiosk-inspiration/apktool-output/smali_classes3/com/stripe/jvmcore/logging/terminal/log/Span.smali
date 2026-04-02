.class public final Lcom/stripe/jvmcore/logging/terminal/log/Span;
.super Ljava/lang/Object;
.source "Span.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Deprecated logging model type, migrated to Trace."
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "Trace"
        imports = {
            "com.stripe.loggingmodels.Trace"
        }
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 62\u00020\u0001:\u00016B\u0093\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0008\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0012\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010+\u001a\u00020,2\u0006\u0010\u000b\u001a\u00020-2\u0006\u0010.\u001a\u00020\u0003J\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ*\u00100\u001a\u00020,2\u0008\u00101\u001a\u0004\u0018\u00010\u00052\u0008\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u0002052\u0006\u0010.\u001a\u00020\u0003R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0015\u00a8\u00067"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
        "",
        "startTimeMs",
        "",
        "traceId",
        "",
        "request",
        "service",
        "method",
        "exception",
        "totalTimeMs",
        "response",
        "traces",
        "",
        "Lcom/stripe/loggingmodels/LogPoint;",
        "sessionId",
        "serialNumber",
        "tags",
        "",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V",
        "getException",
        "()Ljava/lang/String;",
        "setException",
        "(Ljava/lang/String;)V",
        "logPointsList",
        "",
        "getMethod",
        "getRequest",
        "getResponse",
        "setResponse",
        "getSerialNumber",
        "getService",
        "getSessionId",
        "getStartTimeMs",
        "()J",
        "getTags",
        "()Ljava/util/Map;",
        "getTotalTimeMs",
        "()Ljava/lang/Long;",
        "setTotalTimeMs",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getTraceId",
        "close",
        "",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "currentTimeMillis",
        "getLogPoints",
        "log",
        "message",
        "throwable",
        "",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "Companion",
        "impl_release"
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
.field public static final Companion:Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;


# instance fields
.field private exception:Ljava/lang/String;

.field private final logPointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/LogPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final request:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private final serialNumber:Ljava/lang/String;

.field private final service:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final startTimeMs:J

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalTimeMs:Ljava/lang/Long;

.field private final traceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/LogPoint;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "traceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->startTimeMs:J

    .line 25
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->traceId:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->request:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->service:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->method:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->exception:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->totalTimeMs:Ljava/lang/Long;

    .line 33
    iput-object p9, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->response:Ljava/lang/String;

    .line 35
    iput-object p11, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->sessionId:Ljava/lang/String;

    .line 36
    iput-object p12, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->serialNumber:Ljava/lang/String;

    .line 37
    iput-object p13, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->tags:Ljava/util/Map;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->logPointsList:Ljava/util/List;

    if-eqz p10, :cond_0

    .line 44
    check-cast p10, Ljava/util/Collection;

    invoke-interface {p1, p10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v10, p7

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move-object v15, v2

    goto :goto_5

    :cond_5
    move-object/from16 v15, p12

    :goto_5
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_6

    .line 37
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_6

    :cond_6
    move-object/from16 v16, p13

    :goto_6
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 23
    invoke-direct/range {v3 .. v16}, Lcom/stripe/jvmcore/logging/terminal/log/Span;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final close(Lcom/stripe/loggingmodels/ApplicationTraceResult;J)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->exception:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/GsonProvider;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/log/GsonProvider;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/log/GsonProvider;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->response:Ljava/lang/String;

    .line 79
    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->startTimeMs:J

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->totalTimeMs:Ljava/lang/Long;

    return-void
.end method

.method public final getException()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/LogPoint;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->logPointsList:Ljava/util/List;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequest()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->request:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponse()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->response:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getService()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->service:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTimeMs()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->startTimeMs:J

    return-wide v0
.end method

.method public final getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public final getTotalTimeMs()Ljava/lang/Long;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->totalTimeMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTraceId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V
    .locals 3

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/stripe/loggingmodels/LogPoint;

    if-eqz p2, :cond_0

    .line 65
    invoke-static {p2}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 67
    :goto_0
    iget-wide v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->startTimeMs:J

    sub-long/2addr p4, v1

    long-to-int p4, p4

    .line 63
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/LogPoint;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;I)V

    .line 69
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->logPointsList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setException(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->exception:Ljava/lang/String;

    return-void
.end method

.method public final setResponse(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->response:Ljava/lang/String;

    return-void
.end method

.method public final setTotalTimeMs(Ljava/lang/Long;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Span;->totalTimeMs:Ljava/lang/Long;

    return-void
.end method
