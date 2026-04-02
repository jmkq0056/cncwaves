.class public final Lcom/stripe/jvmcore/logging/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/EventLogger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 #2\u00020\u0001:\u0001#BI\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u001dJ\u0010\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0002J\u000e\u0010!\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\"R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/EventLogger;",
        "",
        "batchDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "protoFlattener",
        "Lcom/stripe/jvmcore/proto/ProtoFlattener;",
        "legacyFileProvider",
        "Ldagger/Lazy;",
        "Ljava/io/File;",
        "maxEntryBytes",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/proto/ProtoFlattener;Ldagger/Lazy;JLkotlinx/coroutines/CoroutineScope;Lcom/stripe/logwriter/LogWriter;)V",
        "deleteLegacyFileIfPresent",
        "Lkotlinx/coroutines/Job;",
        "init",
        "",
        "logAndroidEvent",
        "event",
        "Lcom/stripe/proto/model/observability/schema/android/Event;",
        "logAndroidReaderEvent",
        "Lcom/stripe/proto/model/observability/schema/androidreader/Event;",
        "logCrashEvent",
        "Lcom/stripe/proto/model/observability/schema/crash/Event;",
        "logEvent",
        "payload",
        "Lcom/stripe/proto/model/observability/schema/Payload;",
        "logPowerEvent",
        "Lcom/stripe/proto/model/observability/schema/power/Event;",
        "Companion",
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
.field public static final Companion:Lcom/stripe/jvmcore/logging/EventLogger$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final batchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/stripe/time/Clock;

.field private final legacyFileProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final maxEntryBytes:J

.field private final protoFlattener:Lcom/stripe/jvmcore/proto/ProtoFlattener;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/EventLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/EventLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/EventLogger;->Companion:Lcom/stripe/jvmcore/logging/EventLogger$Companion;

    .line 96
    const-string v0, "EventLogger"

    sput-object v0, Lcom/stripe/jvmcore/logging/EventLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/proto/ProtoFlattener;Ldagger/Lazy;JLkotlinx/coroutines/CoroutineScope;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/proto/ProtoFlattener;",
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;J",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "batchDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protoFlattener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyFileProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/EventLogger;->batchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 25
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/EventLogger;->clock:Lcom/stripe/time/Clock;

    .line 26
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/EventLogger;->protoFlattener:Lcom/stripe/jvmcore/proto/ProtoFlattener;

    .line 27
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/EventLogger;->legacyFileProvider:Ldagger/Lazy;

    .line 28
    iput-wide p5, p0, Lcom/stripe/jvmcore/logging/EventLogger;->maxEntryBytes:J

    .line 29
    iput-object p7, p0, Lcom/stripe/jvmcore/logging/EventLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    iput-object p8, p0, Lcom/stripe/jvmcore/logging/EventLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-void
.end method

.method public static final synthetic access$getClock$p(Lcom/stripe/jvmcore/logging/EventLogger;)Lcom/stripe/time/Clock;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/EventLogger;->clock:Lcom/stripe/time/Clock;

    return-object p0
.end method

.method public static final synthetic access$getLegacyFileProvider$p(Lcom/stripe/jvmcore/logging/EventLogger;)Ldagger/Lazy;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/EventLogger;->legacyFileProvider:Ldagger/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getLogWriter$p(Lcom/stripe/jvmcore/logging/EventLogger;)Lcom/stripe/logwriter/LogWriter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/EventLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-object p0
.end method

.method public static final synthetic access$getMaxEntryBytes$p(Lcom/stripe/jvmcore/logging/EventLogger;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/EventLogger;->maxEntryBytes:J

    return-wide v0
.end method

.method public static final synthetic access$getProtoFlattener$p(Lcom/stripe/jvmcore/logging/EventLogger;)Lcom/stripe/jvmcore/proto/ProtoFlattener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/EventLogger;->protoFlattener:Lcom/stripe/jvmcore/proto/ProtoFlattener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/stripe/jvmcore/logging/EventLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final deleteLegacyFileIfPresent()Lkotlinx/coroutines/Job;
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/EventLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/jvmcore/logging/EventLogger$deleteLegacyFileIfPresent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/jvmcore/logging/EventLogger$deleteLegacyFileIfPresent$1;-><init>(Lcom/stripe/jvmcore/logging/EventLogger;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method private final logEvent(Lcom/stripe/proto/model/observability/schema/Payload;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/EventLogger;->batchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    new-instance v1, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;-><init>(Lcom/stripe/jvmcore/logging/EventLogger;Lcom/stripe/proto/model/observability/schema/Payload;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->add(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/EventLogger;->deleteLegacyFileIfPresent()Lkotlinx/coroutines/Job;

    .line 34
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/EventLogger;->batchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->init()V

    return-void
.end method

.method public final logAndroidEvent(Lcom/stripe/proto/model/observability/schema/android/Event;)V
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/stripe/proto/model/observability/schema/Payload;

    new-instance v4, Lcom/stripe/proto/model/observability/schema/android/Payload;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {v4, p1, v0, v2, v0}, Lcom/stripe/proto/model/observability/schema/android/Payload;-><init>(Lcom/stripe/proto/model/observability/schema/android/Event;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v8, 0x3b

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/model/observability/schema/Payload;-><init>(Lcom/stripe/proto/model/observability/schema/androidreader/Payload;Lcom/stripe/proto/model/observability/schema/power/Payload;Lcom/stripe/proto/model/observability/schema/android/Payload;Lcom/stripe/proto/model/observability/schema/crash/Payload;Lcom/stripe/proto/model/observability/schema/connectivity/Payload;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/logging/EventLogger;->logEvent(Lcom/stripe/proto/model/observability/schema/Payload;)V

    return-void
.end method

.method public final logAndroidReaderEvent(Lcom/stripe/proto/model/observability/schema/androidreader/Event;)V
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v1, Lcom/stripe/proto/model/observability/schema/Payload;

    new-instance v2, Lcom/stripe/proto/model/observability/schema/androidreader/Payload;

    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {v2, p1, v0, v3, v0}, Lcom/stripe/proto/model/observability/schema/androidreader/Payload;-><init>(Lcom/stripe/proto/model/observability/schema/androidreader/Event;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/model/observability/schema/Payload;-><init>(Lcom/stripe/proto/model/observability/schema/androidreader/Payload;Lcom/stripe/proto/model/observability/schema/power/Payload;Lcom/stripe/proto/model/observability/schema/android/Payload;Lcom/stripe/proto/model/observability/schema/crash/Payload;Lcom/stripe/proto/model/observability/schema/connectivity/Payload;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/logging/EventLogger;->logEvent(Lcom/stripe/proto/model/observability/schema/Payload;)V

    return-void
.end method

.method public final logCrashEvent(Lcom/stripe/proto/model/observability/schema/crash/Event;)V
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/stripe/proto/model/observability/schema/Payload;

    new-instance v5, Lcom/stripe/proto/model/observability/schema/crash/Payload;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {v5, p1, v0, v2, v0}, Lcom/stripe/proto/model/observability/schema/crash/Payload;-><init>(Lcom/stripe/proto/model/observability/schema/crash/Event;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v8, 0x37

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/model/observability/schema/Payload;-><init>(Lcom/stripe/proto/model/observability/schema/androidreader/Payload;Lcom/stripe/proto/model/observability/schema/power/Payload;Lcom/stripe/proto/model/observability/schema/android/Payload;Lcom/stripe/proto/model/observability/schema/crash/Payload;Lcom/stripe/proto/model/observability/schema/connectivity/Payload;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/logging/EventLogger;->logEvent(Lcom/stripe/proto/model/observability/schema/Payload;)V

    return-void
.end method

.method public final logPowerEvent(Lcom/stripe/proto/model/observability/schema/power/Event;)V
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/stripe/proto/model/observability/schema/Payload;

    new-instance v3, Lcom/stripe/proto/model/observability/schema/power/Payload;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {v3, p1, v0, v2, v0}, Lcom/stripe/proto/model/observability/schema/power/Payload;-><init>(Lcom/stripe/proto/model/observability/schema/power/Event;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v8, 0x3d

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/model/observability/schema/Payload;-><init>(Lcom/stripe/proto/model/observability/schema/androidreader/Payload;Lcom/stripe/proto/model/observability/schema/power/Payload;Lcom/stripe/proto/model/observability/schema/android/Payload;Lcom/stripe/proto/model/observability/schema/crash/Payload;Lcom/stripe/proto/model/observability/schema/connectivity/Payload;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/logging/EventLogger;->logEvent(Lcom/stripe/proto/model/observability/schema/Payload;)V

    return-void
.end method
