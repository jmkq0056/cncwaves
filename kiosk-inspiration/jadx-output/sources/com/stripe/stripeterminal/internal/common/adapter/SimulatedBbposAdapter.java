package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.bbpos.hardware.BbposReaderInfoFactory;
import com.stripe.core.hardware.reactive.emv.ClientConfigData;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.stripeterminal.external.models.BatteryStatus;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderBatteryInfo;
import com.stripe.stripeterminal.external.models.ReaderDisplayMessage;
import com.stripe.stripeterminal.external.models.ReaderInputOptions;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.SimulateReaderUpdate;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.BaseSimulatedAdapter;
import com.stripe.stripeterminal.internal.common.makers.ReaderMaker;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import com.stripe.time.Clock;
import com.stripe.transaction.PaymentMethodCollectionType;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.random.Random;
import kotlin.reflect.KProperty;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: SimulatedBbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\b&\u0018\u0000 <2\u00020\u0001:\u0001<Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015j\u0002`\u0018¢\u0006\u0002\u0010\u0019J\u001a\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020*2\u0006\u00102\u001a\u000203H\u0016J\b\u00104\u001a\u00020&H\u0002J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u00020(H\u0016J\b\u00108\u001a\u000206H\u0016J\b\u00109\u001a\u000206H\u0016J\b\u0010:\u001a\u000206H\u0002J\b\u0010;\u001a\u000206H\u0002R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\b\u001e\u0010\u001f*\u0004\b\u001c\u0010\u001dR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\"\u001a\u00020#X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010$R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006="}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;", "clock", "Lcom/stripe/time/Clock;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "mainScope", "Lkotlinx/coroutines/CoroutineScope;", "simulatorConfigurationRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "bbposReaderInfoFactory", "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "offlineConfigUpdateListener", "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "appInfo", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "getAppInfo$delegate", "(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;)Ljava/lang/Object;", "getAppInfo", "()Lcom/stripe/terminal/appinfo/ApplicationInformation;", "batteryStatusJob", "Lkotlinx/coroutines/Job;", "batteryStatusUpdateDelay", "Lkotlin/time/Duration;", "J", "cachedUpdateType", "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;", "checkForUpdate", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "failSilently", "", "collectPaymentMethod", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "paymentMethodCollectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "getSimulatedReader", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "getUpdateType", "installUpdate", "", "update", "onConnect", "onDisconnect", "startBatteryStatusUpdates", "stopBatteryStatusUpdates", "Companion", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class SimulatedBbposAdapter extends BaseSimulatedAdapter {
    private static final long SLEEP_QUANTUM_MS = 2000;
    private final ApplicationInformationProvider applicationInformationProvider;
    private Job batteryStatusJob;
    private final long batteryStatusUpdateDelay;
    private final BbposReaderInfoFactory bbposReaderInfoFactory;
    private SimulateReaderUpdate cachedUpdateType;
    private final CoroutineScope mainScope;
    private final UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener;
    private final UpdateClient updateClient;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SimulatedBbposAdapter.class, "appInfo", "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;", 0))};

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ReaderBatteryInfo CONNECTED_READER_BATTERY_INFO = new ReaderBatteryInfo(BatteryStatus.NOMINAL, Float.valueOf(0.85f), true);
    private static final ReaderBatteryInfo CONNECTED_READER_LOW_BATTERY_INFO = new ReaderBatteryInfo(BatteryStatus.LOW, Float.valueOf(0.15f), false);
    private static final List<SimulateReaderUpdate> UPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION = CollectionsKt.listOf((Object[]) new SimulateReaderUpdate[]{SimulateReaderUpdate.LOW_BATTERY, SimulateReaderUpdate.REQUIRED_FOR_OFFLINE});

    /* JADX INFO: compiled from: SimulatedBbposAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[DeviceType.values().length];
            try {
                iArr[DeviceType.CHIPPER_2X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DeviceType.STRIPE_M2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DeviceType.CHIPPER_1X.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DeviceType.WISEPAD_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DeviceType.WISECUBE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SimulateReaderUpdate.values().length];
            try {
                iArr2[SimulateReaderUpdate.UPDATE_AVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[SimulateReaderUpdate.REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[SimulateReaderUpdate.REQUIRED_FOR_OFFLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[SimulateReaderUpdate.LOW_BATTERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[SimulateReaderUpdate.LOW_BATTERY_SUCCEED_CONNECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[SimulateReaderUpdate.RANDOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[SimulateReaderUpdate.NONE.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimulatedBbposAdapter(Clock clock, TransactionRepository transactionRepository, CoroutineScope mainScope, SimulatorConfigurationRepository simulatorConfigurationRepository, TerminalStatusManager statusManager, final ApplicationInformationProvider applicationInformationProvider, BbposReaderInfoFactory bbposReaderInfoFactory, UpdateClient updateClient, UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        super(clock, transactionRepository, simulatorConfigurationRepository, statusManager, new Function0<Boolean>() { // from class: com.stripe.stripeterminal.internal.common.adapter.SimulatedBbposAdapter.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(applicationInformationProvider.get().getShopifyReadersEnabled());
            }
        }, logger);
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(mainScope, "mainScope");
        Intrinsics.checkNotNullParameter(simulatorConfigurationRepository, "simulatorConfigurationRepository");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(bbposReaderInfoFactory, "bbposReaderInfoFactory");
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(offlineConfigUpdateListener, "offlineConfigUpdateListener");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.mainScope = mainScope;
        this.applicationInformationProvider = applicationInformationProvider;
        this.bbposReaderInfoFactory = bbposReaderInfoFactory;
        this.updateClient = updateClient;
        this.offlineConfigUpdateListener = offlineConfigUpdateListener;
        Duration.Companion companion = Duration.INSTANCE;
        this.batteryStatusUpdateDelay = DurationKt.toDuration(10, DurationUnit.MINUTES);
        this.cachedUpdateType = getUpdateType();
    }

    private final ApplicationInformation getAppInfo() {
        return this.applicationInformationProvider.getValue(this, $$delegatedProperties[0]);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BaseSimulatedAdapter
    public void onConnect() {
        super.onConnect();
        this.cachedUpdateType = getUpdateType();
        startBatteryStatusUpdates();
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BaseSimulatedAdapter
    public void onDisconnect() {
        super.onDisconnect();
        stopBatteryStatusUpdates();
    }

    private final SimulateReaderUpdate getUpdateType() {
        if (getSimulatorConfigurationRepository().getSimulatorConfiguration().getUpdate() == SimulateReaderUpdate.RANDOM) {
            int iNextInt = Random.INSTANCE.nextInt(5);
            if (iNextInt == 0) {
                return SimulateReaderUpdate.UPDATE_AVAILABLE;
            }
            if (iNextInt == 1) {
                return SimulateReaderUpdate.LOW_BATTERY;
            }
            if (iNextInt == 2) {
                return SimulateReaderUpdate.LOW_BATTERY_SUCCEED_CONNECT;
            }
            if (iNextInt == 3) {
                return SimulateReaderUpdate.REQUIRED_FOR_OFFLINE;
            }
            return SimulateReaderUpdate.REQUIRED;
        }
        return getSimulatorConfigurationRepository().getSimulatorConfiguration().getUpdate();
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.SimulatedBbposAdapter$startBatteryStatusUpdates$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SimulatedBbposAdapter.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.SimulatedBbposAdapter$startBatteryStatusUpdates$1", f = "SimulatedBbposAdapter.kt", i = {0}, l = {115}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class C03821 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.SimulatedBbposAdapter$startBatteryStatusUpdates$1$WhenMappings */
        /* JADX INFO: compiled from: SimulatedBbposAdapter.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SimulateReaderUpdate.values().length];
                try {
                    iArr[SimulateReaderUpdate.LOW_BATTERY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SimulateReaderUpdate.LOW_BATTERY_SUCCEED_CONNECT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SimulateReaderUpdate.UPDATE_AVAILABLE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[SimulateReaderUpdate.NONE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[SimulateReaderUpdate.REQUIRED.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[SimulateReaderUpdate.REQUIRED_FOR_OFFLINE.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[SimulateReaderUpdate.RANDOM.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        C03821(Continuation<? super C03821> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03821 c03821 = SimulatedBbposAdapter.this.new C03821(continuation);
            c03821.L$0 = obj;
            return c03821;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03821) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                coroutineScope = (CoroutineScope) this.L$0;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            while (CoroutineScopeKt.isActive(coroutineScope)) {
                switch (WhenMappings.$EnumSwitchMapping$0[SimulatedBbposAdapter.this.cachedUpdateType.ordinal()]) {
                    case 1:
                    case 2:
                        SimulatedBbposAdapter.this.getStatusManager().reportReaderBatteryInfo(SimulatedBbposAdapter.INSTANCE.getCONNECTED_READER_LOW_BATTERY_INFO$adapter_release());
                        break;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        SimulatedBbposAdapter.this.getStatusManager().reportReaderBatteryInfo(SimulatedBbposAdapter.INSTANCE.getCONNECTED_READER_BATTERY_INFO$adapter_release());
                        break;
                }
                CoroutineScopeKt.ensureActive(coroutineScope);
                this.L$0 = coroutineScope;
                this.label = 1;
                if (DelayKt.m2320delayVtjQ1oo(SimulatedBbposAdapter.this.batteryStatusUpdateDelay, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    private final void startBatteryStatusUpdates() {
        stopBatteryStatusUpdates();
        this.batteryStatusJob = BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new C03821(null), 3, null);
    }

    private final void stopBatteryStatusUpdates() {
        Job job = this.batteryStatusJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BaseSimulatedAdapter
    public Reader getSimulatedReader(DeviceType deviceType) {
        String str;
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        String str2 = deviceType.getSerialPrefixes().get(0) + "SIMULATOR:" + getAppInfo().getDeviceUuid().getValue();
        if (UPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION.contains(this.cachedUpdateType)) {
            str = BaseSimulatedAdapter.OUTDATED_SIMULATED_READER_FIRMWARE_VERSION;
        } else {
            str = BaseSimulatedAdapter.UP_TO_DATE_SIMULATED_READER_FIRMWARE_VERSION;
        }
        String str3 = str;
        return ReaderMaker.INSTANCE.fromReaderInfoSimulated(deviceType, this.bbposReaderInfoFactory.create("58000145356786E99997", "58000352221789E01EB4", "58000414301183E01F2F", "58000214301740E01EC8", "80", "SZZZ_Generic_v36", null, null, null, str3, "simulated-hardware", null, "300001", null, null, null, MapsKt.mapOf(TuplesKt.to("batteryPercentage", "80"), TuplesKt.to("deviceSettingVersion", "SZZZ_Generic_v36"), TuplesKt.to("firmwareVersion", str3), TuplesKt.to("emvKsn", "30000888"), TuplesKt.to("pinKsn", "58000145356786E99997")), str2, null, null, null));
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSoftwareUpdate checkForUpdate(Reader reader, boolean failSilently) throws TerminalException {
        String str;
        Intrinsics.checkNotNullParameter(reader, "reader");
        sleep(SLEEP_QUANTUM_MS);
        try {
            ClientConfigData.Companion companion = ClientConfigData.INSTANCE;
            int i = WhenMappings.$EnumSwitchMapping$0[reader.getDeviceType().ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                str = BaseSimulatedAdapter.CHIPPER_OR_M2_CONFIG_HASH;
            } else {
                if (i != 4 && i != 5) {
                    throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected simulated mPOS reader type.", null, null, 12, null);
                }
                str = BaseSimulatedAdapter.WP3_CONFIG_HASH;
            }
            MobileClientConfig mobileClientConfigDownloadMobilePosConfig = this.updateClient.downloadMobilePosConfig(companion.parseClientConfigData(str));
            MobileClientConfig mobileClientConfigCopy$default = MobileClientConfig.copy$default(mobileClientConfigDownloadMobilePosConfig, null, null, null, null, null, updateOfflineConfigForSimulatedReader$adapter_release(mobileClientConfigDownloadMobilePosConfig.offline_config, reader), null, null, null, null, null, WinError.ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE, null);
            UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener = this.offlineConfigUpdateListener;
            String serialNumber = reader.getSerialNumber();
            if (serialNumber != null) {
                offlineConfigUpdateListener.onOfflineConfigUpdateForMobileReader(serialNumber, mobileClientConfigCopy$default.offline_config, mobileClientConfigCopy$default.tipping_config, mobileClientConfigCopy$default.bluetooth_auto_reconnect_config, mobileClientConfigCopy$default.usb_auto_reconnect_config);
                Calendar calendar = Calendar.getInstance();
                switch (WhenMappings.$EnumSwitchMapping$1[this.cachedUpdateType.ordinal()]) {
                    case 1:
                        calendar.add(3, 1);
                        return new ReaderSoftwareUpdate(calendar.getTimeInMillis(), ReaderSoftwareUpdate.UpdateDurationEstimate.TWO_TO_FIVE_MINUTES, "1.00.03.32-SZZZ_Generic_v37-30000", new ClientVersionSpecPb(null, null, null, null, null, null, null, null, 255, null), null, null, "new-hash", null, mobileClientConfigCopy$default);
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        calendar.add(3, -1);
                        ClientVersionSpecPb clientVersionSpecPb = new ClientVersionSpecPb(null, null, null, null, null, null, null, null, 255, null);
                        return new ReaderSoftwareUpdate(calendar.getTimeInMillis(), ReaderSoftwareUpdate.UpdateDurationEstimate.TWO_TO_FIVE_MINUTES, "1.00.03.32-SZZZ_Generic_v37-30000", clientVersionSpecPb, clientVersionSpecPb, "300001", "new-hash", null, mobileClientConfigCopy$default);
                    case 6:
                    case 7:
                        return null;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            }
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Simulated reader serial should never be null.", null, null, 12, null);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData collectPaymentMethod(PaymentMethodCollectionType paymentMethodCollectionType) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentMethodCollectionType, "paymentMethodCollectionType");
        getStatusManager().requestReaderInput(new ReaderInputOptions(CollectionsKt.listOf((Object[]) new ReaderInputOptions.ReaderInputOption[]{ReaderInputOptions.ReaderInputOption.INSERT, ReaderInputOptions.ReaderInputOption.SWIPE, ReaderInputOptions.ReaderInputOption.TAP})));
        PaymentMethodData card = readCard(false, paymentMethodCollectionType);
        getStatusManager().requestReaderDisplayMessage(ReaderDisplayMessage.REMOVE_CARD);
        return card;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void installUpdate(ReaderSoftwareUpdate update) throws InterruptedException, TerminalException {
        Intrinsics.checkNotNullParameter(update, "update");
        setCancelInstallUpdate(BaseSimulatedAdapter.CancellationState.NOT_CANCELED);
        if (this.cachedUpdateType == SimulateReaderUpdate.LOW_BATTERY || this.cachedUpdateType == SimulateReaderUpdate.LOW_BATTERY_SUCCEED_CONNECT) {
            throw new TerminalException(TerminalErrorCode.READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW, "Update failed due to low battery", null, null, 12, null);
        }
        boolean z = update.getRequiredAtMs() < getClock().currentTimeMillis() || !update.getOnlyInstallRequiredUpdates();
        Boolean[] boolArr = new Boolean[4];
        boolArr[0] = Boolean.valueOf(update.getHasKeyUpdate() && z);
        boolArr[1] = Boolean.valueOf(update.getHasConfigUpdate() && z);
        boolArr[2] = Boolean.valueOf(update.getHasFirmwareUpdate() && z);
        boolArr[3] = Boolean.valueOf(update.getHasIncrementalUpdate());
        List listListOf = CollectionsKt.listOf((Object[]) boolArr);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((Boolean) obj).booleanValue()) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            for (int i2 = 0; i2 < 5; i2++) {
                Thread.sleep(SLEEP_QUANTUM_MS);
                if (getCancelInstallUpdate() == BaseSimulatedAdapter.CancellationState.CANCELED_WITH_ERROR) {
                    throw new TerminalException(TerminalErrorCode.CANCELED, "Update installation was canceled by the user.", null, null, 12, null);
                }
                getStatusManager().reportReaderSoftwareUpdateProgress(((i * 5) + i2) / (size * 5));
            }
        }
    }

    /* JADX INFO: compiled from: SimulatedBbposAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$Companion;", "", "()V", "CONNECTED_READER_BATTERY_INFO", "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "getCONNECTED_READER_BATTERY_INFO$adapter_release", "()Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "CONNECTED_READER_LOW_BATTERY_INFO", "getCONNECTED_READER_LOW_BATTERY_INFO$adapter_release", "SLEEP_QUANTUM_MS", "", "UPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION", "", "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;", "getUPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION$adapter_release", "()Ljava/util/List;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ReaderBatteryInfo getCONNECTED_READER_BATTERY_INFO$adapter_release() {
            return SimulatedBbposAdapter.CONNECTED_READER_BATTERY_INFO;
        }

        public final ReaderBatteryInfo getCONNECTED_READER_LOW_BATTERY_INFO$adapter_release() {
            return SimulatedBbposAdapter.CONNECTED_READER_LOW_BATTERY_INFO;
        }

        public final List<SimulateReaderUpdate> getUPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION$adapter_release() {
            return SimulatedBbposAdapter.UPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION;
        }
    }
}
