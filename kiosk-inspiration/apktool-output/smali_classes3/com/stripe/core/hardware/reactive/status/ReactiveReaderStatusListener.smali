.class public final Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;
.super Ljava/lang/Object;
.source "ReactiveReaderStatusListener.kt"

# interfaces
.implements Lcom/stripe/core/hardware/status/ReaderStatusListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010M\u001a\u00020\n2\u0006\u0010N\u001a\u00020\u001fJ\u000e\u0010O\u001a\u00020\n2\u0006\u0010P\u001a\u00020&J\u0008\u0010Q\u001a\u00020\nH\u0016J\u0008\u0010R\u001a\u00020\nH\u0016J\u0010\u0010S\u001a\u00020\n2\u0006\u0010T\u001a\u00020\u0016H\u0016J\u0008\u0010U\u001a\u00020\nH\u0016J\u0010\u0010V\u001a\u00020\n2\u0006\u0010W\u001a\u00020\u0013H\u0016J\u0010\u0010X\u001a\u00020\n2\u0006\u0010Y\u001a\u00020<H\u0016J\u0010\u0010Z\u001a\u00020\n2\u0006\u0010N\u001a\u00020\u001fH\u0016J\u0010\u0010[\u001a\u00020\n2\u0006\u0010\\\u001a\u00020&H\u0016J\u0016\u0010]\u001a\u00020\n2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001aH\u0016J\u0010\u0010_\u001a\u00020\n2\u0006\u0010`\u001a\u00020-H\u0016J\u0010\u0010a\u001a\u00020\n2\u0006\u0010b\u001a\u000201H\u0016J\u0010\u0010c\u001a\u00020\n2\u0006\u0010d\u001a\u000205H\u0016J\u0010\u0010e\u001a\u00020\n2\u0006\u0010b\u001a\u00020@H\u0016J\u0018\u0010f\u001a\u00020\n2\u0006\u0010g\u001a\u00020h2\u0006\u0010\\\u001a\u00020iH\u0016J\u0016\u0010j\u001a\u00020\n2\u000c\u0010k\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\u0010\u0010l\u001a\u00020\n2\u0006\u0010d\u001a\u000205H\u0016J\u0008\u0010m\u001a\u00020\nH\u0016J\u0014\u0010n\u001a\u0008\u0012\u0004\u0012\u0002Ho0\u000e\"\u0004\u0008\u0000\u0010oH\u0002R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000cR\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000cR\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u000cR\u001a\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u000cR\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u000cR\u0014\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u000cR\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020&0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u001a0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u000cR\u001a\u0010+\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u001a0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010,\u001a\u0008\u0012\u0004\u0012\u00020-0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u000cR\u0014\u0010/\u001a\u0008\u0012\u0004\u0012\u00020-0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u00100\u001a\u0008\u0012\u0004\u0012\u0002010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u000cR\u0014\u00103\u001a\u0008\u0012\u0004\u0012\u0002010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u00104\u001a\u0008\u0012\u0004\u0012\u0002050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\u000cR\u0014\u00107\u001a\u0008\u0012\u0004\u0012\u0002050\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00130\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u000cR\u0014\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010;\u001a\u0008\u0012\u0004\u0012\u00020<0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\u000cR\u0014\u0010>\u001a\u0008\u0012\u0004\u0012\u00020<0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010?\u001a\u0008\u0012\u0004\u0012\u00020@0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010\u000cR\u0014\u0010B\u001a\u0008\u0012\u0004\u0012\u00020@0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010C\u001a\u0008\u0012\u0004\u0012\u00020D0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010\u000cR\u0014\u0010F\u001a\u0008\u0012\u0004\u0012\u00020D0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010G\u001a\u0008\u0012\u0004\u0012\u0002050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010\u000cR\u0014\u0010I\u001a\u0008\u0012\u0004\u0012\u0002050\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010\u000cR\u0014\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006p"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "accountTypeSelectionRequestObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "getAccountTypeSelectionRequestObservable",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "accountTypeSelectionRequestPublishable",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "applicationSelectionRequestObservable",
        "getApplicationSelectionRequestObservable",
        "applicationSelectionRequestPublishable",
        "readerBatteryInfoObservable",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "getReaderBatteryInfoObservable",
        "readerCancellationObservable",
        "Lcom/stripe/hardware/status/CancellationType;",
        "getReaderCancellationObservable",
        "readerCancellationPublishable",
        "readerConfigurationObservable",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "getReaderConfigurationObservable",
        "readerConfigurationPublishable",
        "readerConnectObservable",
        "Lcom/stripe/core/hardware/Reader;",
        "getReaderConnectObservable",
        "readerConnectPublishable",
        "readerDeviceBusyObservable",
        "getReaderDeviceBusyObservable",
        "readerDeviceBusyPublishable",
        "readerDisconnectObservable",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "getReaderDisconnectObservable",
        "readerDisconnectPublishable",
        "readerDiscoveryObservable",
        "getReaderDiscoveryObservable",
        "readerDiscoveryPublishable",
        "readerDisplayMessageObservable",
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
        "getReaderDisplayMessageObservable",
        "readerDisplayMessagePublishable",
        "readerEventObservable",
        "Lcom/stripe/hardware/status/ReaderEvent;",
        "getReaderEventObservable",
        "readerEventPublishable",
        "readerExceptionObservable",
        "Lcom/stripe/hardware/status/ReaderException;",
        "getReaderExceptionObservable",
        "readerExceptionPublishable",
        "readerInfoObservable",
        "getReaderInfoObservable",
        "readerInfoPublishable",
        "readerLowBatteryObservable",
        "Lcom/stripe/hardware/status/ReaderBatteryStatus;",
        "getReaderLowBatteryObservable",
        "readerLowBatteryPublishable",
        "readerPowerEventObservable",
        "Lcom/stripe/hardware/status/ReaderPowerEvent;",
        "getReaderPowerEventObservable",
        "readerPowerEventPublishable",
        "readerRebootAttemptObservable",
        "Lcom/stripe/hardware/status/ReaderRebootAttempt;",
        "getReaderRebootAttemptObservable",
        "readerRebootAttemptPublishable",
        "sessionExceptionObservable",
        "getSessionExceptionObservable",
        "sessionExceptionPublishable",
        "sessionInitializedObservable",
        "getSessionInitializedObservable",
        "sessionInitializedPublishable",
        "emitSerialConnected",
        "reader",
        "emitSerialDisconnected",
        "disconnectCause",
        "handleAccountTypeSelectionRequest",
        "handleApplicationSelectionRequest",
        "handleCancellation",
        "type",
        "handleDeviceBusy",
        "handleDeviceInfo",
        "info",
        "handleLowBattery",
        "batteryStatus",
        "handleReaderConnect",
        "handleReaderDisconnect",
        "cause",
        "handleReaderDiscovery",
        "readers",
        "handleReaderDisplayMessage",
        "message",
        "handleReaderEvent",
        "event",
        "handleReaderException",
        "e",
        "handleReaderPowerEvent",
        "handleReaderRebootAttempt",
        "success",
        "",
        "Lcom/stripe/hardware/status/RebootCause;",
        "handleRequestReaderConfiguration",
        "options",
        "handleSessionException",
        "handleSessionInitialized",
        "serializedSubject",
        "T",
        "hardware-reactive_release"
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
.field private final accountTypeSelectionRequestObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final accountTypeSelectionRequestPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final applicationSelectionRequestObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final applicationSelectionRequestPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final readerBatteryInfoObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final readerCancellationObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/CancellationType;",
            ">;"
        }
    .end annotation
.end field

.field private final readerCancellationPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/CancellationType;",
            ">;"
        }
    .end annotation
.end field

.field private final readerConfigurationObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readerConfigurationPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readerConnectObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private final readerConnectPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDeviceBusyObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDeviceBusyPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDisconnectObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDisconnectPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDiscoveryObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Set<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readerDiscoveryPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Ljava/util/Set<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readerDisplayMessageObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDisplayMessagePublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final readerEventObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final readerEventPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/ReaderEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final readerExceptionObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderException;",
            ">;"
        }
    .end annotation
.end field

.field private final readerExceptionPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/ReaderException;",
            ">;"
        }
    .end annotation
.end field

.field private final readerInfoObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final readerInfoPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final readerLowBatteryObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderBatteryStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final readerLowBatteryPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/ReaderBatteryStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final readerPowerEventObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderPowerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final readerPowerEventPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/ReaderPowerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final readerRebootAttemptObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderRebootAttempt;",
            ">;"
        }
    .end annotation
.end field

.field private final readerRebootAttemptPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/ReaderRebootAttempt;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionExceptionObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderException;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionExceptionPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/stripe/hardware/status/ReaderException;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionInitializedObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionInitializedPublishable:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "logger"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 27
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDeviceBusyPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 28
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDisplayMessagePublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 29
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v3

    iput-object v3, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->accountTypeSelectionRequestPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 30
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->applicationSelectionRequestPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 31
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerCancellationPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 32
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v6

    iput-object v6, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerEventPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 34
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerConfigurationPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 35
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v8

    iput-object v8, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerConnectPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 36
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v9

    iput-object v9, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDisconnectPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 37
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v10

    iput-object v10, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerLowBatteryPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 38
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v11

    iput-object v11, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerInfoPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 39
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v12

    iput-object v12, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDiscoveryPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 40
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v13

    iput-object v13, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerExceptionPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 41
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v14

    iput-object v14, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerRebootAttemptPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 42
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v15

    iput-object v15, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->sessionInitializedPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    move-object/from16 p1, v1

    .line 43
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->sessionExceptionPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    move-object/from16 v16, v1

    .line 44
    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerPowerEventPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    .line 47
    check-cast v5, Lio/reactivex/rxjava3/core/Observable;

    iput-object v5, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerCancellationObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 48
    move-object/from16 v5, p1

    check-cast v5, Lio/reactivex/rxjava3/core/Observable;

    iput-object v5, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDeviceBusyObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 50
    check-cast v2, Lio/reactivex/rxjava3/core/Observable;

    iput-object v2, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDisplayMessageObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 52
    invoke-virtual {v6}, Lio/reactivex/rxjava3/subjects/Subject;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string v5, "distinctUntilChanged(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerEventObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 54
    check-cast v3, Lio/reactivex/rxjava3/core/Observable;

    iput-object v3, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->accountTypeSelectionRequestObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 56
    check-cast v4, Lio/reactivex/rxjava3/core/Observable;

    iput-object v4, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->applicationSelectionRequestObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 58
    check-cast v7, Lio/reactivex/rxjava3/core/Observable;

    iput-object v7, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerConfigurationObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 59
    check-cast v8, Lio/reactivex/rxjava3/core/Observable;

    iput-object v8, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerConnectObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 60
    check-cast v9, Lio/reactivex/rxjava3/core/Observable;

    iput-object v9, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDisconnectObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 61
    check-cast v10, Lio/reactivex/rxjava3/core/Observable;

    iput-object v10, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerLowBatteryObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 66
    sget-object v2, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerInfoObservable$1;->INSTANCE:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerInfoObservable$1;

    check-cast v2, Lio/reactivex/rxjava3/functions/Predicate;

    invoke-virtual {v11, v2}, Lio/reactivex/rxjava3/subjects/Subject;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string v3, "filter(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerInfoObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 72
    sget-object v2, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1;->INSTANCE:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1;

    check-cast v2, Lio/reactivex/rxjava3/functions/Predicate;

    invoke-virtual {v11, v2}, Lio/reactivex/rxjava3/subjects/Subject;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerBatteryInfoObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 75
    check-cast v12, Lio/reactivex/rxjava3/core/Observable;

    iput-object v12, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDiscoveryObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 76
    check-cast v13, Lio/reactivex/rxjava3/core/Observable;

    iput-object v13, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerExceptionObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 77
    check-cast v14, Lio/reactivex/rxjava3/core/Observable;

    iput-object v14, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerRebootAttemptObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 78
    check-cast v15, Lio/reactivex/rxjava3/core/Observable;

    iput-object v15, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->sessionInitializedObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 79
    move-object/from16 v2, v16

    check-cast v2, Lio/reactivex/rxjava3/core/Observable;

    iput-object v2, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->sessionExceptionObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 80
    check-cast v1, Lio/reactivex/rxjava3/core/Observable;

    iput-object v1, v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerPowerEventObservable:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method

.method private final serializedSubject()Lio/reactivex/rxjava3/subjects/Subject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "TT;>;"
        }
    .end annotation

    .line 155
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->toSerialized()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v0

    const-string v1, "toSerialized(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final emitSerialConnected(Lcom/stripe/core/hardware/Reader;)V
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "emitSerialConnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 160
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerConnectPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final emitSerialDisconnected(Lcom/stripe/hardware/status/DisconnectCause;)V
    .locals 3

    const-string v0, "disconnectCause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "emitSerialDisconnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 165
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDisconnectPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final getAccountTypeSelectionRequestObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->accountTypeSelectionRequestObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getApplicationSelectionRequestObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->applicationSelectionRequestObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderBatteryInfoObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerBatteryInfoObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderCancellationObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/CancellationType;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerCancellationObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderConfigurationObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerConfigurationObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderConnectObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerConnectObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderDeviceBusyObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDeviceBusyObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderDisconnectObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/DisconnectCause;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDisconnectObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderDiscoveryObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Set<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDiscoveryObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderDisplayMessageObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDisplayMessageObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderEventObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderEvent;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerEventObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderExceptionObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderException;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerExceptionObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderInfoObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerInfoObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderLowBatteryObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderBatteryStatus;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerLowBatteryObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderPowerEventObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderPowerEvent;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerPowerEventObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderRebootAttemptObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderRebootAttempt;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerRebootAttemptObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getSessionExceptionObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderException;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->sessionExceptionObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getSessionInitializedObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->sessionInitializedObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public handleAccountTypeSelectionRequest()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->accountTypeSelectionRequestPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleApplicationSelectionRequest()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->applicationSelectionRequestPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleCancellation(Lcom/stripe/hardware/status/CancellationType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerCancellationPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleDeviceBusy()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDeviceBusyPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleDeviceInfo(Lcom/stripe/hardware/status/ReaderInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerInfoPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleLowBattery(Lcom/stripe/hardware/status/ReaderBatteryStatus;)V
    .locals 1

    const-string v0, "batteryStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerLowBatteryPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderConnect(Lcom/stripe/core/hardware/Reader;)V
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "handleReaderConnect"

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 114
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerConnectPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V
    .locals 4

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "handleReaderDisconnect"

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 119
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDisconnectPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderDiscovery(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDiscoveryPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderDisplayMessage(Lcom/stripe/hardware/status/ReaderDisplayMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerDisplayMessagePublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderEvent(Lcom/stripe/hardware/status/ReaderEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerEventPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderException(Lcom/stripe/hardware/status/ReaderException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerExceptionPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderPowerEvent(Lcom/stripe/hardware/status/ReaderPowerEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerPowerEventPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderRebootAttempt(ZLcom/stripe/hardware/status/RebootCause;)V
    .locals 2

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerRebootAttemptPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    new-instance v1, Lcom/stripe/hardware/status/ReaderRebootAttempt;

    invoke-direct {v1, p1, p2}, Lcom/stripe/hardware/status/ReaderRebootAttempt;-><init>(ZLcom/stripe/hardware/status/RebootCause;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleRequestReaderConfiguration(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->readerConfigurationPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleSessionException(Lcom/stripe/hardware/status/ReaderException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->sessionExceptionPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleSessionInitialized()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->sessionInitializedPublishable:Lio/reactivex/rxjava3/subjects/Subject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
