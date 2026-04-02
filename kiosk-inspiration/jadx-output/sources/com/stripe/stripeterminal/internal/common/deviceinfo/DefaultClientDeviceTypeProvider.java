package com.stripe.stripeterminal.internal.common.deviceinfo;

import com.stripe.core.device.BbposClientDeviceTypeProvider;
import com.stripe.core.device.BuildValues;
import com.stripe.core.device.ClientDeviceType;
import com.stripe.core.device.ClientDeviceTypeProvider;
import com.stripe.core.device.EmulatorClientDeviceTypeProvider;
import com.stripe.core.device.HardwareManufacturer;
import com.stripe.core.device.VerifoneClientDeviceTypeProvider;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultClientDeviceTypeProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000e¢\u0006\u0002\u0010\u000fJ\b\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0011H\u0002J\b\u0010\u0019\u001a\u00020\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;", "Lcom/stripe/core/device/ClientDeviceTypeProvider;", "buildValues", "Lcom/stripe/core/device/BuildValues;", "emulatorClientDeviceTypeParser", "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;", "bbposClientDeviceTypeParser", "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;", "verifoneClientDeviceTypeParser", "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/device/BuildValues;Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;Lcom/stripe/core/device/BbposClientDeviceTypeProvider;Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "clientDeviceType", "Lcom/stripe/core/device/ClientDeviceType;", "getClientDeviceType", "()Lcom/stripe/core/device/ClientDeviceType;", "clientDeviceType$delegate", "Lkotlin/Lazy;", "createUnknownClientDeviceType", "Lcom/stripe/core/device/ClientDeviceType$Unknown;", "determineClientDeviceType", "get", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultClientDeviceTypeProvider implements ClientDeviceTypeProvider {
    private final BbposClientDeviceTypeProvider bbposClientDeviceTypeParser;
    private final BuildValues buildValues;

    /* JADX INFO: renamed from: clientDeviceType$delegate, reason: from kotlin metadata */
    private final Lazy clientDeviceType;
    private final EmulatorClientDeviceTypeProvider emulatorClientDeviceTypeParser;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final VerifoneClientDeviceTypeProvider verifoneClientDeviceTypeParser;

    public DefaultClientDeviceTypeProvider(BuildValues buildValues, EmulatorClientDeviceTypeProvider emulatorClientDeviceTypeParser, BbposClientDeviceTypeProvider bbposClientDeviceTypeParser, VerifoneClientDeviceTypeProvider verifoneClientDeviceTypeParser, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        Intrinsics.checkNotNullParameter(emulatorClientDeviceTypeParser, "emulatorClientDeviceTypeParser");
        Intrinsics.checkNotNullParameter(bbposClientDeviceTypeParser, "bbposClientDeviceTypeParser");
        Intrinsics.checkNotNullParameter(verifoneClientDeviceTypeParser, "verifoneClientDeviceTypeParser");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.buildValues = buildValues;
        this.emulatorClientDeviceTypeParser = emulatorClientDeviceTypeParser;
        this.bbposClientDeviceTypeParser = bbposClientDeviceTypeParser;
        this.verifoneClientDeviceTypeParser = verifoneClientDeviceTypeParser;
        this.logger = logger;
        this.clientDeviceType = LazyKt.lazy(new Function0<ClientDeviceType>() { // from class: com.stripe.stripeterminal.internal.common.deviceinfo.DefaultClientDeviceTypeProvider$clientDeviceType$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ClientDeviceType invoke() {
                return this.this$0.determineClientDeviceType();
            }
        });
    }

    private final ClientDeviceType getClientDeviceType() {
        return (ClientDeviceType) this.clientDeviceType.getValue();
    }

    @Override // com.stripe.core.device.ClientDeviceTypeProvider
    public ClientDeviceType get() {
        return getClientDeviceType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClientDeviceType determineClientDeviceType() {
        ClientDeviceType.Unknown unknownCreateUnknownClientDeviceType;
        if (this.buildValues.isEmulator()) {
            unknownCreateUnknownClientDeviceType = this.emulatorClientDeviceTypeParser.get();
        } else {
            HardwareManufacturer manufacturer = this.buildValues.getManufacturer();
            if (Intrinsics.areEqual(manufacturer, HardwareManufacturer.Bbpos.INSTANCE)) {
                unknownCreateUnknownClientDeviceType = this.bbposClientDeviceTypeParser.get();
            } else if (Intrinsics.areEqual(manufacturer, HardwareManufacturer.Verifone.INSTANCE)) {
                unknownCreateUnknownClientDeviceType = this.verifoneClientDeviceTypeParser.get();
            } else {
                if (!(manufacturer instanceof HardwareManufacturer.Other)) {
                    throw new NoWhenBranchMatchedException();
                }
                unknownCreateUnknownClientDeviceType = createUnknownClientDeviceType();
            }
        }
        this.logger.i("ClientDeviceType = " + unknownCreateUnknownClientDeviceType, new Pair[0]);
        return unknownCreateUnknownClientDeviceType;
    }

    private final ClientDeviceType.Unknown createUnknownClientDeviceType() {
        return new ClientDeviceType.Unknown(new HardwareManufacturer.Other(this.buildValues.getManufacturer().getValue()));
    }
}
