package com.stripe.core.device;

import com.stripe.core.device.ClientDeviceType;
import com.stripe.core.device.HardwareManufacturer;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.serialnumber.SmartPOSDeviceMetadata;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: BbposClientDeviceTypeProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/core/device/BbposClientDeviceTypeProvider;", "Lcom/stripe/core/device/ClientDeviceTypeProvider;", "serialSupplier", "Lcom/stripe/core/device/SerialSupplier;", "buildValues", "Lcom/stripe/core/device/BuildValues;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/device/SerialSupplier;Lcom/stripe/core/device/BuildValues;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "get", "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;", "Companion", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposClientDeviceTypeProvider implements ClientDeviceTypeProvider {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final BuildValues buildValues;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final SerialSupplier serialSupplier;

    /* JADX INFO: compiled from: BbposClientDeviceTypeProvider.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SmartPOSDeviceMetadata.values().length];
            try {
                iArr[SmartPOSDeviceMetadata.WisePosEDevKit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SmartPOSDeviceMetadata.WisePosE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SmartPOSDeviceMetadata.S700DevKit.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SmartPOSDeviceMetadata.S700.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SmartPOSDeviceMetadata.S710DevKit.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SmartPOSDeviceMetadata.S710.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SmartPOSDeviceMetadata.Etna.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[SmartPOSDeviceMetadata.UnknownDevice.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BbposClientDeviceTypeProvider(SerialSupplier serialSupplier, BuildValues buildValues, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(serialSupplier, "serialSupplier");
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.serialSupplier = serialSupplier;
        this.buildValues = buildValues;
        this.logger = logger;
    }

    @Override // com.stripe.core.device.ClientDeviceTypeProvider
    public ClientDeviceType.BbposDevice get() {
        String strMo461getq_5ZKBc = this.serialSupplier.mo461getq_5ZKBc();
        switch (WhenMappings.$EnumSwitchMapping$0[INSTANCE.m459toDeviceMetadatawDMJIJk$device_release(strMo461getq_5ZKBc).ordinal()]) {
            case 1:
                return new ClientDeviceType.WisePosE(true);
            case 2:
                return new ClientDeviceType.WisePosE(false);
            case 3:
                return new ClientDeviceType.S700(true);
            case 4:
                return new ClientDeviceType.S700(false);
            case 5:
                return new ClientDeviceType.S710(true);
            case 6:
                return new ClientDeviceType.S710(false);
            case 7:
                return ClientDeviceType.Etna.INSTANCE;
            case 8:
                this.logger.e("Failed to get ClientDeviceType from serial number \"" + strMo461getq_5ZKBc + "\" on a BBPOS device.", new Pair[0]);
                return new ClientDeviceType.Unknown(new HardwareManufacturer.Other(this.buildValues.getManufacturer().getValue()));
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: compiled from: BbposClientDeviceTypeProvider.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\b"}, d2 = {"Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;", "", "()V", "toDeviceMetadata", "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "Lcom/stripe/core/serialnumber/DeviceSerialNumber;", "toDeviceMetadata-wDMJIJk$device_release", "(Ljava/lang/String;)Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: BbposClientDeviceTypeProvider.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class EntriesMappings {
            public static final /* synthetic */ EnumEntries<SmartPOSDeviceMetadata> entries$0 = EnumEntriesKt.enumEntries(SmartPOSDeviceMetadata.values());
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: toDeviceMetadata-wDMJIJk$device_release, reason: not valid java name */
        public final SmartPOSDeviceMetadata m459toDeviceMetadatawDMJIJk$device_release(String toDeviceMetadata) {
            SmartPOSDeviceMetadata smartPOSDeviceMetadata;
            Intrinsics.checkNotNullParameter(toDeviceMetadata, "$this$toDeviceMetadata");
            Iterator<SmartPOSDeviceMetadata> it = EntriesMappings.entries$0.iterator();
            loop0: while (true) {
                smartPOSDeviceMetadata = null;
                if (!it.hasNext()) {
                    break;
                }
                SmartPOSDeviceMetadata next = it.next();
                Set<String> serialPrefixes = next.getSerialPrefixes();
                if (!(serialPrefixes instanceof Collection) || !serialPrefixes.isEmpty()) {
                    Iterator<T> it2 = serialPrefixes.iterator();
                    while (it2.hasNext()) {
                        if (StringsKt.startsWith$default(toDeviceMetadata, (String) it2.next(), false, 2, (Object) null)) {
                            smartPOSDeviceMetadata = next;
                            break loop0;
                        }
                    }
                }
            }
            SmartPOSDeviceMetadata smartPOSDeviceMetadata2 = smartPOSDeviceMetadata;
            return smartPOSDeviceMetadata2 == null ? SmartPOSDeviceMetadata.UnknownDevice : smartPOSDeviceMetadata2;
        }
    }
}
