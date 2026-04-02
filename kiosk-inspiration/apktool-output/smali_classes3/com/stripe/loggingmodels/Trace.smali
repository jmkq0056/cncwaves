.class public final Lcom/stripe/loggingmodels/Trace;
.super Ljava/lang/Object;
.source "Trace.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/Trace$Context;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001]B\u0093\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010\u00a2\u0006\u0002\u0010\u0014J\u001a\u00109\u001a\u00020:2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0017\u0010=\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010H\u00c6\u0003J\t\u0010>\u001a\u00020\u0012H\u00c6\u0003J\u0015\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010H\u00c6\u0003J\t\u0010@\u001a\u00020\u0005H\u00c6\u0003J\t\u0010A\u001a\u00020\u0005H\u00c6\u0003J\t\u0010B\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010C\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010D\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010E\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u000b\u0010F\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u00b6\u0001\u0010H\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0016\u0008\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010H\u00c6\u0001\u00a2\u0006\u0002\u0010IJ\u0013\u0010J\u001a\u00020K2\u0008\u0010L\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010M\u001a\u00020NH\u00d6\u0001J,\u0010O\u001a\u00020:2\u0008\u0010P\u001a\u0004\u0018\u00010\u00052\u0008\u0010Q\u001a\u0004\u0018\u00010R2\u0006\u0010S\u001a\u00020T2\u0008\u0008\u0002\u0010U\u001a\u00020\u0003J\u001e\u0010V\u001a\u00020:2\u0006\u0010W\u001a\u00020\u00052\u0006\u0010X\u001a\u00020N2\u0006\u0010Y\u001a\u00020\u0003J\u0016\u0010V\u001a\u00020:2\u0006\u0010W\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\u0003J\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020[0\'J\t\u0010\\\u001a\u00020\u0005H\u00d6\u0001R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u001f\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\"R!\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00170\'8FX\u0086\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010+*\u0004\u0008(\u0010)R!\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00190\'8FX\u0086\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010+*\u0004\u0008-\u0010)R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\"R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u00080\u0010\u001fR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\"R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u00082\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\"R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R&\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010$\"\u0004\u00087\u00108\u00a8\u0006^"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Trace;",
        "",
        "startTimeMillis",
        "",
        "service",
        "",
        "method",
        "request",
        "rootId",
        "parentId",
        "currentId",
        "context",
        "Lcom/stripe/loggingmodels/Trace$Context;",
        "httpUrl",
        "httpMethod",
        "httpRequestHeaders",
        "",
        "clock",
        "Lcom/stripe/time/Clock;",
        "tags",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;)V",
        "_logPoints",
        "",
        "Lcom/stripe/loggingmodels/LogPoint;",
        "_meterPoints",
        "Lcom/stripe/loggingmodels/MeterPoint;",
        "getClock",
        "()Lcom/stripe/time/Clock;",
        "getContext",
        "()Lcom/stripe/loggingmodels/Trace$Context;",
        "getCurrentId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getHttpMethod",
        "()Ljava/lang/String;",
        "getHttpRequestHeaders",
        "()Ljava/util/Map;",
        "getHttpUrl",
        "logPoints",
        "",
        "getLogPoints$delegate",
        "(Lcom/stripe/loggingmodels/Trace;)Ljava/lang/Object;",
        "getLogPoints",
        "()Ljava/util/List;",
        "meterPoints",
        "getMeterPoints$delegate",
        "getMeterPoints",
        "getMethod",
        "getParentId",
        "getRequest",
        "getRootId",
        "getService",
        "getStartTimeMillis",
        "()J",
        "getTags",
        "setTags",
        "(Ljava/util/Map;)V",
        "addTags",
        "",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "log",
        "message",
        "throwable",
        "",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "currentTimeMillis",
        "meter",
        "eventName",
        "offsetMs",
        "elapsedMs",
        "spanPoints",
        "Lcom/stripe/loggingmodels/SpanPoint;",
        "toString",
        "Context",
        "public_release"
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
.field private final _logPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/LogPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final _meterPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/MeterPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/stripe/time/Clock;

.field private final context:Lcom/stripe/loggingmodels/Trace$Context;

.field private final currentId:Ljava/lang/Long;

.field private final httpMethod:Ljava/lang/String;

.field private final httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpUrl:Ljava/lang/String;

.field private final method:Ljava/lang/String;

.field private final parentId:Ljava/lang/Long;

.field private final request:Ljava/lang/String;

.field private final rootId:Ljava/lang/Long;

.field private final service:Ljava/lang/String;

.field private final startTimeMillis:J

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

    .line 11
    iput-object p3, p0, Lcom/stripe/loggingmodels/Trace;->service:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/stripe/loggingmodels/Trace;->method:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/stripe/loggingmodels/Trace;->request:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/stripe/loggingmodels/Trace;->rootId:Ljava/lang/Long;

    .line 15
    iput-object p7, p0, Lcom/stripe/loggingmodels/Trace;->parentId:Ljava/lang/Long;

    .line 16
    iput-object p8, p0, Lcom/stripe/loggingmodels/Trace;->currentId:Ljava/lang/Long;

    .line 17
    iput-object p9, p0, Lcom/stripe/loggingmodels/Trace;->context:Lcom/stripe/loggingmodels/Trace$Context;

    .line 18
    iput-object p10, p0, Lcom/stripe/loggingmodels/Trace;->httpUrl:Ljava/lang/String;

    .line 19
    iput-object p11, p0, Lcom/stripe/loggingmodels/Trace;->httpMethod:Ljava/lang/String;

    .line 20
    iput-object p12, p0, Lcom/stripe/loggingmodels/Trace;->httpRequestHeaders:Ljava/util/Map;

    .line 21
    iput-object p13, p0, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    .line 22
    iput-object p14, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/stripe/loggingmodels/Trace;->_logPoints:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/stripe/loggingmodels/Trace;->_meterPoints:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/loggingmodels/Trace;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Trace;
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/stripe/loggingmodels/Trace;->service:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/stripe/loggingmodels/Trace;->method:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/stripe/loggingmodels/Trace;->request:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/stripe/loggingmodels/Trace;->rootId:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/stripe/loggingmodels/Trace;->parentId:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/stripe/loggingmodels/Trace;->currentId:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/stripe/loggingmodels/Trace;->context:Lcom/stripe/loggingmodels/Trace$Context;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/stripe/loggingmodels/Trace;->httpUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/stripe/loggingmodels/Trace;->httpMethod:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/stripe/loggingmodels/Trace;->httpRequestHeaders:Ljava/util/Map;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    iget-object v13, p0, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    move-object/from16 p15, v0

    goto :goto_c

    :cond_c
    move-object/from16 p15, p14

    :goto_c
    move-object p1, p0

    move-wide/from16 p2, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    invoke-virtual/range {p1 .. p15}, Lcom/stripe/loggingmodels/Trace;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;

    move-result-object p0

    return-object p0
.end method

.method private static getLogPoints$delegate(Lcom/stripe/loggingmodels/Trace;)Ljava/lang/Object;
    .locals 6

    .line 26
    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-string v4, "get_logPoints()Ljava/util/List;"

    const/4 v5, 0x0

    const-class v2, Lcom/stripe/loggingmodels/Trace;

    const-string v3, "_logPoints"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/PropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getMeterPoints$delegate(Lcom/stripe/loggingmodels/Trace;)Ljava/lang/Object;
    .locals 6

    .line 27
    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-string v4, "get_meterPoints()Ljava/util/List;"

    const/4 v5, 0x0

    const-class v2, Lcom/stripe/loggingmodels/Trace;

    const-string v3, "_meterPoints"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/PropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic log$default(Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;JILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 49
    iget-object p4, p0, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    invoke-interface {p4}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide p4

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/stripe/loggingmodels/Trace;->log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V

    return-void
.end method


# virtual methods
.method public final addTags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    return-void
.end method

.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->httpRequestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final component12()Lcom/stripe/time/Clock;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    return-object v0
.end method

.method public final component13()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->service:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->request:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->rootId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->parentId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->currentId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component8()Lcom/stripe/loggingmodels/Trace$Context;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->context:Lcom/stripe/loggingmodels/Trace$Context;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->httpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/loggingmodels/Trace;"
        }
    .end annotation

    const-string v0, "service"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/loggingmodels/Trace;

    move-wide/from16 v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v15}, Lcom/stripe/loggingmodels/Trace;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/loggingmodels/Trace;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/loggingmodels/Trace;

    iget-wide v3, p0, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

    iget-wide v5, p1, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->service:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->service:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->request:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->request:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->rootId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->rootId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->parentId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->parentId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->currentId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->currentId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->context:Lcom/stripe/loggingmodels/Trace$Context;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->context:Lcom/stripe/loggingmodels/Trace$Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->httpUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->httpUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->httpMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->httpMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->httpRequestHeaders:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->httpRequestHeaders:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getClock()Lcom/stripe/time/Clock;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    return-object v0
.end method

.method public final getContext()Lcom/stripe/loggingmodels/Trace$Context;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->context:Lcom/stripe/loggingmodels/Trace$Context;

    return-object v0
.end method

.method public final getCurrentId()Ljava/lang/Long;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->currentId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpRequestHeaders()Ljava/util/Map;
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

    .line 20
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->httpRequestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final getHttpUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->httpUrl:Ljava/lang/String;

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

    .line 26
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->_logPoints:Ljava/util/List;

    return-object v0
.end method

.method public final getMeterPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/MeterPoint;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->_meterPoints:Ljava/util/List;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/Long;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->parentId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getRequest()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->request:Ljava/lang/String;

    return-object v0
.end method

.method public final getRootId()Ljava/lang/Long;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->rootId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getService()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->service:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTimeMillis()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

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

    .line 22
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->service:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->request:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->rootId:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->parentId:Ljava/lang/Long;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->currentId:Ljava/lang/Long;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->context:Lcom/stripe/loggingmodels/Trace$Context;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/Trace$Context;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->httpUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->httpMethod:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->httpRequestHeaders:Ljava/util/Map;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V
    .locals 3

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/stripe/loggingmodels/LogPoint;

    if-eqz p2, :cond_0

    .line 53
    invoke-static {p2}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 55
    :goto_0
    iget-wide v1, p0, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

    sub-long/2addr p4, v1

    long-to-int p4, p4

    .line 51
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/LogPoint;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;I)V

    .line 57
    iget-object p1, p0, Lcom/stripe/loggingmodels/Trace;->_logPoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final meter(Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/stripe/loggingmodels/MeterPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/MeterPoint;-><init>(Ljava/lang/String;IJ)V

    .line 73
    iget-object p1, p0, Lcom/stripe/loggingmodels/Trace;->_meterPoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final meter(Ljava/lang/String;J)V
    .locals 4

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 84
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/stripe/loggingmodels/Trace;->meter(Ljava/lang/String;IJ)V

    return-void
.end method

.method public final setTags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    return-void
.end method

.method public final spanPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/SpanPoint;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/Trace;->getLogPoints()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/stripe/loggingmodels/Trace;->getMeterPoints()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trace(startTimeMillis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/stripe/loggingmodels/Trace;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->service:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->request:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->rootId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->parentId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->currentId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->context:Lcom/stripe/loggingmodels/Trace$Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", httpUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->httpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", httpMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->httpMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", httpRequestHeaders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->httpRequestHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/loggingmodels/Trace;->clock:Lcom/stripe/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/loggingmodels/Trace;->tags:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
