package com.stripe.core.bbpos.hardware;

import com.stripe.bbpos.sdk.Error;
import com.stripe.core.bbpos.hardware.api.SimpleListenerWrapper;
import com.stripe.hardware.status.BbposTamper;
import com.stripe.hardware.status.TamperType;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.Outcome;
import com.stripe.loggingmodels.StructuredEventLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposSdkScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.EventData;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperModeEvent;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ObservabilityDeviceListenerWrapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bBI\u0012\"\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000f¢\u0006\u0002\u0010\u0010J\u001c\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0013H\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0016R*\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;", "Lcom/stripe/core/bbpos/hardware/api/SimpleListenerWrapper;", "bbposSdkEventLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;", "Lcom/stripe/core/bbpos/hardware/BbposSdkEventLogger;", "structuredEventLogger", "Lcom/stripe/loggingmodels/StructuredEventLogger;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "getErrorCodeMapping", "Lkotlin/Pair;", "", "it", "onError", "", "error", "Lcom/stripe/bbpos/sdk/Error;", "errorMessage", "onSerialConnected", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ObservabilityDeviceListenerWrapper implements SimpleListenerWrapper {
    private static final String OPEN_SERIAL_PORT_ERROR = "3109";
    private static final String OPEN_SERIAL_PORT_ERROR_3104 = "3104";
    private static final String OPEN_SERIAL_PORT_ERROR_MESSAGE = "open_serial_port_failed_3109";
    private static final String OPEN_SERIAL_PORT_ERROR_MESSAGE_3104 = "open_serial_port_failed_3104";
    private static final String OPEN_SERIAL_PORT_TIMEOUT_ERROR = "3105";
    private static final String OPEN_SERIAL_PORT_TIMEOUT_MESSAGE = "open_serial_port_timeout_3105";
    private static final String UNKNOWN = "unknown";
    private final HealthLogger<BbposDomain, BbposDomain.Builder, BbposSdkScope, BbposSdkScope.Builder> bbposSdkEventLogger;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final StructuredEventLogger structuredEventLogger;

    /* JADX INFO: compiled from: ObservabilityDeviceListenerWrapper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TamperType.values().length];
            try {
                iArr[TamperType.ConfigIntegrityCheck.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TamperType.FirmwareIntegrityCheck.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TamperType.KeyIntegrityCheck.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TamperType.UnrecoverableTamper.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TamperType.Unknown.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Error.values().length];
            try {
                iArr2[Error.FAIL_TO_START_SERIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Error.TAMPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public ObservabilityDeviceListenerWrapper(HealthLogger<BbposDomain, BbposDomain.Builder, BbposSdkScope, BbposSdkScope.Builder> bbposSdkEventLogger, StructuredEventLogger structuredEventLogger, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(bbposSdkEventLogger, "bbposSdkEventLogger");
        Intrinsics.checkNotNullParameter(structuredEventLogger, "structuredEventLogger");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.bbposSdkEventLogger = bbposSdkEventLogger;
        this.structuredEventLogger = structuredEventLogger;
        this.logger = logger;
    }

    @Override // com.stripe.core.bbpos.hardware.api.SimpleListenerWrapper, com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSerialConnected() throws IllegalAccessException, InstantiationException {
        HealthLogger.incrementCounter$default(this.bbposSdkEventLogger, Outcome.Ok.INSTANCE, null, null, new Function2<BbposSdkScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.ObservabilityDeviceListenerWrapper.onSerialConnected.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(BbposSdkScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BbposSdkScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.serial_port_callback_error = event;
            }
        }, 6, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.core.bbpos.hardware.api.SimpleListenerWrapper, com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onError(Error error, String errorMessage) throws IllegalAccessException, InstantiationException {
        com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperType tamperType;
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        int i = WhenMappings.$EnumSwitchMapping$1[error.ordinal()];
        if (i == 1) {
            this.logger.d("FAIL_TO_START_SERIAL: " + errorMessage, new Pair[0]);
            Pair<String, String> errorCodeMapping = getErrorCodeMapping(errorMessage);
            HealthLogger.incrementCounter$default(this.bbposSdkEventLogger, Outcome.GenericError.INSTANCE, MapsKt.mapOf(TuplesKt.to("errorcode", errorCodeMapping.component1()), TuplesKt.to("reason", errorCodeMapping.component2())), null, new Function2<BbposSdkScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.ObservabilityDeviceListenerWrapper$onError$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(BbposSdkScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(BbposSdkScope.Builder incrementCounter, Counter event) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(event, "event");
                    incrementCounter.serial_port_callback_error = event;
                }
            }, 4, null);
            return;
        }
        if (i != 2) {
            return;
        }
        BbposTamper bbposTamperFromErrorMessage = BbposTamper.INSTANCE.fromErrorMessage(errorMessage);
        StructuredEventLogger structuredEventLogger = this.structuredEventLogger;
        String mode = bbposTamperFromErrorMessage.getMode();
        String str = mode == null ? "" : mode;
        String status = bbposTamperFromErrorMessage.getStatus();
        String str2 = status == null ? "" : status;
        String time = bbposTamperFromErrorMessage.getTime();
        String str3 = time == null ? "" : time;
        int i2 = WhenMappings.$EnumSwitchMapping$0[bbposTamperFromErrorMessage.getTamperType().ordinal()];
        if (i2 == 1) {
            tamperType = com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperType.CONFIG_INTEGRITY_CHECK;
        } else if (i2 == 2) {
            tamperType = com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperType.FIRMWARE_INTEGRITY_CHECK;
        } else if (i2 == 3) {
            tamperType = com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperType.KEY_INTEGRITY_CHECK;
        } else if (i2 == 4) {
            tamperType = com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperType.UNRECOVERABLE_TAMPER;
        } else {
            if (i2 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            tamperType = com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperType.TAMPER_TYPE_INVALID;
        }
        EventData eventData = new EventData(null, null, null, null, null, 0 == true ? 1 : 0, null, 0 == true ? 1 : 0, null, null, null, null, null, null, new TamperModeEvent(str, str2, str3, tamperType, null, 16, null), null, null, null, null, null, null, null, null, null, null, null, 67092479, null);
        Intrinsics.checkNotNullExpressionValue("DeviceListenerWrapper", "getSimpleName(...)");
        StructuredEventLogger.log$default(structuredEventLogger, eventData, "DeviceListenerWrapper", null, null, 12, null);
    }

    private final Pair<String, String> getErrorCodeMapping(String it) {
        String str = it;
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) OPEN_SERIAL_PORT_ERROR, false, 2, (Object) null)) {
            return new Pair<>(OPEN_SERIAL_PORT_ERROR, OPEN_SERIAL_PORT_ERROR_MESSAGE);
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) OPEN_SERIAL_PORT_ERROR_3104, false, 2, (Object) null)) {
            return new Pair<>(OPEN_SERIAL_PORT_ERROR_3104, OPEN_SERIAL_PORT_ERROR_MESSAGE_3104);
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) OPEN_SERIAL_PORT_TIMEOUT_ERROR, false, 2, (Object) null)) {
            return new Pair<>(OPEN_SERIAL_PORT_TIMEOUT_ERROR, OPEN_SERIAL_PORT_TIMEOUT_MESSAGE);
        }
        return new Pair<>("unknown", "unknown");
    }
}
