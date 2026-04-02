.class public final Lcom/stripe/offlinemode/DefaultOfflineEventHandler;
.super Ljava/lang/Object;
.source "DefaultOfflineEventHandler.kt"

# interfaces
.implements Lcom/stripe/offlinemode/OfflineEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/DefaultOfflineEventHandler$Companion;,
        Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineEventHandler.kt\ncom/stripe/offlinemode/DefaultOfflineEventHandler\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 7 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,926:1\n17#2:927\n19#2:931\n49#2:932\n51#2:936\n46#3:928\n51#3:930\n46#3:933\n51#3:935\n105#4:929\n105#4:934\n1#5:937\n44#6,4:938\n453#7:942\n403#7:943\n1238#8,4:944\n1549#8:948\n1620#8,3:949\n1549#8:952\n1620#8,3:953\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineEventHandler.kt\ncom/stripe/offlinemode/DefaultOfflineEventHandler\n*L\n106#1:927\n106#1:931\n115#1:932\n115#1:936\n106#1:928\n106#1:930\n115#1:933\n115#1:935\n106#1:929\n115#1:934\n648#1:938,4\n747#1:942\n747#1:943\n747#1:944,4\n847#1:948\n847#1:949,3\n875#1:952\n875#1:953,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u0000 }2\u00020\u0001:\u0002}~B\u0097\u0001\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u000e\u0008\u0001\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\"\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0016j\u0002`\u001b\u0012\u0016\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u001dj\u0002` \u00a2\u0006\u0002\u0010!J\u0016\u0010-\u001a\u00020&2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020&0/H\u0016Jb\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u00106\u001a\u0004\u0018\u0001052\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0006\u0010<\u001a\u0002052\u0006\u0010=\u001a\u00020>H\u0002JR\u0010?\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020)092\u0006\u00102\u001a\u0002032\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0006\u0010<\u001a\u000205H\u0002J\u0010\u0010@\u001a\u00020&2\u0006\u0010A\u001a\u000205H\u0016J\u0008\u0010B\u001a\u00020&H\u0016J\'\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020>2\u0008\u0010H\u001a\u0004\u0018\u00010)H\u0002\u00a2\u0006\u0002\u0010IJ \u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020M2\u0006\u0010G\u001a\u00020>2\u0006\u0010H\u001a\u00020)H\u0002J\u0008\u0010N\u001a\u00020&H\u0007JX\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020*2>\u0010T\u001a:\u0012\u0015\u0012\u0013\u0018\u00010V\u00a2\u0006\u000c\u0008W\u0012\u0008\u0008X\u0012\u0004\u0008\u0008(Y\u0012\u0015\u0012\u0013\u0018\u00010Z\u00a2\u0006\u000c\u0008W\u0012\u0008\u0008X\u0012\u0004\u0008\u0008([\u0012\u0004\u0012\u00020&0Uj\u0002`\\H\u0016JV\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020^2\u0006\u0010`\u001a\u0002052\u0006\u0010a\u001a\u00020b2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0006\u0010<\u001a\u000205H\u0016JV\u0010c\u001a\u00020d2\u0006\u0010_\u001a\u00020d2\u0006\u0010`\u001a\u0002052\u0006\u0010e\u001a\u00020f2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0006\u0010<\u001a\u000205H\u0016JF\u0010g\u001a\u00020^2\u0006\u0010h\u001a\u00020F2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0006\u0010<\u001a\u000205H\u0016JF\u0010i\u001a\u00020d2\u0006\u0010h\u001a\u00020M2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0006\u0010<\u001a\u000205H\u0016J\"\u0010j\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020k0;2\u000c\u0010l\u001a\u0008\u0012\u0004\u0012\u00020508H\u0016J \u0010m\u001a\u00020&2\u0006\u0010n\u001a\u0002052\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020*H\u0016J\u0008\u0010o\u001a\u00020#H\u0002J\u0010\u0010p\u001a\u00020&2\u0006\u0010n\u001a\u000205H\u0002J\u0010\u0010q\u001a\u00020&2\u0006\u0010S\u001a\u00020*H\u0002J\u0008\u0010r\u001a\u00020&H\u0016J\u0010\u0010s\u001a\u00020&2\u0006\u0010A\u001a\u000205H\u0016J!\u0010t\u001a\u00020&2\u0008\u0010u\u001a\u0004\u0018\u0001052\u0008\u0010v\u001a\u0004\u0018\u00010>H\u0002\u00a2\u0006\u0002\u0010wJ,\u0010x\u001a\u0002Hy\"\u0006\u0008\u0000\u0010y\u0018\u00012\u0006\u0010z\u001a\u0002052\u000c\u0010{\u001a\u0008\u0012\u0004\u0012\u0002Hy0/H\u0082\u0008\u00a2\u0006\u0002\u0010|R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u001dj\u0002` X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0016j\u0002`\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010(\u001a\u00020)*\u00020*8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;",
        "Lcom/stripe/offlinemode/OfflineEventHandler;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "offlineIdGenerator",
        "Lcom/stripe/offlinemode/OfflineIdGenerator;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "activeLocationConfigRepository",
        "Lcom/stripe/device/ActiveLocationConfigRepository;",
        "posInfoFactory",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "offlineForwardingManager",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "stripeNetworkStatusFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "offlineDiscreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/time/Clock;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/offlinemode/OfflineIdGenerator;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "enqueueActivateReaderJob",
        "Lkotlinx/coroutines/Job;",
        "onlineTransitionFlow",
        "restartForwardingFlow",
        "",
        "restartForwardingOfflinePaymentsJob",
        "supportsOffline",
        "",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "getSupportsOffline",
        "(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z",
        "activateReaderWhenOnline",
        "enqueueActivateReader",
        "Lkotlin/Function0;",
        "buildBaseConfirmRequest",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "entityId",
        "",
        "offlineId",
        "requestParams",
        "",
        "Lkotlin/Pair;",
        "requestHeaders",
        "",
        "endpoint",
        "createdAt",
        "",
        "buildBaseCreateRequest",
        "cancelPendingActivations",
        "reason",
        "clear",
        "createPaymentIntent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "createPaymentIntentRequest",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "timestampMs",
        "livemode",
        "(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;JLjava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentIntent;",
        "createSetupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "createSetupIntentRequest",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "listenForLocationOfflineConfig",
        "onActivateReaderRequest",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionConfiguration",
        "setReconnectParams",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "Lkotlin/ParameterName;",
        "name",
        "bluetoothConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "usbConfig",
        "Lcom/stripe/offlinemode/helpers/SetReconnectParams;",
        "onConfirmPaymentIntentRequest",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "intent",
        "emvData",
        "confirmPaymentIntentRequest",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "onConfirmSetupIntentRequest",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "confirmSetupIntentRequest",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
        "onCreatePaymentIntentRequest",
        "request",
        "onCreateSetupIntentRequest",
        "onLocationsRequests",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "deviceSerials",
        "onReaderActivated",
        "accountId",
        "resumeForwardingOfflinePayments",
        "setAccountId",
        "setOfflineSetupIntentSupport",
        "startForwardingOfflinePayments",
        "stopForwardingOfflinePayments",
        "validatePaymentAmount",
        "currency",
        "amount",
        "(Ljava/lang/String;Ljava/lang/Long;)V",
        "wrapErrorsAsTerminalException",
        "T",
        "errorMessage",
        "block",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "Companion",
        "ParsedReaderInfo",
        "offlinemode_release"
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
.field public static final Companion:Lcom/stripe/offlinemode/DefaultOfflineEventHandler$Companion;

.field private static final FORCE_RESUME_INTERVAL_MS:J = 0x927c0L

.field private static final LOCATION_CONFIG_RETRY_INTERVAL_MS:J = 0xea60L

.field private static final ONE_SECOND_MS:J = 0x3e8L

.field private static final PAYMENT_OFFLINE_ID_KEY:Ljava/lang/String; = "payment_method_options[card_present][offline][id]"

.field private static final PAYMENT_STORED_AT_KEY:Ljava/lang/String; = "payment_method_data[card_present][offline][stored_at]"


# instance fields
.field private final activeLocationConfigRepository:Lcom/stripe/device/ActiveLocationConfigRepository;

.field private final clock:Lcom/stripe/time/Clock;

.field private enqueueActivateReaderJob:Lkotlinx/coroutines/Job;

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

.field private final offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

.field private final offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineForwardingManager:Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

.field private final offlineIdGenerator:Lcom/stripe/offlinemode/OfflineIdGenerator;

.field private final offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

.field private final onlineTransitionFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

.field private final restartForwardingFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private restartForwardingOfflinePaymentsJob:Lkotlinx/coroutines/Job;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final stripeNetworkStatusFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->Companion:Lcom/stripe/offlinemode/DefaultOfflineEventHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/time/Clock;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/offlinemode/OfflineIdGenerator;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .param p2    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .param p9    # Lkotlinx/coroutines/flow/Flow;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lcom/stripe/offlinemode/OfflineIdGenerator;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineIdGenerator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeLocationConfigRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "posInfoFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineForwardingManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripeNetworkStatusFlow"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDiscreteLogger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->clock:Lcom/stripe/time/Clock;

    .line 80
    iput-object p2, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 81
    iput-object p3, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineIdGenerator:Lcom/stripe/offlinemode/OfflineIdGenerator;

    .line 82
    iput-object p4, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 83
    iput-object p5, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->activeLocationConfigRepository:Lcom/stripe/device/ActiveLocationConfigRepository;

    .line 84
    iput-object p6, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    .line 85
    iput-object p7, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineForwardingManager:Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

    .line 86
    iput-object p8, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 87
    iput-object p9, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->stripeNetworkStatusFlow:Lkotlinx/coroutines/flow/Flow;

    .line 88
    iput-object p10, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 89
    iput-object p11, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 95
    invoke-direct {p0}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->resumeForwardingOfflinePayments()Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->restartForwardingOfflinePaymentsJob:Lkotlinx/coroutines/Job;

    .line 929
    new-instance p1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$special$$inlined$filter$1;

    invoke-direct {p1, p9}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 106
    iput-object p1, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->onlineTransitionFlow:Lkotlinx/coroutines/flow/Flow;

    const/4 p2, 0x2

    .line 115
    new-array p2, p2, [Lkotlinx/coroutines/flow/Flow;

    .line 934
    new-instance p3, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$special$$inlined$map$1;

    invoke-direct {p3, p1}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p3, Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x0

    .line 936
    aput-object p3, p2, p1

    .line 116
    new-instance p1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$restartForwardingFlow$2;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$restartForwardingFlow$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 114
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 122
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->restartForwardingFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final synthetic access$getActiveLocationConfigRepository$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lcom/stripe/device/ActiveLocationConfigRepository;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->activeLocationConfigRepository:Lcom/stripe/device/ActiveLocationConfigRepository;

    return-object p0
.end method

.method public static final synthetic access$getEnqueueActivateReaderJob$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->enqueueActivateReaderJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getOfflineForwardingManager$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineForwardingManager:Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

    return-object p0
.end method

.method public static final synthetic access$getOfflineRepository$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lcom/stripe/offlinemode/storage/OfflineRepository;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    return-object p0
.end method

.method public static final synthetic access$getOnlineTransitionFlow$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->onlineTransitionFlow:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public static final synthetic access$getRestartForwardingFlow$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->restartForwardingFlow:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public static final synthetic access$setEnqueueActivateReaderJob$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->enqueueActivateReaderJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final buildBaseConfirmRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;J)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 872
    move-object/from16 v1, p4

    check-cast v1, Ljava/util/Collection;

    const-wide/16 v2, 0x3e8

    .line 874
    div-long v2, p7, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "payment_method_data[card_present][offline][stored_at]"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 952
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 953
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 954
    check-cast v3, Lkotlin/Pair;

    .line 875
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    new-instance v5, Lcom/stripe/proto/model/offline_mode/NameValuePair;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/stripe/proto/model/offline_mode/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 954
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 955
    :cond_0
    move-object/from16 v16, v2

    check-cast v16, Ljava/util/List;

    .line 877
    new-instance v6, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    .line 879
    iget-object v1, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object v8

    .line 882
    iget-object v1, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getCurrentConnectionId()J

    move-result-wide v11

    const/16 v23, 0x1a20

    const/16 v24, 0x0

    const-wide/16 v13, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    move-object/from16 v15, p5

    move-object/from16 v17, p6

    move-wide/from16 v19, p7

    .line 877
    invoke-direct/range {v6 .. v24}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;-><init>(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method private final buildBaseCreateRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lkotlin/Pair;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 839
    iget-object v1, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineIdGenerator:Lcom/stripe/offlinemode/OfflineIdGenerator;

    move-object/from16 v3, p1

    invoke-interface {v1, v3}, Lcom/stripe/offlinemode/OfflineIdGenerator;->generateOfflineId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Ljava/lang/String;

    move-result-object v5

    .line 840
    iget-object v1, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v15

    .line 841
    iget-object v1, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getCurrentConnectionId()J

    move-result-wide v7

    .line 842
    iget-object v1, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v1, v7, v8}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineConnection(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object v1

    .line 843
    iget-object v2, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v2, v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineLocationForConnection(Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v1

    .line 845
    move-object/from16 v2, p2

    check-cast v2, Ljava/util/Collection;

    .line 846
    const-string v4, "payment_method_options[card_present][offline][id]"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 948
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 949
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 950
    check-cast v6, Lkotlin/Pair;

    .line 847
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Ljava/lang/String;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/String;

    new-instance v17, Lcom/stripe/proto/model/offline_mode/NameValuePair;

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v22}, Lcom/stripe/proto/model/offline_mode/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v17

    .line 950
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 951
    :cond_0
    move-object v12, v4

    check-cast v12, Ljava/util/List;

    .line 852
    iget-object v2, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object v4

    .line 851
    new-instance v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    const/16 v19, 0x1a28

    const/16 v20, 0x0

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v2 .. v20}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;-><init>(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, v1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 851
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    return-object v1
.end method

.method private final createPaymentIntent(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;JLjava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentIntent;
    .locals 54

    move-object/from16 v0, p1

    const/16 v1, 0x3e8

    int-to-long v1, v1

    .line 601
    div-long v1, p2, v1

    .line 602
    iget-object v7, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    .line 603
    iget-object v8, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    .line 605
    iget-object v10, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    .line 606
    iget-object v11, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    .line 607
    iget-object v12, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    .line 608
    iget-object v15, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    .line 609
    iget-object v3, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    .line 610
    iget-object v4, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    .line 611
    iget-object v5, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    .line 612
    iget-object v6, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    .line 613
    iget-object v9, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    .line 599
    new-instance v16, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 601
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v39, 0x3

    const/16 v40, 0x0

    move-object/from16 v25, v4

    const/4 v4, 0x0

    move-object/from16 v31, v6

    const/4 v6, 0x0

    move-object/from16 v32, v9

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v20, v3

    move-object/from16 v3, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const v38, -0x18610bdc

    move-object/from16 v13, p4

    move-object/from16 v26, v5

    move-object v5, v1

    .line 599
    invoke-direct/range {v3 .. v40}, Lcom/stripe/proto/model/rest/PaymentIntent;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 616
    iget-object v0, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/stripe/proto/model/rest/Method;->valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Method;

    move-result-object v35

    const/16 v52, 0x3

    const/16 v53, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const v51, -0x40001

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v53}, Lcom/stripe/proto/model/rest/PaymentIntent;->copy$default(Lcom/stripe/proto/model/rest/PaymentIntent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;IILjava/lang/Object;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object v3
.end method

.method private final createSetupIntent(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;JZ)Lcom/stripe/proto/model/rest/SetupIntent;
    .locals 27

    move-object/from16 v0, p1

    const/16 v1, 0x3e8

    int-to-long v1, v1

    .line 632
    div-long v1, p2, v1

    .line 634
    iget-object v7, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    .line 635
    iget-object v9, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    .line 636
    iget-object v6, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    .line 637
    iget-object v14, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    .line 638
    iget-object v0, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    .line 631
    new-instance v3, Lcom/stripe/proto/model/rest/SetupIntent;

    .line 632
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 633
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const v25, 0x1dd3d3

    const/16 v26, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v0

    .line 631
    invoke-direct/range {v3 .. v26}, Lcom/stripe/proto/model/rest/SetupIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method private final getSupportsOffline(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z
    .locals 2

    .line 260
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 261
    :cond_0
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 262
    :cond_1
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    :goto_1
    if-eqz v0, :cond_2

    return v1

    .line 265
    :cond_2
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    if-eqz v0, :cond_3

    .line 266
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->getSupportsOfflineMode()Z

    move-result p1

    return p1

    .line 268
    :cond_3
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 269
    :cond_4
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    :goto_2
    if-eqz v1, :cond_5

    const/4 p1, 0x0

    return p1

    .line 270
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final resumeForwardingOfflinePayments()Lkotlinx/coroutines/Job;
    .locals 6

    .line 676
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$resumeForwardingOfflinePayments$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$resumeForwardingOfflinePayments$1;-><init>(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method private final setAccountId(Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->setActiveAccountId(Ljava/lang/String;)V

    return-void
.end method

.method private final setOfflineSetupIntentSupport(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 130
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    if-eqz v1, :cond_0

    .line 131
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->getSupportsOfflineSetupIntents()Z

    move-result p1

    goto :goto_4

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 134
    :cond_1
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    :goto_0
    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    .line 135
    :cond_2
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    :goto_1
    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    .line 136
    :cond_3
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    :goto_2
    if-eqz v1, :cond_4

    move p1, v2

    goto :goto_3

    .line 137
    :cond_4
    instance-of p1, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    :goto_3
    if-eqz p1, :cond_5

    move p1, v2

    .line 129
    :goto_4
    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->setCurrentConnectionSupportsOfflineSetupIntents(Z)V

    return-void

    .line 137
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final validatePaymentAmount(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "Payment amount ("

    const-string v1, "Payment currency ("

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 704
    :try_start_0
    iget-object v2, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v2, p1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->getMaxTransactionLimit(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 709
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    return-void

    .line 710
    :cond_0
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 711
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") must not exceed maximum limit ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") allowed offline."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 710
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 704
    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-object p2, v1

    .line 705
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_OFFLINE_CURRENCY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is not configured for offline transactions."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 704
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 697
    :cond_2
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 698
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 699
    const-string v2, "Payment amount cannot be null"

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 697
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 690
    :cond_3
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 691
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 692
    const-string v2, "Payment currency cannot be null"

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 690
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 716
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 717
    const-string p2, "DeclineReason"

    const-string v1, "amount_error"

    invoke-static {p2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 716
    sget-object p2, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$validatePaymentAmount$1;->INSTANCE:Lcom/stripe/offlinemode/DefaultOfflineEventHandler$validatePaymentAmount$1;

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 720
    throw p1
.end method

.method private final synthetic wrapErrorsAsTerminalException(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 895
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 897
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 898
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .line 897
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method


# virtual methods
.method public activateReaderWhenOnline(Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "enqueueActivateReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->enqueueActivateReaderJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 573
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Enqueuing a new activate reader job."

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lkotlinx/coroutines/JobKt;->cancel$default(Lkotlinx/coroutines/Job;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 576
    :cond_0
    iget-object v4, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$activateReaderWhenOnline$2;

    invoke-direct {v0, p0, p1, v1}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$activateReaderWhenOnline$2;-><init>(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 579
    new-instance v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$activateReaderWhenOnline$4;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$activateReaderWhenOnline$4;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/KMutableProperty0;

    invoke-interface {v0, p1}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelPendingActivations(Ljava/lang/String;)V
    .locals 3

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->enqueueActivateReaderJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lkotlinx/coroutines/JobKt;->cancel$default(Lkotlinx/coroutines/Job;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->clearCache()V

    return-void
.end method

.method public final listenForLocationOfflineConfig()V
    .locals 8

    .line 938
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0, p0}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)V

    check-cast v1, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 653
    iget-object v2, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1;-><init>(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onActivateReaderRequest(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    const-string v11, "PreviouslyPairedOnline"

    const-string v2, "Location "

    const-string v4, "reader"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "connectionConfiguration"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "setReconnectParams"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x1

    .line 284
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, v1

    check-cast v4, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    .line 287
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-string v5, "Reader serial must not be null."

    const/4 v14, 0x0

    const-string v6, "Required value was null."

    if-eqz v4, :cond_7

    .line 289
    :try_start_1
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    .line 290
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 291
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/Location;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    goto :goto_0

    :cond_0
    move-object/from16 v22, v14

    :goto_0
    if-eqz v22, :cond_4

    .line 292
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getIpAddress()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 293
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getBaseUrl()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2

    .line 294
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getLabel()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 288
    new-instance v15, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x3c

    const/16 v27, 0x0

    invoke-direct/range {v15 .. v27}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_8

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v6, 0x0

    :goto_1
    const/16 v17, 0x0

    goto/16 :goto_11

    .line 298
    :cond_7
    :try_start_2
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    if-eqz v4, :cond_8

    move v4, v12

    goto :goto_2

    .line 299
    :cond_8
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    :goto_2
    if-eqz v4, :cond_9

    move v4, v12

    goto :goto_3

    .line 300
    :cond_9
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    :goto_3
    if-eqz v4, :cond_a

    move v4, v12

    goto :goto_4

    .line 301
    :cond_a
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    :goto_4
    if-eqz v4, :cond_b

    move v4, v12

    goto :goto_5

    .line 302
    :cond_b
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    :goto_5
    if-eqz v4, :cond_23

    .line 304
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_22

    .line 305
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_21

    .line 306
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getConfigVersion()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_20

    .line 308
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeysetId()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const-string v5, ""

    if-nez v4, :cond_c

    move-object/from16 v20, v5

    goto :goto_6

    :cond_c
    move-object/from16 v20, v4

    .line 309
    :goto_6
    :try_start_3
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move-object/from16 v21, v5

    goto :goto_7

    :cond_d
    move-object/from16 v21, v4

    .line 303
    :goto_7
    new-instance v15, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3c1

    const/16 v27, 0x0

    invoke-direct/range {v15 .. v27}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 314
    :goto_8
    invoke-direct {v1, v0}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->setOfflineSetupIntentSupport(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V

    .line 315
    iget-object v4, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v4}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v24

    .line 316
    iget-object v4, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v4}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object v4

    .line 318
    iget-object v5, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v5, v3, v4}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineConnectionEntitiesIfSaved(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;)Lkotlin/Triple;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v5, :cond_14

    .line 321
    :try_start_4
    invoke-virtual {v5}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    invoke-virtual {v5}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-virtual {v5}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 323
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->getLocationRegistration()Lcom/stripe/stripeterminal/internal/models/LocationRegistration;

    move-result-object v8

    .line 324
    instance-of v9, v8, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UseId;

    if-eqz v9, :cond_11

    .line 325
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->getLocationId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 327
    iget-object v6, v5, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v6, :cond_e

    iget-object v6, v6, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    goto :goto_9

    :cond_e
    move-object v6, v14

    :goto_9
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 328
    iget-object v5, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v5, v8}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineLocationByStripeId(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v5

    if-eqz v5, :cond_f

    goto :goto_a

    :cond_f
    new-instance v16, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 329
    sget-object v17, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 330
    const-string v18, "You must connect a reader online at this location before it can be used to collect payments offline."

    const/16 v21, 0xc

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 328
    invoke-direct/range {v16 .. v22}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v16

    .line 325
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_11
    instance-of v6, v8, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;

    if-eqz v6, :cond_13

    .line 341
    :cond_12
    :goto_a
    iget-object v6, v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    xor-int/2addr v6, v12

    .line 343
    :try_start_5
    new-instance v8, Lkotlin/Triple;

    invoke-direct {v8, v4, v7, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v16, v6

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_1

    .line 338
    :cond_13
    :try_start_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 345
    :cond_14
    :try_start_7
    iget-object v5, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    invoke-interface {v5}, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;->createForLocalPos()Lcom/stripe/jvmcore/terminal/api/PosInfo;

    move-result-object v5

    .line 348
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->getLocationRegistration()Lcom/stripe/stripeterminal/internal/models/LocationRegistration;

    move-result-object v7

    instance-of v7, v7, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;

    if-nez v7, :cond_1f

    .line 354
    new-instance v8, Lkotlin/Triple;

    .line 355
    new-instance v16, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 356
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v17

    .line 359
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getLabel()Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x156

    const/16 v30, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v4

    .line 355
    invoke-direct/range {v16 .. v30}, Lcom/stripe/proto/model/offline_mode/OfflineReader;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v16

    move-object/from16 v20, v21

    .line 362
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v17

    .line 363
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getConfigVersion()Ljava/lang/String;

    move-result-object v18

    .line 364
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getPinKeySetId()Ljava/lang/String;

    move-result-object v19

    .line 367
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v27

    .line 368
    invoke-virtual {v5}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v28

    .line 369
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->toDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v30

    .line 370
    invoke-virtual {v5}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v29

    .line 371
    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/extensions/ReaderExtensionsKt;->getConnectionType(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/api/rest/ConnectionType;

    move-result-object v31

    .line 372
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getIp()Ljava/lang/String;

    move-result-object v35

    .line 373
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getUrl()Ljava/lang/String;

    move-result-object v36

    .line 361
    new-instance v16, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    const v38, 0x13030

    const/16 v39, 0x0

    const-wide/16 v21, 0x0

    move-wide/from16 v25, v24

    const-wide/16 v23, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v16 .. v39}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v16

    move-wide/from16 v24, v25

    .line 375
    iget-object v7, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->getLocationId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1e

    invoke-interface {v7, v9}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineLocationByStripeId(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 354
    invoke-direct {v8, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    const/16 v16, 0x0

    .line 318
    :goto_b
    :try_start_8
    invoke-virtual {v8}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    invoke-virtual {v8}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-virtual {v8}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 385
    iget-boolean v7, v6, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->offline_enabled:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v7, :cond_16

    .line 386
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v2, :cond_15

    iget-object v14, v2, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    :cond_15
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not configured for offline use."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    move/from16 v6, v16

    goto/16 :goto_1

    .line 389
    :cond_16
    :try_start_a
    iget-object v2, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    move-object v7, v4

    .line 391
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object v8, v5

    .line 392
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getConfigVersion()Ljava/lang/String;

    move-result-object v5

    move-object v9, v6

    .line 393
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getPinKeySetId()Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-virtual {v15}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v12, v15

    move-object v15, v7

    move-object v7, v12

    move-object v13, v8

    move-object v12, v9

    move-wide/from16 v8, v24

    const/16 v17, 0x0

    .line 389
    :try_start_b
    invoke-interface/range {v2 .. v9}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->shouldAllowOfflineConnection(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_18

    .line 396
    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    if-eqz v2, :cond_17

    goto :goto_c

    .line 398
    :cond_17
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 399
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 400
    const-string v5, "The selected reader requires a software update before it can be used to collect payments offline."

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 398
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 404
    :cond_18
    :goto_c
    iget-object v2, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v2}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->shouldAllowPairingUnseenReader()Z

    move-result v2

    if-nez v2, :cond_1a

    if-eqz v16, :cond_19

    goto :goto_d

    .line 405
    :cond_19
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 406
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 407
    const-string v5, "The selected reader must be paired online at this location before it can be used to collect payments offline."

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 405
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 412
    :cond_1a
    :goto_d
    iget-object v2, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v2, v15, v13, v12}, Lcom/stripe/offlinemode/storage/OfflineRepository;->saveOfflineConnectionEntities(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)J

    move-result-wide v2

    .line 416
    new-instance v4, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$1$5;

    iget-object v5, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-direct {v4, v5}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$1$5;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/reflect/KMutableProperty0;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 419
    instance-of v0, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    if-nez v0, :cond_1b

    .line 420
    iget-object v0, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v0, v12, v10}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->setActiveConfigs(Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/jvm/functions/Function2;)V

    .line 425
    :cond_1b
    new-instance v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$1$6;

    invoke-direct {v0, v1, v14}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$1$6;-><init>(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v14, v0, v2, v14}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v3, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 436
    sget-object v0, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v4, v0

    check-cast v4, Lcom/stripe/loggingmodels/Outcome;

    .line 437
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 435
    sget-object v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$1$7;->INSTANCE:Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$1$7;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 441
    iget-object v0, v15, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    .line 442
    iget-object v2, v15, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    .line 443
    iget-object v3, v12, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v3, :cond_1c

    iget-object v3, v3, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move/from16 v21, v3

    goto :goto_e

    :cond_1c
    const/16 v21, 0x1

    .line 444
    :goto_e
    iget-object v3, v12, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 440
    new-instance v19, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v2

    move-object/from16 v28, v3

    invoke-direct/range {v19 .. v28}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/merchant/ApiLocationPb;)V

    .line 284
    invoke-static/range {v19 .. v19}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    goto :goto_f

    :catchall_4
    move-exception v0

    const/16 v17, 0x0

    :goto_f
    move/from16 v6, v16

    goto :goto_11

    :cond_1d
    const/16 v17, 0x0

    .line 376
    :try_start_c
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 377
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 378
    const-string v4, "You must connect a reader online at this location before it can be used to collect payments offline."

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 376
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :cond_1e
    const/16 v17, 0x0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/16 v17, 0x0

    .line 349
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 350
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 351
    const-string v4, "Unable to retrieve offline reader record for Internet-connected reader."

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 349
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :cond_20
    const/16 v17, 0x0

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/16 v17, 0x0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/16 v17, 0x0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/16 v17, 0x0

    .line 303
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_10

    :catchall_6
    move-exception v0

    const/16 v17, 0x0

    :goto_10
    move/from16 v6, v17

    .line 284
    :goto_11
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v16, v6

    .line 451
    :goto_12
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_24

    .line 468
    check-cast v0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    return-object v0

    .line 453
    :cond_24
    instance-of v0, v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v0, :cond_25

    move-object v0, v5

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_13

    .line 455
    :cond_25
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 454
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v4, "Failed to activate reader offline."

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v2

    .line 460
    :goto_13
    iget-object v2, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 461
    new-instance v3, Lcom/stripe/loggingmodels/Outcome$TerminalError;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-direct {v3, v4}, Lcom/stripe/loggingmodels/Outcome$TerminalError;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V

    check-cast v3, Lcom/stripe/loggingmodels/Outcome;

    const/4 v4, 0x2

    .line 463
    new-array v4, v4, [Lkotlin/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v4, v17

    .line 464
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ErrorReason"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v18, 0x1

    aput-object v6, v4, v18

    .line 462
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 460
    sget-object v6, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$2$1;->INSTANCE:Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$2$1;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter(Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;)V

    .line 468
    throw v0
.end method

.method public onConfirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "intent"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "emvData"

    move-object/from16 v8, p2

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "confirmPaymentIntentRequest"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestHeaders"

    move-object/from16 v11, p4

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestParams"

    move-object/from16 v12, p5

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "endpoint"

    move-object/from16 v13, p6

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->validatePaymentAmount(Ljava/lang/String;Ljava/lang/Long;)V

    .line 481
    iget-object v2, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 484
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCaptureMethod()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/stripe/stripeterminal/external/models/CaptureMethod;->Manual:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/CaptureMethod;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_CAPTURE:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    goto :goto_0

    .line 487
    :cond_0
    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->SUCCEEDED:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    :goto_0
    move-object/from16 v34, v2

    .line 489
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmount()J

    move-result-wide v4

    iget-object v2, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x0

    :goto_1
    add-long v14, v4, v9

    .line 491
    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->offlineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v5

    .line 494
    iget-object v2, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    const/16 v48, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object/from16 v10, v48

    .line 495
    :goto_2
    new-instance v9, Lcom/stripe/stripeterminal/external/models/Tip;

    iget-object v0, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    invoke-direct {v9, v0}, Lcom/stripe/stripeterminal/external/models/Tip;-><init>(Ljava/lang/Long;)V

    .line 490
    new-instance v42, Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-object/from16 v4, v42

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/Tip;Ljava/lang/String;)V

    move-wide/from16 v49, v6

    const/16 v46, 0x6

    const/16 v47, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-wide v5, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const v45, -0x1000003

    .line 483
    invoke-static/range {v3 .. v47}, Lcom/stripe/stripeterminal/internal/common/extensions/PaymentIntentExtensionsKt;->copyWithVars$default(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    .line 501
    :try_start_0
    iget-object v10, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 503
    sget-object v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v3

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->getId()Ljava/lang/String;

    move-result-object v48

    :cond_3
    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v4, v48

    move-wide/from16 v8, v49

    .line 502
    invoke-direct/range {v1 .. v9}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->buildBaseConfirmRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;J)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v11

    .line 511
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v23

    const/16 v28, 0x1dff

    const/16 v29, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 510
    invoke-static/range {v11 .. v29}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v2

    .line 501
    invoke-interface {v10, v2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 515
    iget-object v2, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const/4 v3, 0x2

    .line 517
    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "DeclineReason"

    const-string v5, "insert_error"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 518
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InsertError"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 516
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 515
    sget-object v3, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onConfirmPaymentIntentRequest$1;->INSTANCE:Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onConfirmPaymentIntentRequest$1;

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 522
    throw v0
.end method

.method public onConfirmSetupIntentRequest(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "intent"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "emvData"

    move-object/from16 v8, p2

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "confirmSetupIntentRequest"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestHeaders"

    move-object/from16 v10, p4

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestParams"

    move-object/from16 v11, p5

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "endpoint"

    move-object/from16 v12, p6

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    iget-object v2, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 796
    sget-object v12, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;->SUCCEEDED:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    .line 797
    new-instance v4, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    .line 798
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v2

    const/16 v29, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, v29

    .line 801
    :goto_0
    iget-object v0, v0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, v29

    .line 797
    :goto_1
    invoke-direct/range {v4 .. v9}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v30, v6

    const v27, 0x37feff

    const/16 v28, 0x0

    move-object/from16 v24, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 795
    invoke-static/range {v3 .. v28}, Lcom/stripe/stripeterminal/internal/common/extensions/SetupIntentExtensionsKt;->copyWithVars$default(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    .line 807
    :try_start_0
    iget-object v10, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 809
    sget-object v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CONFIRM_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 810
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;->getId()Ljava/lang/String;

    move-result-object v29

    :cond_2
    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v4, v29

    move-wide/from16 v8, v30

    .line 808
    invoke-direct/range {v1 .. v9}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->buildBaseConfirmRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;J)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v11

    .line 817
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v26

    const/16 v28, 0x17ff

    const/16 v29, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    .line 816
    invoke-static/range {v11 .. v29}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v2

    .line 807
    invoke-interface {v10, v2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 821
    iget-object v2, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const/4 v3, 0x2

    .line 823
    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "DeclineReason"

    const-string v5, "insert_error"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 824
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InsertError"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 822
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 821
    sget-object v3, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onConfirmSetupIntentRequest$1;->INSTANCE:Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onConfirmSetupIntentRequest$1;

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 828
    throw v0
.end method

.method public onCreatePaymentIntentRequest(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "request"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestHeaders"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestParams"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "endpoint"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    iget-object v5, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    invoke-direct {v0, v5, v6}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->validatePaymentAmount(Ljava/lang/String;Ljava/lang/Long;)V

    .line 539
    sget-object v5, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 535
    invoke-direct {v0, v5, v3, v2, v4}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->buildBaseCreateRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 543
    move-object v4, v3

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-wide v5, v4, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->createPaymentIntent(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;JLjava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v16

    const/16 v21, 0x1dff

    const/16 v22, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 544
    invoke-static/range {v4 .. v22}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v1

    move-object/from16 v2, v16

    .line 547
    iget-object v3, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v3, v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V

    .line 552
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v3, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v4

    .line 553
    sget-object v37, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_PAYMENT_METHOD:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    const/16 v48, 0xf

    const/16 v49, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const v47, -0x4000001

    invoke-static/range {v4 .. v49}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->copy$default(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v2

    .line 555
    sget-object v3, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->Companion:Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;

    .line 556
    iget-object v4, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    .line 557
    iget-wide v5, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 555
    invoke-virtual/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;->make(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;Z)Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)V

    return-object v2
.end method

.method public onCreateSetupIntentRequest(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "request"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestHeaders"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestParams"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "endpoint"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    sget-object v5, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 757
    invoke-direct {v0, v5, v3, v2, v4}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->buildBaseCreateRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 765
    move-object v4, v3

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-wide v5, v4, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->createSetupIntent(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;JZ)Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v19

    const/16 v21, 0x17ff

    const/16 v22, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    .line 766
    invoke-static/range {v4 .. v22}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v1

    move-object/from16 v2, v19

    .line 771
    iget-object v3, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v3, v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V

    .line 773
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v3, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v4

    .line 774
    sget-object v14, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;->REQUIRES_PAYMENT_METHOD:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    const v26, 0xffdff

    const/16 v27, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v4 .. v27}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->copy$default(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v2

    .line 776
    sget-object v3, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;

    .line 777
    iget-object v4, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    .line 778
    iget-wide v5, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    const/4 v8, 0x1

    .line 776
    invoke-virtual/range {v3 .. v8}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;->make(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Z)Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)V

    return-object v2
.end method

.method public onLocationsRequests(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceSerials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2, v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getSavedLocationsMap$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 942
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    .line 943
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 944
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 945
    check-cast v1, Ljava/util/Map$Entry;

    .line 943
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 747
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v3, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkLocation(Lcom/stripe/proto/model/merchant/ApiLocationPb;)Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v1

    .line 945
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onReaderActivated(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V
    .locals 49

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "accountId"

    move-object/from16 v6, p1

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "reader"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "connectionConfiguration"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 153
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 155
    iget-object v4, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v4}, Lcom/stripe/offlinemode/storage/OfflineRepository;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-direct {v1, v0}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->getSupportsOffline(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 158
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x1

    const/16 v27, 0x0

    const-string v7, "Required value was null."

    if-eqz v4, :cond_7

    .line 159
    :try_start_1
    new-instance v8, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;

    .line 160
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 161
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 162
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/Location;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    goto :goto_0

    :cond_0
    move-object/from16 v15, v27

    :goto_0
    if-eqz v15, :cond_4

    .line 163
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getIpAddress()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 164
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getBaseUrl()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 165
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getLabel()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    const/16 v19, 0x3c

    const/16 v20, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 159
    invoke-direct/range {v8 .. v20}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object/from16 v28, v8

    goto/16 :goto_8

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_7
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    if-eqz v4, :cond_8

    move v4, v5

    goto :goto_2

    .line 170
    :cond_8
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    :goto_2
    if-eqz v4, :cond_9

    move v4, v5

    goto :goto_3

    .line 171
    :cond_9
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    :goto_3
    if-eqz v4, :cond_a

    move v4, v5

    goto :goto_4

    .line 172
    :cond_a
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    :goto_4
    if-eqz v4, :cond_b

    move v4, v5

    goto :goto_5

    .line 173
    :cond_b
    instance-of v4, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    :goto_5
    if-eqz v4, :cond_1c

    .line 174
    new-instance v8, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;

    .line 175
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 176
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 177
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_19

    .line 178
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getConfigVersion()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_18

    .line 180
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeysetId()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v13, ""

    if-nez v4, :cond_c

    move-object v4, v13

    .line 181
    :cond_c
    :try_start_2
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    move-object v14, v13

    .line 188
    :cond_d
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 189
    const-string v7, "tml_simulated"

    move-object v15, v7

    goto :goto_7

    .line 191
    :cond_e
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v13

    if-eqz v13, :cond_f

    invoke-virtual {v13}, Lcom/stripe/stripeterminal/external/models/Location;->getId()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_f
    move-object/from16 v13, v27

    :goto_6
    if-eqz v13, :cond_17

    move-object v15, v13

    :goto_7
    const/16 v19, 0x380

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v4

    .line 174
    invoke-direct/range {v8 .. v20}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    .line 197
    :goto_8
    invoke-direct/range {p0 .. p1}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->setAccountId(Ljava/lang/String;)V

    .line 198
    invoke-direct {v1, v0}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->setOfflineSetupIntentSupport(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V

    .line 199
    iget-object v0, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v12

    .line 201
    iget-object v0, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;->createForLocalPos()Lcom/stripe/jvmcore/terminal/api/PosInfo;

    move-result-object v0

    .line 206
    iget-object v4, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getCurrentLocationId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineLocationByStripeId(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 208
    iget-object v7, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 209
    const-string v8, "Found previously saved offline location for reader. Carrying over configs."

    const/4 v9, 0x6

    .line 210
    new-array v9, v9, [Lkotlin/Pair;

    new-instance v10, Lkotlin/Pair;

    const-string v11, "offlineEnabled"

    iget-boolean v14, v4, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->offline_enabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v10, v11, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v9, v2

    .line 211
    new-instance v10, Lkotlin/Pair;

    const-string v11, "tippingConfig"

    iget-object v14, v4, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-direct {v10, v11, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v9, v5

    .line 212
    new-instance v5, Lkotlin/Pair;

    const-string v10, "bluetoothAutoReconnectConfig"

    iget-object v11, v4, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    invoke-direct {v5, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x2

    aput-object v5, v9, v10

    .line 213
    new-instance v5, Lkotlin/Pair;

    const-string v10, "usbAutoReconnectConfig"

    iget-object v11, v4, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    invoke-direct {v5, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x3

    aput-object v5, v9, v10

    .line 214
    new-instance v5, Lkotlin/Pair;

    const-string v10, "locationDatabaseId"

    iget-wide v14, v4, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x4

    aput-object v5, v9, v10

    .line 215
    new-instance v5, Lkotlin/Pair;

    const-string v10, "locationStripeId"

    iget-object v11, v4, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v11, :cond_10

    iget-object v11, v11, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    goto :goto_9

    :cond_10
    move-object/from16 v11, v27

    :goto_9
    invoke-direct {v5, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x5

    aput-object v5, v9, v10

    .line 208
    invoke-interface {v7, v8, v9}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_a

    :cond_11
    move-object/from16 v4, v27

    .line 219
    :goto_a
    iget-object v5, v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 220
    new-instance v3, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-object v7, v4

    .line 221
    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    move-object v8, v5

    .line 222
    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x150

    const/16 v17, 0x0

    const-wide/16 v9, 0x0

    move-object v11, v7

    move-wide v6, v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v18, v11

    move-wide v11, v6

    move-object/from16 p3, v0

    move-object v0, v8

    move-object/from16 v2, v18

    move-object/from16 v8, p1

    .line 220
    invoke-direct/range {v3 .. v17}, Lcom/stripe/proto/model/offline_mode/OfflineReader;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 229
    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getConfigVersion()Ljava/lang/String;

    move-result-object v5

    move-wide v12, v6

    .line 231
    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getPinKeySetId()Ljava/lang/String;

    move-result-object v6

    .line 234
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v14

    .line 235
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v15

    .line 236
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/stripeterminal/external/models/Reader;->toDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v17

    .line 237
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v16

    .line 238
    invoke-static/range {p2 .. p2}, Lcom/stripe/stripeterminal/internal/common/extensions/ReaderExtensionsKt;->getConnectionType(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/api/rest/ConnectionType;

    move-result-object v18

    .line 239
    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getIp()Ljava/lang/String;

    move-result-object v22

    .line 240
    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getUrl()Ljava/lang/String;

    move-result-object v23

    move-object v7, v3

    .line 228
    new-instance v3, Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const v25, 0x13030

    const/16 v26, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v24, 0x0

    move-object v1, v7

    move-object/from16 v7, p1

    :try_start_3
    invoke-direct/range {v3 .. v26}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v6, v12

    .line 244
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v4

    if-eqz v4, :cond_12

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v5, v4}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoLocation(Lcom/stripe/stripeterminal/external/models/Location;)Lcom/stripe/proto/model/merchant/ApiLocationPb;

    move-result-object v29

    if-eqz v29, :cond_12

    invoke-virtual/range {v28 .. v28}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;->getCurrentLocationId()Ljava/lang/String;

    move-result-object v30

    const v47, 0x1fffe

    const/16 v48, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-static/range {v29 .. v48}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->copy$default(Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/merchant/ApiLocationPb;

    move-result-object v4

    move-object v14, v4

    goto :goto_b

    :cond_12
    move-object/from16 v14, v27

    :goto_b
    if-eqz v2, :cond_13

    .line 245
    iget-boolean v4, v2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->offline_enabled:Z

    move v15, v4

    goto :goto_c

    :cond_13
    const/4 v15, 0x0

    :goto_c
    if-eqz v2, :cond_14

    .line 246
    iget-object v4, v2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    move-object v12, v4

    goto :goto_d

    :cond_14
    move-object/from16 v12, v27

    :goto_d
    if-eqz v2, :cond_15

    .line 247
    iget-object v4, v2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    move-object v13, v4

    goto :goto_e

    :cond_15
    move-object/from16 v13, v27

    :goto_e
    if-eqz v2, :cond_16

    .line 248
    iget-object v2, v2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-object v11, v2

    goto :goto_f

    :cond_16
    move-object/from16 v11, v27

    :goto_f
    move-object v2, v3

    .line 242
    new-instance v3, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    const/16 v17, 0x201

    const/16 v18, 0x0

    const-wide/16 v4, 0x0

    const/16 v16, 0x0

    move-wide v9, v6

    move-wide v7, v6

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v18}, Lcom/stripe/proto/model/offline_mode/OfflineLocation;-><init>(JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/model/merchant/ApiLocationPb;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    invoke-interface {v0, v1, v2, v3}, Lcom/stripe/offlinemode/storage/OfflineRepository;->saveOfflineConnectionEntities(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)J

    move-result-wide v0

    .line 252
    new-instance v2, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onReaderActivated$1$2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v3, p0

    :try_start_4
    iget-object v4, v3, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-direct {v2, v4}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onReaderActivated$1$2;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/reflect/KMutableProperty0;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v3}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->listenForLocationOfflineConfig()V

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_11

    :cond_17
    move-object v3, v1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object v3, v1

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v3, v1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object v3, v1

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-object v3, v1

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move-object v3, v1

    .line 174
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1d
    move-object v3, v1

    .line 255
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 153
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v3, v1

    :goto_11
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    :goto_12
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, v3, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v2, "Failed to save activated reader."

    const/4 v4, 0x0

    new-array v4, v4, [Lkotlin/Pair;

    invoke-interface {v1, v2, v0, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    :cond_1e
    return-void
.end method

.method public startForwardingOfflinePayments()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->restartForwardingOfflinePaymentsJob:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->start()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    invoke-direct {p0}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->resumeForwardingOfflinePayments()Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 733
    iput-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->restartForwardingOfflinePaymentsJob:Lkotlinx/coroutines/Job;

    .line 734
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->start()Z

    .line 737
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineForwardingManager:Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

    invoke-interface {v0}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;->startForwarding()V

    return-void
.end method

.method public stopForwardingOfflinePayments(Ljava/lang/String;)V
    .locals 3

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->restartForwardingOfflinePaymentsJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lkotlinx/coroutines/JobKt;->cancel$default(Lkotlinx/coroutines/Job;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 742
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->offlineForwardingManager:Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;->stopForwarding(Ljava/lang/String;)V

    return-void
.end method
