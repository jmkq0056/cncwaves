.class public final Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;
.super Ljava/lang/Object;
.source "ObservabilityDeviceListenerWrapper.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/hardware/api/SimpleListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$Companion;,
        Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservabilityDeviceListenerWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservabilityDeviceListenerWrapper.kt\ncom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1#2:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bBI\u0012\"\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000f\u00a2\u0006\u0002\u0010\u0010J\u001c\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0013H\u0016J\u0008\u0010\u001a\u001a\u00020\u0016H\u0016R*\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;",
        "Lcom/stripe/core/bbpos/hardware/api/SimpleListenerWrapper;",
        "bbposSdkEventLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;",
        "Lcom/stripe/core/bbpos/hardware/BbposSdkEventLogger;",
        "structuredEventLogger",
        "Lcom/stripe/loggingmodels/StructuredEventLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "getErrorCodeMapping",
        "Lkotlin/Pair;",
        "",
        "it",
        "onError",
        "",
        "error",
        "Lcom/stripe/bbpos/sdk/Error;",
        "errorMessage",
        "onSerialConnected",
        "Companion",
        "hardware_release"
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
.field public static final Companion:Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$Companion;

.field private static final OPEN_SERIAL_PORT_ERROR:Ljava/lang/String; = "3109"

.field private static final OPEN_SERIAL_PORT_ERROR_3104:Ljava/lang/String; = "3104"

.field private static final OPEN_SERIAL_PORT_ERROR_MESSAGE:Ljava/lang/String; = "open_serial_port_failed_3109"

.field private static final OPEN_SERIAL_PORT_ERROR_MESSAGE_3104:Ljava/lang/String; = "open_serial_port_failed_3104"

.field private static final OPEN_SERIAL_PORT_TIMEOUT_ERROR:Ljava/lang/String; = "3105"

.field private static final OPEN_SERIAL_PORT_TIMEOUT_MESSAGE:Ljava/lang/String; = "open_serial_port_timeout_3105"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private final bbposSdkEventLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;",
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

.field private final structuredEventLogger:Lcom/stripe/loggingmodels/StructuredEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;->Companion:Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;",
            ">;",
            "Lcom/stripe/loggingmodels/StructuredEventLogger;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bbposSdkEventLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "structuredEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;->bbposSdkEventLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 23
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;->structuredEventLogger:Lcom/stripe/loggingmodels/StructuredEventLogger;

    .line 24
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final getErrorCodeMapping(Ljava/lang/String;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "3109"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance p1, Lkotlin/Pair;

    const-string v1, "open_serial_port_failed_3109"

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 81
    :cond_0
    const-string v0, "3104"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    new-instance p1, Lkotlin/Pair;

    .line 84
    const-string v1, "open_serial_port_failed_3104"

    .line 82
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 86
    :cond_1
    const-string v0, "3105"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    new-instance p1, Lkotlin/Pair;

    .line 89
    const-string v1, "open_serial_port_timeout_3105"

    .line 87
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 92
    :cond_2
    new-instance p1, Lkotlin/Pair;

    const-string v0, "unknown"

    invoke-direct {p1, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "error"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "errorMessage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v2, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lcom/stripe/bbpos/sdk/Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    if-eq v2, v3, :cond_0

    return-void

    .line 52
    :cond_0
    sget-object v2, Lcom/stripe/hardware/status/BbposTamper;->Companion:Lcom/stripe/hardware/status/BbposTamper$Companion;

    invoke-virtual {v2, v1}, Lcom/stripe/hardware/status/BbposTamper$Companion;->fromErrorMessage(Ljava/lang/String;)Lcom/stripe/hardware/status/BbposTamper;

    move-result-object v1

    .line 53
    iget-object v5, v0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;->structuredEventLogger:Lcom/stripe/loggingmodels/StructuredEventLogger;

    .line 54
    new-instance v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    .line 55
    new-instance v21, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 56
    invoke-virtual {v1}, Lcom/stripe/hardware/status/BbposTamper;->getMode()Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    if-nez v2, :cond_1

    move-object v8, v7

    goto :goto_0

    :cond_1
    move-object v8, v2

    .line 57
    :goto_0
    invoke-virtual {v1}, Lcom/stripe/hardware/status/BbposTamper;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v9, v7

    goto :goto_1

    :cond_2
    move-object v9, v2

    .line 58
    :goto_1
    invoke-virtual {v1}, Lcom/stripe/hardware/status/BbposTamper;->getTime()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v10, v7

    goto :goto_2

    :cond_3
    move-object v10, v2

    .line 59
    :goto_2
    invoke-virtual {v1}, Lcom/stripe/hardware/status/BbposTamper;->getTamperType()Lcom/stripe/hardware/status/TamperType;

    move-result-object v1

    sget-object v2, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/hardware/status/TamperType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 64
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;->TAMPER_TYPE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;

    goto :goto_3

    :cond_4
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 63
    :cond_5
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;->UNRECOVERABLE_TAMPER:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;

    goto :goto_3

    .line 62
    :cond_6
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;->KEY_INTEGRITY_CHECK:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;

    goto :goto_3

    .line 61
    :cond_7
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;->FIRMWARE_INTEGRITY_CHECK:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;

    goto :goto_3

    .line 60
    :cond_8
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;->CONFIG_INTEGRITY_CHECK:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;

    :goto_3
    move-object v11, v1

    const/16 v13, 0x10

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, v21

    .line 55
    invoke-direct/range {v7 .. v14}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v33, 0x3ffbfff

    const/16 v34, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

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

    .line 54
    invoke-direct/range {v6 .. v34}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v1, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    .line 68
    const-string v1, "getSimpleName(...)"

    const-string v7, "DeviceListenerWrapper"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xc

    .line 53
    invoke-static/range {v5 .. v11}, Lcom/stripe/loggingmodels/StructuredEventLogger;->log$default(Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void

    .line 37
    :cond_9
    iget-object v2, v0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FAIL_TO_START_SERIAL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Lkotlin/Pair;

    invoke-interface {v2, v5, v7}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 38
    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;->getErrorCodeMapping(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    iget-object v7, v0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;->bbposSdkEventLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 40
    sget-object v5, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    move-object v8, v5

    check-cast v8, Lcom/stripe/loggingmodels/Outcome;

    .line 42
    new-array v3, v3, [Lkotlin/Pair;

    const-string v5, "errorcode"

    invoke-static {v5, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v6

    .line 43
    const-string v2, "reason"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v4

    .line 41
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    .line 39
    sget-object v1, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$onError$1$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$onError$1$1;

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onSerialConnected()V
    .locals 7

    .line 27
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;->bbposSdkEventLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 28
    sget-object v1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast v1, Lcom/stripe/loggingmodels/Outcome;

    .line 27
    sget-object v2, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$onSerialConnected$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper$onSerialConnected$1;

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
