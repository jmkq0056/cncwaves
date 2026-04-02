.class public final Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;
.super Ljava/lang/Object;
.source "DefaultMposReaderEventLogger.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultMposReaderEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultMposReaderEventLogger.kt\ncom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,170:1\n49#2:171\n51#2:175\n49#2:176\n51#2:180\n49#2:181\n51#2:185\n49#2:186\n51#2:190\n49#2:191\n51#2:195\n56#2:196\n59#2:200\n49#2:201\n51#2:205\n46#3:172\n51#3:174\n46#3:177\n51#3:179\n46#3:182\n51#3:184\n46#3:187\n51#3:189\n46#3:192\n51#3:194\n46#3:197\n51#3:199\n46#3:202\n51#3:204\n105#4:173\n105#4:178\n105#4:183\n105#4:188\n105#4:193\n105#4:198\n105#4:203\n189#5:206\n*S KotlinDebug\n*F\n+ 1 DefaultMposReaderEventLogger.kt\ncom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger\n*L\n103#1:171\n103#1:175\n104#1:176\n104#1:180\n57#1:181\n57#1:185\n72#1:186\n72#1:190\n75#1:191\n75#1:195\n90#1:196\n90#1:200\n92#1:201\n92#1:205\n103#1:172\n103#1:174\n104#1:177\n104#1:179\n57#1:182\n57#1:184\n72#1:187\n72#1:189\n75#1:192\n75#1:194\n90#1:197\n90#1:199\n92#1:202\n92#1:204\n103#1:173\n104#1:178\n57#1:183\n72#1:188\n75#1:193\n90#1:198\n92#1:203\n113#1:206\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 %2\u00020\u0001:\u0001%B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0002J\u0008\u0010\u001e\u001a\u00020\u0019H\u0016J\"\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u000c*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u000c2\u0006\u0010!\u001a\u00020\"H\u0002J\"\u0010#\u001a\u0008\u0012\u0004\u0012\u00020$0\u000c*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u000c2\u0006\u0010!\u001a\u00020\"H\u0002R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
        "reactiveReaderStatusListener",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "terminalStatusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "structuredEventLogger",
        "Lcom/stripe/loggingmodels/StructuredEventLogger;",
        "(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/loggingmodels/StructuredEventLogger;)V",
        "connectAndDisconnectEvents",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
        "eventStream",
        "getEventStream",
        "()Lkotlinx/coroutines/flow/Flow;",
        "loggingJob",
        "Lkotlinx/coroutines/Job;",
        "readerInfos",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "getReaderInfos",
        "getTerminalStatusManager",
        "()Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "dispose",
        "",
        "hasBatteryLevelChangedSignificantly",
        "",
        "old",
        "new",
        "init",
        "batteryEventStream",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;",
        "connectedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "coinCellVoltageEventStream",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;",
        "Companion",
        "common_publish"
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
.field private static final BATTERY_LEVEL_CHANGE_THRESHOLD:F = 0.05f

.field public static final BATTERY_UPDATE_DEBOUNCE_MILLIS:J = 0x7530L

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$Companion;

.field public static final LOGGER_NAME:Ljava/lang/String; = "MposReaderEventLogger"


# instance fields
.field private final connectAndDisconnectEvents:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private loggingJob:Lkotlinx/coroutines/Job;

.field private final reactiveReaderStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final structuredEventLogger:Lcom/stripe/loggingmodels/StructuredEventLogger;

.field private final terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->Companion:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/loggingmodels/StructuredEventLogger;)V
    .locals 1

    const-string v0, "reactiveReaderStatusListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalStatusManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "structuredEventLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->reactiveReaderStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    .line 35
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 36
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 37
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->structuredEventLogger:Lcom/stripe/loggingmodels/StructuredEventLogger;

    const/4 p1, 0x2

    .line 103
    new-array p1, p1, [Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getReaderConnectedFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    .line 173
    new-instance p4, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$special$$inlined$map$1;

    invoke-direct {p4, p3}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p4, Lkotlinx/coroutines/flow/Flow;

    const/4 p3, 0x0

    .line 175
    aput-object p4, p1, p3

    .line 104
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getReaderDisconnectedFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 178
    new-instance p3, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$special$$inlined$map$2;

    invoke-direct {p3, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p3, Lkotlinx/coroutines/flow/Flow;

    const/4 p2, 0x1

    .line 180
    aput-object p3, p1, p2

    .line 102
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->connectAndDisconnectEvents:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final synthetic access$batteryEventStream(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->batteryEventStream(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$coinCellVoltageEventStream(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->coinCellVoltageEventStream(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEventStream(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->getEventStream()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getReaderInfos(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->getReaderInfos()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStructuredEventLogger$p(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;)Lcom/stripe/loggingmodels/StructuredEventLogger;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->structuredEventLogger:Lcom/stripe/loggingmodels/StructuredEventLogger;

    return-object p0
.end method

.method public static final synthetic access$hasBatteryLevelChangedSignificantly(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/hardware/status/ReaderInfo;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->hasBatteryLevelChangedSignificantly(Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/hardware/status/ReaderInfo;)Z

    move-result p0

    return p0
.end method

.method private final batteryEventStream(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 183
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 57
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;-><init>(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->runningReduce(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 71
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$3;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$3;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->debounce(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 188
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 73
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$5;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$5;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 193
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method private final coinCellVoltageEventStream(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 91
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 203
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method private final getEventStream()Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->connectAndDisconnectEvents:Lkotlinx/coroutines/flow/Flow;

    .line 206
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$special$$inlined$flatMapLatest$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method private final getReaderInfos()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->reactiveReaderStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-virtual {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderBatteryInfoObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-static {v0}, Lkotlinx/coroutines/rx3/RxConvertKt;->asFlow(Lio/reactivex/rxjava3/core/ObservableSource;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method private final hasBatteryLevelChangedSignificantly(Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/hardware/status/ReaderInfo;)Z
    .locals 1

    .line 131
    invoke-virtual {p2}, Lcom/stripe/hardware/status/ReaderInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 132
    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-float/2addr p1, p2

    .line 133
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->loggingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 157
    :cond_0
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->loggingJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getTerminalStatusManager()Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    return-object v0
.end method

.method public init()V
    .locals 9

    .line 138
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->loggingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1;

    invoke-direct {v0, p0, v1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1;-><init>(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->loggingJob:Lkotlinx/coroutines/Job;

    return-void
.end method
