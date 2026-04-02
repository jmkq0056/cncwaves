package com.stripe.stripeterminal.internal.common.adapter;

import android.hardware.usb.UsbDevice;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.core.bbpos.hardware.DeviceListenerRegistry;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.ConnectionType;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.ReaderInfoController;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.core.hardware.reactive.emv.ReactiveConfigurationListener;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.readerconnection.ConnectionManager;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.readerupdate.UpdateInstaller;
import com.stripe.core.readerupdate.UpdateManager;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.hardware.emv.DomesticDebitAidsParser;
import com.stripe.hardware.status.DisconnectCause;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.UsbScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.LocationStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepositoryKt;
import com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector;
import com.stripe.stripeterminal.internal.common.connectandupdate.ConnectAndUpdateStateMachine;
import com.stripe.stripeterminal.internal.common.log.MposReaderDebugLogManager;
import com.stripe.stripeterminal.internal.common.log.MposReaderEventLogger;
import com.stripe.stripeterminal.internal.common.makers.DeviceTypeMaker;
import com.stripe.stripeterminal.internal.common.makers.KmpReaderMaker;
import com.stripe.stripeterminal.internal.common.makers.ReaderMaker;
import com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository;
import com.stripe.stripeterminal.internal.common.usb.UsbPermissionReceiverManager;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import com.stripe.transaction.Settings;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: BbposUsbAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Î\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 p2\u00020\u0001:\u0004pqrsB¿\u0002\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0006\u0010 \u001a\u00020!\u0012\u0006\u0010\"\u001a\u00020#\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020'\u0012\u0006\u0010(\u001a\u00020)\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-\u0012\u0006\u0010.\u001a\u00020/\u0012\u0006\u00100\u001a\u000201\u0012\u0006\u00102\u001a\u000203\u0012\"\u00104\u001a\u001e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020905j\u0002`:\u0012\u0006\u0010;\u001a\u00020<\u0012\u0006\u0010=\u001a\u00020>\u0012\"\u0010?\u001a\u001e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020C05j\u0002`D\u0012\u0006\u0010E\u001a\u00020F\u0012\u0006\u0010G\u001a\u00020H\u0012\u0006\u0010I\u001a\u00020J¢\u0006\u0002\u0010KJ\u0014\u0010Y\u001a\u00060ZR\u00020\u00012\u0006\u0010[\u001a\u00020\\H\u0014J\u001c\u0010]\u001a\u00060^R\u00020\u00012\u0006\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020bH\u0014J\u0012\u0010c\u001a\u0004\u0018\u00010d2\u0006\u0010[\u001a\u00020\\H\u0014J\u0014\u0010e\u001a\u00060fR\u00020\u00012\u0006\u0010[\u001a\u00020\\H\u0014J\u0010\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020jH\u0014J\u001c\u0010k\u001a\u00020h2\b\u0010l\u001a\u0004\u0018\u00010m2\b\u0010n\u001a\u0004\u0018\u00010oH\u0016R\u001b\u0010L\u001a\u00020M8BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\bP\u0010Q*\u0004\bN\u0010OR\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010R\u001a\u0004\u0018\u00010SX\u0082\u000e¢\u0006\u0004\n\u0002\u0010TR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R*\u00104\u001a\u001e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020905j\u0002`:X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010U\u001a\u0004\u0018\u00010VX\u0082\u000e¢\u0006\u0004\n\u0002\u0010WR\u0012\u0010X\u001a\u0004\u0018\u00010VX\u0082\u000e¢\u0006\u0004\n\u0002\u0010WR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "connectionManager", "Lcom/stripe/core/readerconnection/ConnectionManager;", "updateManager", "Lcom/stripe/core/readerupdate/UpdateManager;", "configListener", "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;", "readerStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "updateListener", "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "updateInstaller", "Lcom/stripe/core/readerupdate/UpdateInstaller;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "deviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "usbPermissionReceiver", "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "readerUpdateController", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "readerInfoController", "Lcom/stripe/core/hardware/ReaderInfoController;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "connectAndUpdateStateMachine", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;", "paymentCollectionWrapper", "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;", "resourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;", "deviceListener", "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;", "deviceListenerRegistry", "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;", "domesticDebitAidsParser", "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;", "connectivityHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/UsbConnectivityHealthLogger;", "disconnectReasonRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;", "readerInfoRepository", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "singleUpdateHealthLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;", "mposReaderEventLogger", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;", "mposReaderDebugLogManager", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "appInfo", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "getAppInfo$delegate", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Ljava/lang/Object;", "getAppInfo", "()Lcom/stripe/terminal/appinfo/ApplicationInformation;", "attemptDelayMillis", "", "Ljava/lang/Long;", "reconnectionMaxAttempts", "", "Ljava/lang/Integer;", "reconnectionMaxTimeoutInSeconds", "makeConnectReaderOperation", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "makeDiscoverReadersOperation", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "makeHardwareReader", "Lcom/stripe/core/hardware/Reader$UsbReader;", "makeReconnectReaderOperation", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;", "onDisconnect", "", "disconnectCause", "Lcom/stripe/hardware/status/DisconnectCause;", "setReconnectParams", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "Companion", "ConnectUsbReaderOperation", "DiscoverUsbReadersOperation", "ReconnectUsbReaderOperation", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposUsbAdapter extends BbposAdapter {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(BbposUsbAdapter.class, "appInfo", "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;", 0))};
    private static final Companion Companion = new Companion(null);
    private static final List<DeviceType> SUPPORTED_USB_DEVICE_TYPES = CollectionsKt.listOf((Object[]) new DeviceType[]{DeviceType.CHIPPER_2X, DeviceType.STRIPE_M2, DeviceType.WISEPAD_3, DeviceType.WISEPAD_3S, DeviceType.WISECUBE});
    private static final int VALID_READER_SERIAL_LENGTH = 15;
    private final ApplicationInformationProvider applicationInformationProvider;
    private Long attemptDelayMillis;
    private final ConnectionManager connectionManager;
    private final HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder> connectivityHealthLogger;
    private final DeviceControllerWrapper deviceController;
    private final DisconnectReasonRepository disconnectReasonRepository;
    private final FeatureFlagsRepository featureFlagsRepository;
    private final ReactiveReaderStatusListener readerStatusListener;
    private Integer reconnectionMaxAttempts;
    private Integer reconnectionMaxTimeoutInSeconds;
    private final Scheduler scheduler;
    private final CoroutineScope scope;
    private final SessionTokenRepository sessionTokenRepository;
    private final TerminalStatusManager statusManager;
    private final UpdateManager updateManager;
    private final UsbPermissionReceiverManager usbPermissionReceiver;

    /* JADX INFO: compiled from: BbposUsbAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DisconnectCause.values().length];
            try {
                iArr[DisconnectCause.CONNECTED_TO_ANOTHER_DEVICE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DisconnectCause.USB_DEVICE_PERMISSION_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DisconnectCause.USB_NOT_SUPPORTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BbposUsbAdapter(UpdateClient updateClient, SessionTokenRepository sessionTokenRepository, Scheduler scheduler, CoroutineScope scope, ConnectionManager connectionManager, UpdateManager updateManager, ReactiveConfigurationListener configListener, ReactiveReaderStatusListener readerStatusListener, ReactiveReaderUpdateListener updateListener, UpdateInstaller updateInstaller, TerminalStatusManager statusManager, SettingsRepository settingsRepository, DeviceControllerWrapper deviceController, UsbPermissionReceiverManager usbPermissionReceiver, FeatureFlagsRepository featureFlagsRepository, ReaderUpdateController readerUpdateController, ReaderInfoController readerInfoController, ApplicationInformationProvider applicationInformationProvider, TransactionRepository transactionRepository, ConnectAndUpdateStateMachine connectAndUpdateStateMachine, PaymentCollectionCoordinatorWrapper paymentCollectionWrapper, ProxyResourceRepository resourceRepository, TerminalSdkDeviceListenerWrapper deviceListener, DeviceListenerRegistry deviceListenerRegistry, DomesticDebitAidsParser domesticDebitAidsParser, HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder> connectivityHealthLogger, DisconnectReasonRepository disconnectReasonRepository, ReaderInfoRepository readerInfoRepository, HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> singleUpdateHealthLogger, MposReaderEventLogger mposReaderEventLogger, MposReaderDebugLogManager mposReaderDebugLogManager, LoggerFactory loggerFactory) {
        super(updateClient, sessionTokenRepository, scheduler, scope, connectionManager, updateManager, configListener, readerStatusListener, updateListener, updateInstaller, statusManager, settingsRepository, featureFlagsRepository, readerUpdateController, paymentCollectionWrapper, transactionRepository, connectAndUpdateStateMachine, readerInfoController, resourceRepository, deviceListener, deviceListenerRegistry, domesticDebitAidsParser, disconnectReasonRepository, readerInfoRepository, singleUpdateHealthLogger, mposReaderEventLogger, mposReaderDebugLogManager, loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposUsbAdapter.class)), loggerFactory);
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(sessionTokenRepository, "sessionTokenRepository");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(connectionManager, "connectionManager");
        Intrinsics.checkNotNullParameter(updateManager, "updateManager");
        Intrinsics.checkNotNullParameter(configListener, "configListener");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        Intrinsics.checkNotNullParameter(updateInstaller, "updateInstaller");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        Intrinsics.checkNotNullParameter(usbPermissionReceiver, "usbPermissionReceiver");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(readerUpdateController, "readerUpdateController");
        Intrinsics.checkNotNullParameter(readerInfoController, "readerInfoController");
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(connectAndUpdateStateMachine, "connectAndUpdateStateMachine");
        Intrinsics.checkNotNullParameter(paymentCollectionWrapper, "paymentCollectionWrapper");
        Intrinsics.checkNotNullParameter(resourceRepository, "resourceRepository");
        Intrinsics.checkNotNullParameter(deviceListener, "deviceListener");
        Intrinsics.checkNotNullParameter(deviceListenerRegistry, "deviceListenerRegistry");
        Intrinsics.checkNotNullParameter(domesticDebitAidsParser, "domesticDebitAidsParser");
        Intrinsics.checkNotNullParameter(connectivityHealthLogger, "connectivityHealthLogger");
        Intrinsics.checkNotNullParameter(disconnectReasonRepository, "disconnectReasonRepository");
        Intrinsics.checkNotNullParameter(readerInfoRepository, "readerInfoRepository");
        Intrinsics.checkNotNullParameter(singleUpdateHealthLogger, "singleUpdateHealthLogger");
        Intrinsics.checkNotNullParameter(mposReaderEventLogger, "mposReaderEventLogger");
        Intrinsics.checkNotNullParameter(mposReaderDebugLogManager, "mposReaderDebugLogManager");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.sessionTokenRepository = sessionTokenRepository;
        this.scheduler = scheduler;
        this.scope = scope;
        this.connectionManager = connectionManager;
        this.updateManager = updateManager;
        this.readerStatusListener = readerStatusListener;
        this.statusManager = statusManager;
        this.deviceController = deviceController;
        this.usbPermissionReceiver = usbPermissionReceiver;
        this.featureFlagsRepository = featureFlagsRepository;
        this.applicationInformationProvider = applicationInformationProvider;
        this.connectivityHealthLogger = connectivityHealthLogger;
        this.disconnectReasonRepository = disconnectReasonRepository;
    }

    private final ApplicationInformation getAppInfo() {
        return this.applicationInformationProvider.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: compiled from: BbposUsbAdapter.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$Companion;", "", "()V", "SUPPORTED_USB_DEVICE_TYPES", "", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "VALID_READER_SERIAL_LENGTH", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected BbposAdapter.ConnectReaderOperation makeConnectReaderOperation(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new ConnectUsbReaderOperation(this, reader);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected BbposAdapter.DiscoverReadersOperation makeDiscoverReadersOperation(DiscoveryConfiguration config, DiscoveryListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return new DiscoverUsbReadersOperation(this, config, listener, getAppInfo());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    public Reader.UsbReader makeHardwareReader(com.stripe.stripeterminal.external.models.Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return ReaderMaker.INSTANCE.fromUsbDeviceOrNull(reader.getUsbDevice());
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void setReconnectParams(BluetoothAutoReconnectConfigPb bluetoothConfig, UsbAutoReconnectConfigPb usbConfig) {
        this.reconnectionMaxAttempts = usbConfig != null ? Integer.valueOf(usbConfig.max_retry_attempts) : null;
        this.reconnectionMaxTimeoutInSeconds = usbConfig != null ? Integer.valueOf(usbConfig.max_timeout_seconds) : null;
        this.attemptDelayMillis = usbConfig != null ? Long.valueOf(usbConfig.attempt_delay_millis) : null;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected BbposAdapter.ReconnectReaderOperation makeReconnectReaderOperation(com.stripe.stripeterminal.external.models.Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new ReconnectUsbReaderOperation(this, reader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposUsbAdapter.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V", "reconnectJob", "Lkotlinx/coroutines/Job;", "reconnector", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;", "cancel", "", "execute", "failReconnection", "onConnectDevice", "Lcom/stripe/core/hardware/Reader;", "onReportReaderInfo", "info", "Lcom/stripe/hardware/status/ReaderInfo;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class ReconnectUsbReaderOperation extends BbposAdapter.ReconnectReaderOperation {
        private final com.stripe.stripeterminal.external.models.Reader reader;
        private Job reconnectJob;
        private final UsbReaderReconnector reconnector;
        final /* synthetic */ BbposUsbAdapter this$0;

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation
        public void onConnectDevice(com.stripe.core.hardware.Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation
        public void onReportReaderInfo(ReaderInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReconnectUsbReaderOperation(BbposUsbAdapter bbposUsbAdapter, com.stripe.stripeterminal.external.models.Reader reader) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = bbposUsbAdapter;
            this.reader = reader;
            this.reconnector = new UsbReaderReconnector(bbposUsbAdapter.readerStatusListener, bbposUsbAdapter.connectivityHealthLogger, bbposUsbAdapter.getLogger(), bbposUsbAdapter.scheduler, bbposUsbAdapter.reconnectionMaxTimeoutInSeconds, bbposUsbAdapter.reconnectionMaxAttempts, bbposUsbAdapter.attemptDelayMillis);
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ReconnectReaderOperation
        public void cancel() {
            Job job = this.reconnectJob;
            if (job == null || !job.isActive()) {
                return;
            }
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            failReconnection();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public com.stripe.stripeterminal.external.models.Reader execute() {
            this.reconnectJob = BuildersKt__Builders_commonKt.launch$default(this.this$0.scope, null, null, new BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1(this, this.this$0, null), 3, null);
            return get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void failReconnection() {
            this.this$0.deviceController.stopUsb();
            this.this$0.onFailure(new TerminalException(TerminalErrorCode.USB_DISCONNECTED, "USB reconnection failed.", null, null, 12, null));
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected void onDisconnect(DisconnectCause disconnectCause) throws IllegalAccessException, InstantiationException {
        TerminalException terminalException;
        Intrinsics.checkNotNullParameter(disconnectCause, "disconnectCause");
        if ((getOperationInProgress() instanceof BbposAdapter.DiscoverReadersOperation) && disconnectCause == DisconnectCause.CONNECTED_TO_ANOTHER_DEVICE) {
            getLogger().d("onDisconnect: Discovery is in progress. Ignore.", new Pair[0]);
            return;
        }
        if (!this.featureFlagsRepository.getFeatureFlags().disable_bluetooth_auto_reconnect_android_sdk && getRequestReconnection() != null && !(getOperationInProgress() instanceof BbposAdapter.ConnectReaderOperation)) {
            super.onDisconnect(disconnectCause);
            onFailure(new TerminalException(TerminalErrorCode.USB_RECONNECT_STARTED, "USB unexpectedly disconnected during operation, reconnecting.", null, null, 12, null));
            startReconnect();
            return;
        }
        if (getOperationInProgress() instanceof BbposAdapter.ReconnectReaderOperation) {
            getLogger().d("onDisconnect: Reconnection is in progress. Ignore.", new Pair[0]);
            return;
        }
        super.onDisconnect(disconnectCause);
        int i = WhenMappings.$EnumSwitchMapping$0[disconnectCause.ordinal()];
        if (i == 1) {
            terminalException = new TerminalException(TerminalErrorCode.READER_CONNECTED_TO_ANOTHER_DEVICE, "Reader is already connected to another device.", null, null, 12, null);
        } else if (i == 2) {
            terminalException = new TerminalException(TerminalErrorCode.USB_PERMISSION_DENIED, "You must grant Terminal SDK permission to connect to USB reader.", null, null, 12, null);
        } else if (i == 3) {
            terminalException = new TerminalException(TerminalErrorCode.USB_DISCONNECTED, "USB not supported by device hardware.", null, null, 12, null);
        } else {
            terminalException = new TerminalException(TerminalErrorCode.USB_DISCONNECTED, "USB unexpectedly disconnected during operation.", null, null, 12, null);
        }
        onFailure(terminalException);
        DisconnectReason disconnectReasonConsumeDisconnectReason = this.disconnectReasonRepository.consumeDisconnectReason();
        HealthLogger.incrementCounter$default(this.connectivityHealthLogger, null, MapsKt.mapOf(TuplesKt.to("disconnect_reason", DisconnectReasonRepositoryKt.toLogString(disconnectReasonConsumeDisconnectReason)), TuplesKt.to("reason", terminalException.getErrorCode().toLogString())), null, new Function2<UsbScope.Builder, Counter, Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter.onDisconnect.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(UsbScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(UsbScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.unexpected_disconnect = event;
            }
        }, 5, null);
        this.statusManager.reportDisconnect(disconnectReasonConsumeDisconnectReason);
        this.statusManager.unexpectedDisconnect();
    }

    /* JADX INFO: compiled from: BbposUsbAdapter.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V", "device", "Landroid/hardware/usb/UsbDevice;", "execute", "onConnectDevice", "", "Lcom/stripe/core/hardware/Reader;", "onReportReaderInfo", "info", "Lcom/stripe/hardware/status/ReaderInfo;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class ConnectUsbReaderOperation extends BbposAdapter.ConnectReaderOperation {
        private UsbDevice device;
        private final com.stripe.stripeterminal.external.models.Reader reader;
        final /* synthetic */ BbposUsbAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConnectUsbReaderOperation(BbposUsbAdapter bbposUsbAdapter, com.stripe.stripeterminal.external.models.Reader reader) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = bbposUsbAdapter;
            this.reader = reader;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public com.stripe.stripeterminal.external.models.Reader execute() throws TerminalException {
            Unit unit;
            Reader.UsbReader usbReaderMakeHardwareReader = this.this$0.makeHardwareReader(this.reader);
            if (usbReaderMakeHardwareReader != null) {
                final BbposUsbAdapter bbposUsbAdapter = this.this$0;
                this.device = this.reader.getUsbDevice();
                bbposUsbAdapter.connectionManager.startConnect(usbReaderMakeHardwareReader);
                bbposUsbAdapter.update();
                bbposUsbAdapter.sessionTokenRepository.setSessionTokenListener(new SessionTokenRepository.TokenChangeListener() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$ConnectUsbReaderOperation$execute$1$1
                    @Override // com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository.TokenChangeListener
                    public void onSessionTokenChanged(String token) {
                        bbposUsbAdapter.update();
                    }
                });
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                this.this$0.onFailure(new TerminalException(TerminalErrorCode.MISSING_REQUIRED_PARAMETER, "Connect reader requires usbDevice", null, null, 12, null));
            }
            return get();
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation
        public void onConnectDevice(com.stripe.core.hardware.Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            if (!(reader instanceof Reader.UsbReader)) {
                this.this$0.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected reader type: " + reader.getClass().getSimpleName(), null, null, 12, null));
            }
            this.this$0.connectionManager.startReaderInfo();
            this.this$0.update();
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation
        public void onReportReaderInfo(ReaderInfo info) {
            String string;
            Intrinsics.checkNotNullParameter(info, "info");
            KmpReaderMaker kmpReaderMaker = KmpReaderMaker.INSTANCE;
            DeviceTypeMaker.Companion companion = DeviceTypeMaker.INSTANCE;
            String serial = info.getSerial();
            if (serial == null) {
                serial = "";
            }
            com.stripe.stripeterminal.external.models.Reader readerWithReaderInfo = kmpReaderMaker.withReaderInfo(info, companion.fromSerial(serial), (32812 & 4) != 0 ? null : null, (32812 & 8) != 0 ? null : this.device, (32812 & 16) != 0 ? LocationStatus.UNKNOWN : null, (32812 & 32) != 0 ? null : null, (32812 & 64) != 0 ? null : null, (32812 & 128) != 0 ? null : null, (32812 & 256) != 0 ? null : null, (32812 & 512) != 0 ? null : null, (32812 & 1024) != 0 ? null : null, (32812 & 2048) != 0 ? null : null, (32812 & 4096) != 0 ? null : null, (32812 & 8192) != 0 ? null : null, (32812 & 16384) != 0 ? null : null, (32812 & 32768) != 0 ? false : false);
            SimpleLogger logger = this.this$0.getLogger();
            Pair<String, ? extends Object>[] pairArr = new Pair[2];
            pairArr[0] = TuplesKt.to("reader_software_version", readerWithReaderInfo.getSoftwareVersion());
            Float batteryLevel = readerWithReaderInfo.getBatteryLevel();
            if (batteryLevel == null || (string = batteryLevel.toString()) == null) {
                string = "unavailable";
            }
            pairArr[1] = TuplesKt.to("reader_battery_level", string);
            logger.i(null, pairArr);
            this.this$0.setSettings(new Settings(this.this$0.emvTransactionTypeForDeviceType(readerWithReaderInfo.getDeviceType()), false));
            this.this$0.connectionManager.endOperation();
            this.this$0.update();
            set(readerWithReaderInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposUsbAdapter.kt */
    @Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0082@¢\u0006\u0002\u0010!J\u001e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0#2\u0006\u0010 \u001a\u00020\u001fH\u0082@¢\u0006\u0002\u0010!J\b\u0010$\u001a\u00020%H\u0016J\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020'0#H\u0082@¢\u0006\u0002\u0010(J\b\u0010)\u001a\u00020'H\u0002J*\u0010*\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020,\u0018\u00010+0#2\u0006\u0010 \u001a\u00020\u001fH\u0082@¢\u0006\u0002\u0010!J$\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020,\u0018\u00010+2\u0006\u0010.\u001a\u00020\u001fH\u0082@¢\u0006\u0002\u0010!J$\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020,\u0018\u00010+2\u0006\u0010 \u001a\u00020\u001fH\u0082@¢\u0006\u0002\u0010!J$\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002010\u000f0#*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0011020#H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\"\u0010\u000e\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u00100\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019*\u0004\u0018\u00010\u001a8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0019*\u0004\u0018\u00010\u001a8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001c\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00063"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "applicationInformation", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/terminal/appinfo/ApplicationInformation;)V", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", "getConnectionType", "()Lcom/stripe/core/hardware/ConnectionType;", "readerClasses", "", "Lkotlin/reflect/KClass;", "Lcom/stripe/core/hardware/Reader;", "getReaderClasses", "()Ljava/util/List;", "timeout", "Lkotlin/time/Duration;", "getTimeout-UwyO8pc", "()J", "hasSupportedPrefix", "", "", "getHasSupportedPrefix", "(Ljava/lang/String;)Z", "isValidReaderSerial", "checkUsbPermission", "Landroid/hardware/usb/UsbDevice;", "usbDevice", "(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "connect", "Lkotlinx/coroutines/flow/Flow;", "createTimeoutException", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "disconnect", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disconnectUnsafe", "getDeviceInfo", "Lkotlin/Pair;", "Lcom/stripe/hardware/status/ReaderInfo;", "getDeviceName", "device", "pairWithReaderInfo", "transformDiscoveredReaders", "Lcom/stripe/stripeterminal/external/models/Reader;", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class DiscoverUsbReadersOperation extends BbposAdapter.DiscoverReadersOperation {
        private final ApplicationInformation applicationInformation;
        private final DiscoveryConfiguration config;
        final /* synthetic */ BbposUsbAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DiscoverUsbReadersOperation(BbposUsbAdapter bbposUsbAdapter, DiscoveryConfiguration config, DiscoveryListener listener, ApplicationInformation applicationInformation) {
            super(bbposUsbAdapter, listener);
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(applicationInformation, "applicationInformation");
            this.this$0 = bbposUsbAdapter;
            this.config = config;
            this.applicationInformation = applicationInformation;
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        public ConnectionType getConnectionType() {
            return ConnectionType.USB;
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        /* JADX INFO: renamed from: getTimeout-UwyO8pc */
        public long mo508getTimeoutUwyO8pc() {
            Duration.Companion companion = Duration.INSTANCE;
            DiscoveryConfiguration discoveryConfiguration = this.config;
            Intrinsics.checkNotNull(discoveryConfiguration, "null cannot be cast to non-null type com.stripe.stripeterminal.external.models.DiscoveryConfiguration.UsbDiscoveryConfiguration");
            return DurationKt.toDuration(((DiscoveryConfiguration.UsbDiscoveryConfiguration) discoveryConfiguration).getTimeout(), DurationUnit.SECONDS);
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        public TerminalException createTimeoutException() {
            return new TerminalException(TerminalErrorCode.USB_DISCOVERY_TIMED_OUT, "Usb discovery timed out", null, null, 12, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        public List<KClass<? extends com.stripe.core.hardware.Reader>> getReaderClasses() {
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.UsbReader.Chipper2xReader.class));
            listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.UsbReader.StripeM2Reader.class));
            listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.UsbReader.Wisepad3Reader.class));
            if (this.applicationInformation.getWisepad3SReadersEnabled()) {
                listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.UsbReader.Wisepad3SReader.class));
            }
            if (this.applicationInformation.getShopifyReadersEnabled()) {
                listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.UsbReader.WisecubeReader.class));
            }
            return CollectionsKt.build(listCreateListBuilder);
        }

        private final boolean getHasSupportedPrefix(String str) {
            if (str == null) {
                return false;
            }
            List list = BbposUsbAdapter.SUPPORTED_USB_DEVICE_TYPES;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                List<String> serialPrefixes = ((DeviceType) it.next()).getSerialPrefixes();
                if (!(serialPrefixes instanceof Collection) || !serialPrefixes.isEmpty()) {
                    Iterator<T> it2 = serialPrefixes.iterator();
                    while (it2.hasNext()) {
                        if (StringsKt.startsWith$default(str, (String) it2.next(), false, 2, (Object) null)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        private final boolean isValidReaderSerial(String str) {
            if (str != null && getHasSupportedPrefix(str) && str.length() >= 15) {
                String str2 = str;
                for (int i = 0; i < str2.length(); i++) {
                    if (Character.isLetterOrDigit(str2.charAt(i))) {
                    }
                }
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object pairWithReaderInfo(android.hardware.usb.UsbDevice r31, kotlin.coroutines.Continuation<? super kotlin.Pair<? extends android.hardware.usb.UsbDevice, com.stripe.hardware.status.ReaderInfo>> r32) throws com.stripe.stripeterminal.external.models.TerminalException {
            /*
                Method dump skipped, instruction units count: 209
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter.DiscoverUsbReadersOperation.pairWithReaderInfo(android.hardware.usb.UsbDevice, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object checkUsbPermission(android.hardware.usb.UsbDevice r7, kotlin.coroutines.Continuation<? super android.hardware.usb.UsbDevice> r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1
                if (r0 == 0) goto L14
                r0 = r8
                com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1 r0 = (com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r1 = r1 & r2
                if (r1 == 0) goto L14
                int r8 = r0.label
                int r8 = r8 - r2
                r0.label = r8
                goto L19
            L14:
                com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1 r0 = new com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1
                r0.<init>(r6, r8)
            L19:
                java.lang.Object r8 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L3e
                if (r2 != r3) goto L36
                java.lang.Object r7 = r0.L$2
                com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter r7 = (com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter) r7
                java.lang.Object r7 = r0.L$1
                android.hardware.usb.UsbDevice r7 = (android.hardware.usb.UsbDevice) r7
                java.lang.Object r7 = r0.L$0
                com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation r7 = (com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter.DiscoverUsbReadersOperation) r7
                kotlin.ResultKt.throwOnFailure(r8)
                goto L8c
            L36:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L3e:
                kotlin.ResultKt.throwOnFailure(r8)
                com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter r8 = r6.this$0
                r0.L$0 = r6
                r0.L$1 = r7
                r0.L$2 = r8
                r0.label = r3
                kotlin.coroutines.Continuation r0 = (kotlin.coroutines.Continuation) r0
                kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl
                kotlin.coroutines.Continuation r4 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)
                r2.<init>(r4, r3)
                r2.initCancellability()
                r3 = r2
                kotlinx.coroutines.CancellableContinuation r3 = (kotlinx.coroutines.CancellableContinuation) r3
                com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$1 r4 = new com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$1
                r4.<init>()
                kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
                r3.invokeOnCancellation(r4)
                com.stripe.stripeterminal.internal.common.usb.UsbPermissionReceiverManager r8 = com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter.access$getUsbPermissionReceiver$p(r8)
                com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$2 r4 = new com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$2
                r4.<init>(r3)
                kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
                com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$3 r5 = new com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$3
                r5.<init>()
                kotlin.jvm.functions.Function0 r5 = (kotlin.jvm.functions.Function0) r5
                r8.startListening(r7, r4, r5)
                java.lang.Object r8 = r2.getResult()
                java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                if (r8 != r7) goto L88
                kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
            L88:
                if (r8 != r1) goto L8b
                return r1
            L8b:
                r7 = r6
            L8c:
                android.hardware.usb.UsbDevice r8 = (android.hardware.usb.UsbDevice) r8
                com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter r7 = r7.this$0
                com.stripe.stripeterminal.internal.common.usb.UsbPermissionReceiverManager r7 = com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter.access$getUsbPermissionReceiver$p(r7)
                r7.stopListening()
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter.DiscoverUsbReadersOperation.checkUsbPermission(android.hardware.usb.UsbDevice, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object getDeviceName(UsbDevice usbDevice, Continuation<? super Pair<? extends UsbDevice, ReaderInfo>> continuation) {
            return CoroutineScopeKt.coroutineScope(new BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2(this, usbDevice, this.this$0, null), continuation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object connect(UsbDevice usbDevice, Continuation<? super Flow<? extends UsbDevice>> continuation) {
            return FlowKt.callbackFlow(new BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2(this.this$0, usbDevice, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object disconnect(Continuation<? super Flow<Unit>> continuation) {
            return FlowKt.callbackFlow(new BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2(this.this$0, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object getDeviceInfo(UsbDevice usbDevice, Continuation<? super Flow<? extends Pair<? extends UsbDevice, ReaderInfo>>> continuation) {
            return FlowKt.callbackFlow(new BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2(this.this$0, usbDevice, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void disconnectUnsafe() {
            BuildersKt__Builders_commonKt.launch$default(this.this$0.scope, null, null, new BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1(this, null), 3, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        public Flow<List<com.stripe.stripeterminal.external.models.Reader>> transformDiscoveredReaders(final Flow<? extends Set<? extends com.stripe.core.hardware.Reader>> flow) {
            Intrinsics.checkNotNullParameter(flow, "<this>");
            Flow<List<? extends UsbDevice>> flow2 = new Flow<List<? extends UsbDevice>>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1$2$1, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1$2", f = "BbposUsbAdapter.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.$this_unsafeFlow = flowCollector;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                        /*
                            r6 = this;
                            boolean r0 = r8 instanceof com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r8
                            com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1$2$1 r0 = (com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r8 = r0.label
                            int r8 = r8 - r2
                            r0.label = r8
                            goto L19
                        L14:
                            com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1$2$1 r0 = new com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1$2$1
                            r0.<init>(r8)
                        L19:
                            java.lang.Object r8 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L32
                            if (r2 != r3) goto L2a
                            kotlin.ResultKt.throwOnFailure(r8)
                            goto L8b
                        L2a:
                            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                            r7.<init>(r8)
                            throw r7
                        L32:
                            kotlin.ResultKt.throwOnFailure(r8)
                            kotlinx.coroutines.flow.FlowCollector r8 = r6.$this_unsafeFlow
                            r2 = r0
                            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                            java.util.Set r7 = (java.util.Set) r7
                            java.lang.Iterable r7 = (java.lang.Iterable) r7
                            java.util.ArrayList r2 = new java.util.ArrayList
                            r2.<init>()
                            java.util.Collection r2 = (java.util.Collection) r2
                            java.util.Iterator r7 = r7.iterator()
                        L49:
                            boolean r4 = r7.hasNext()
                            if (r4 == 0) goto L5b
                            java.lang.Object r4 = r7.next()
                            boolean r5 = r4 instanceof com.stripe.core.hardware.Reader.UsbReader
                            if (r5 == 0) goto L49
                            r2.add(r4)
                            goto L49
                        L5b:
                            java.util.List r2 = (java.util.List) r2
                            java.lang.Iterable r2 = (java.lang.Iterable) r2
                            java.util.ArrayList r7 = new java.util.ArrayList
                            r7.<init>()
                            java.util.Collection r7 = (java.util.Collection) r7
                            java.util.Iterator r2 = r2.iterator()
                        L6a:
                            boolean r4 = r2.hasNext()
                            if (r4 == 0) goto L80
                            java.lang.Object r4 = r2.next()
                            com.stripe.core.hardware.Reader$UsbReader r4 = (com.stripe.core.hardware.Reader.UsbReader) r4
                            android.hardware.usb.UsbDevice r4 = r4.getDevice()
                            if (r4 == 0) goto L6a
                            r7.add(r4)
                            goto L6a
                        L80:
                            java.util.List r7 = (java.util.List) r7
                            r0.label = r3
                            java.lang.Object r7 = r8.emit(r7, r0)
                            if (r7 != r1) goto L8b
                            return r1
                        L8b:
                            kotlin.Unit r7 = kotlin.Unit.INSTANCE
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super List<? extends UsbDevice>> flowCollector, Continuation continuation) {
                    Object objCollect = flow.collect(new AnonymousClass2(flowCollector), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            };
            final BbposUsbAdapter bbposUsbAdapter = this.this$0;
            return FlowKt.mapLatest(FlowKt.distinctUntilChanged(flow2, new Function2<List<? extends UsbDevice>, List<? extends UsbDevice>, Boolean>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$2
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Boolean invoke(List<? extends UsbDevice> old, List<? extends UsbDevice> list) {
                    Intrinsics.checkNotNullParameter(old, "old");
                    Intrinsics.checkNotNullParameter(list, "new");
                    ArrayList arrayList = new ArrayList();
                    Iterator<T> it = old.iterator();
                    while (it.hasNext()) {
                        String productName = ((UsbDevice) it.next()).getProductName();
                        if (productName != null) {
                            arrayList.add(productName);
                        }
                    }
                    Set set = CollectionsKt.toSet(arrayList);
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<T> it2 = list.iterator();
                    while (it2.hasNext()) {
                        String productName2 = ((UsbDevice) it2.next()).getProductName();
                        if (productName2 != null) {
                            arrayList2.add(productName2);
                        }
                    }
                    Set set2 = CollectionsKt.toSet(arrayList2);
                    boolean z = false;
                    bbposUsbAdapter.getLogger().d("transformDiscoveredReaders", TuplesKt.to("newDiscoveredReaders", set2), TuplesKt.to("previouslyDiscoveredReaders", set));
                    if (old.size() == list.size() && Intrinsics.areEqual(set, set2)) {
                        z = true;
                    }
                    return Boolean.valueOf(z);
                }
            }), new BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3(this, this.this$0, null));
        }
    }
}
