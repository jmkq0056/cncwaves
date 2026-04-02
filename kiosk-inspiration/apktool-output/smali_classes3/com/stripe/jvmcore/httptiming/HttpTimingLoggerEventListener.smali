.class public final Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;
.super Lokhttp3/EventListener;
.source "HttpTimingLoggerEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;,
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;,
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;,
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;,
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;,
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpTimingLoggerEventListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpTimingLoggerEventListener.kt\ncom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,365:1\n1855#2:366\n1603#2,9:367\n1855#2:376\n1856#2:378\n1612#2:379\n1856#2:381\n1855#2,2:382\n1#3:377\n1#3:380\n*S KotlinDebug\n*F\n+ 1 HttpTimingLoggerEventListener.kt\ncom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener\n*L\n209#1:366\n213#1:367,9\n213#1:376\n213#1:378\n213#1:379\n209#1:381\n259#1:382,2\n213#1:377\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0006cdefghB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\'0\u0007H\u0002J\u000e\u0010(\u001a\u0008\u0012\u0004\u0012\u00020)0\u0007H\u0002J\u000e\u0010*\u001a\u0008\u0012\u0004\u0012\u00020+0\u0007H\u0002J\u0010\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010.\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u00102\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J*\u00103\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u000109H\u0016J2\u0010:\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u0001092\u0006\u0010/\u001a\u000200H\u0016J \u0010;\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0016J\u0018\u0010<\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010=\u001a\u00020>H\u0016J\u0018\u0010?\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010=\u001a\u00020>H\u0016J \u0010@\u001a\u00020+2\u0006\u0010A\u001a\u00020\u001f2\u0006\u0010B\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u0005H\u0002J&\u0010D\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010E\u001a\u00020F2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020H0\u0007H\u0016J\u0018\u0010I\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010E\u001a\u00020FH\u0016J\u0008\u0010J\u001a\u00020-H\u0002J\u0018\u0010K\u001a\u00020-2\u0006\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020OH\u0002J\u0018\u0010P\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010Q\u001a\u00020\"H\u0016J\u0010\u0010R\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010S\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010/\u001a\u000200H\u0016J\u0018\u0010T\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010U\u001a\u00020VH\u0016J\u0010\u0010W\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010X\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010Q\u001a\u00020\"H\u0016J\u0010\u0010Y\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010Z\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010/\u001a\u000200H\u0016J\u0018\u0010[\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010^\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u001a\u0010_\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0016J\u0010\u0010b\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R2\u0010\u001c\u001a&\u0012\u0004\u0012\u00020\u0014\u0012\u001c\u0012\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140 0\u001e0\u00070\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u0006i"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;",
        "Lokhttp3/EventListener;",
        "call",
        "Lokhttp3/Call;",
        "callStartTime",
        "Ljava/time/Instant;",
        "timingCollectors",
        "",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "(Lokhttp3/Call;Ljava/time/Instant;Ljava/util/List;Lcom/stripe/time/Clock;)V",
        "getCall",
        "()Lokhttp3/Call;",
        "getCallStartTime",
        "()Ljava/time/Instant;",
        "getClock",
        "()Lcom/stripe/time/Clock;",
        "eventCounts",
        "",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;",
        "",
        "events",
        "",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;",
        "isCancelled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isDone",
        "namedTimingInterval",
        "",
        "Lkotlin/Pair;",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;",
        "",
        "requestBytes",
        "",
        "responseBytes",
        "getTimingCollectors",
        "()Ljava/util/List;",
        "calculateMetrics",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;",
        "calculateTags",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;",
        "calculateTimings",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;",
        "callEnd",
        "",
        "callFailed",
        "ioe",
        "Ljava/io/IOException;",
        "callStart",
        "canceled",
        "connectEnd",
        "inetSocketAddress",
        "Ljava/net/InetSocketAddress;",
        "proxy",
        "Ljava/net/Proxy;",
        "protocol",
        "Lokhttp3/Protocol;",
        "connectFailed",
        "connectStart",
        "connectionAcquired",
        "connection",
        "Lokhttp3/Connection;",
        "connectionReleased",
        "createTiming",
        "name",
        "timeStart",
        "timeEnd",
        "dnsEnd",
        "domainName",
        "",
        "inetAddressList",
        "Ljava/net/InetAddress;",
        "dnsStart",
        "emitMetrics",
        "logTiming",
        "eventName",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;",
        "actionType",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;",
        "requestBodyEnd",
        "byteCount",
        "requestBodyStart",
        "requestFailed",
        "requestHeadersEnd",
        "request",
        "Lokhttp3/Request;",
        "requestHeadersStart",
        "responseBodyEnd",
        "responseBodyStart",
        "responseFailed",
        "responseHeadersEnd",
        "response",
        "Lokhttp3/Response;",
        "responseHeadersStart",
        "secureConnectEnd",
        "handshake",
        "Lokhttp3/Handshake;",
        "secureConnectStart",
        "Event",
        "HttpTimingLoggerEventListenerFactory",
        "Metric",
        "RequestMetrics",
        "Tag",
        "Timing",
        "httptiming"
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
.field private final call:Lokhttp3/Call;

.field private final callStartTime:Ljava/time/Instant;

.field private final clock:Lcom/stripe/time/Clock;

.field private final eventCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;",
            ">;"
        }
    .end annotation
.end field

.field private isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final namedTimingInterval:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private requestBytes:J

.field private responseBytes:J

.field private final timingCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gxkiDdPUvMsQMSKeRNMsfaWOOtM(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lokhttp3/Call;Ljava/time/Instant;Ljava/util/List;Lcom/stripe/time/Clock;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/time/Instant;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;",
            ">;",
            "Lcom/stripe/time/Clock;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callStartTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timingCollectors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->call:Lokhttp3/Call;

    .line 25
    iput-object p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->callStartTime:Ljava/time/Instant;

    .line 26
    iput-object p3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->timingCollectors:Ljava/util/List;

    .line 27
    iput-object p4, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->clock:Lcom/stripe/time/Clock;

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->events:Ljava/util/List;

    .line 134
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->eventCounts:Ljava/util/Map;

    const-wide/16 p3, -0x1

    .line 137
    iput-wide p3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->requestBytes:J

    .line 138
    iput-wide p3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->responseBytes:J

    const/16 p1, 0x8

    .line 145
    new-array p1, p1, [Lkotlin/Pair;

    new-instance p3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    .line 146
    sget-object p4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 147
    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    .line 145
    invoke-direct {p3, p4, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 148
    new-instance p4, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v1, v2, v3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 145
    invoke-static {p3, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    .line 149
    new-instance p3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    .line 150
    sget-object p4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 151
    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    .line 149
    invoke-direct {p3, p4, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 152
    new-instance p4, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v1, v2, v3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 149
    invoke-static {p3, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p1, p4

    .line 153
    new-instance p3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    .line 154
    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->SECURE_CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 155
    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    .line 153
    invoke-direct {p3, v0, v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 156
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->TLS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    new-instance v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->SECURE_CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v2, v3, v4}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-static {p3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 157
    new-instance p3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    .line 158
    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECTION_ACQUIRED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 159
    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    .line 157
    invoke-direct {p3, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 161
    new-instance v1, Lkotlin/Pair;

    .line 162
    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CONNECTION_ACQUIRE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 164
    new-array v3, v0, [Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    new-instance v4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v5, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v6, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v4, v5, v6}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    aput-object v4, v3, p2

    .line 165
    new-instance v4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v5, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECTION_RELEASED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v6, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v4, v5, v6}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    aput-object v4, v3, p4

    .line 163
    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 161
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v1, 0x3

    aput-object p3, p1, v1

    .line 169
    new-instance p3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    .line 170
    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 171
    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    .line 169
    invoke-direct {p3, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 173
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->REQUEST_E2E:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    new-instance v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v5, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v3, v4, v5}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, p2

    .line 174
    new-instance p2, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->RESPONSE_RECEIVE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    new-instance v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v2, v3, v4}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v0, p4

    .line 172
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 169
    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, p1, p3

    .line 176
    new-instance p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    .line 177
    sget-object p3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 178
    sget-object p4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    .line 176
    invoke-direct {p2, p3, p4}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 180
    new-instance p3, Lkotlin/Pair;

    sget-object p4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->REQUEST_SEND:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p3, p4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 176
    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    .line 182
    new-instance p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    .line 183
    sget-object p3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 184
    sget-object p4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    .line 182
    invoke-direct {p2, p3, p4}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 186
    new-instance p3, Lkotlin/Pair;

    sget-object p4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CALL_E2E:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p3, p4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 182
    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, p1, p3

    .line 188
    new-instance p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    .line 189
    sget-object p3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 190
    sget-object p4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    .line 188
    invoke-direct {p2, p3, p4}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 192
    new-instance p3, Lkotlin/Pair;

    sget-object p4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CALL_E2E:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p3, p4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 188
    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, p1, p3

    .line 144
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->namedTimingInterval:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Call;Ljava/time/Instant;Ljava/util/List;Lcom/stripe/time/Clock;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;-><init>(Lokhttp3/Call;Ljava/time/Instant;Ljava/util/List;Lcom/stripe/time/Clock;)V

    return-void
.end method

.method private final calculateMetrics()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 228
    new-array v0, v0, [Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;

    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;

    .line 229
    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;->NUM_CONNECT_ATTEMPTS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;

    .line 230
    iget-object v3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->eventCounts:Ljava/util/Map;

    new-instance v4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v5, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v6, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v4, v5, v6}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    goto :goto_0

    :cond_0
    move-wide v6, v4

    .line 228
    :goto_0
    invoke-direct {v1, v2, v6, v7}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 232
    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;

    .line 233
    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;->NUM_REQUEST_RETRIES:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;

    .line 234
    iget-object v3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->eventCounts:Ljava/util/Map;

    new-instance v6, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v7, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v8, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v6, v7, v8}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-wide/16 v6, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    sub-long/2addr v8, v6

    .line 232
    invoke-direct {v1, v2, v8, v9}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;J)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 227
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 237
    iget-wide v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->requestBytes:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_2

    .line 238
    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;->REQUEST_BYTES:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;

    iget-wide v6, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->requestBytes:J

    invoke-direct {v1, v2, v6, v7}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_2
    iget-wide v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->responseBytes:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_3

    .line 241
    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;->RESPONSE_BYTES:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;

    iget-wide v3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->responseBytes:J

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final calculateTags()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->eventCounts:Ljava/util/Map;

    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {v1, v2, v3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 248
    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;->CONNECTION_REUSED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized calculateTimings()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 206
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 207
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 208
    iget-object v2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;

    .line 209
    iget-object v4, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->namedTimingInterval:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->getKey()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_0
    check-cast v4, Ljava/lang/Iterable;

    .line 366
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    .line 210
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 211
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 212
    check-cast v5, Ljava/lang/Iterable;

    .line 367
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 376
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 375
    check-cast v8, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    .line 213
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;

    if-eqz v8, :cond_2

    .line 375
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 379
    :cond_3
    check-cast v7, Ljava/util/List;

    .line 213
    check-cast v7, Ljava/lang/Iterable;

    .line 214
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 215
    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_1

    .line 217
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;

    .line 218
    invoke-virtual {v5}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->getCallTime()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->getCallTime()Ljava/time/Instant;

    move-result-object v7

    invoke-direct {p0, v6, v5, v7}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->createTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Instant;Ljava/time/Instant;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_5
    invoke-virtual {v3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->getKey()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 223
    :cond_6
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final createTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Instant;Ljava/time/Instant;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;
    .locals 3

    .line 126
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;

    .line 128
    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->callStartTime:Ljava/time/Instant;

    check-cast v1, Ljava/time/temporal/Temporal;

    check-cast p2, Ljava/time/temporal/Temporal;

    invoke-static {v1, p2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->abs()Ljava/time/Duration;

    move-result-object v1

    const-string v2, "abs(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    check-cast p3, Ljava/time/temporal/Temporal;

    invoke-static {p2, p3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Duration;->abs()Ljava/time/Duration;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {v0, p1, v1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Duration;Ljava/time/Duration;)V

    return-object v0
.end method

.method private final emitMetrics()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;

    .line 254
    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->call:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    .line 255
    invoke-direct {p0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->calculateTimings()Ljava/util/List;

    move-result-object v2

    .line 256
    invoke-direct {p0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->calculateMetrics()Ljava/util/List;

    move-result-object v3

    .line 257
    invoke-direct {p0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->calculateTags()Ljava/util/List;

    move-result-object v4

    .line 253
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;-><init>(Lokhttp3/Request;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 259
    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->timingCollectors:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 382
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;

    .line 259
    invoke-interface {v2, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;->collect(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V
    .locals 4

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    invoke-direct {v1, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 200
    iget-object v2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->events:Ljava/util/List;

    new-instance v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, p1, p2, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;Ljava/time/Instant;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->eventCounts:Ljava/util/Map;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$logTiming$1;->INSTANCE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$logTiming$1;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static final logTiming$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 269
    invoke-direct {p0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->emitMetrics()V

    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    .line 353
    invoke-direct {p0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->emitMetrics()V

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public canceled(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 358
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CANCELED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0

    const-string p4, "call"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0

    const-string p4, "call"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connection"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECTION_ACQUIRED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connection"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECTION_RELEASED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "domainName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetAddressList"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "domainName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public final getCall()Lokhttp3/Call;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->call:Lokhttp3/Call;

    return-object v0
.end method

.method public final getCallStartTime()Ljava/time/Instant;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->callStartTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getClock()Lcom/stripe/time/Clock;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->clock:Lcom/stripe/time/Clock;

    return-object v0
.end method

.method public final getTimingCollectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->timingCollectors:Ljava/util/List;

    return-object v0
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iput-wide p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->requestBytes:J

    .line 323
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iput-wide p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->responseBytes:J

    .line 344
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->EVENT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->SECURE_CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object p2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->END:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget-object p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->SECURE_CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->START:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-void
.end method
