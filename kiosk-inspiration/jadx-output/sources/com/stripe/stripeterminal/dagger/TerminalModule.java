package com.stripe.stripeterminal.dagger;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import com.stripe.cancelintent.CancelIntentManager;
import com.stripe.cancelintent.DefaultCancelIntentManager;
import com.stripe.core.hardware.Reader;
import com.stripe.core.locale.LocaleManager;
import com.stripe.core.locale.NoOpLocaleManager;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.discoverreaders.DefaultEnsureSingleDiscoverOperation;
import com.stripe.discoverreaders.EnsureSingleDiscoverOperation;
import com.stripe.jvmcore.client.dagger.HttpClientModule;
import com.stripe.jvmcore.dagger.ConnectionTokenManagement;
import com.stripe.jvmcore.dagger.Debug;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.dagger.Transaction;
import com.stripe.jvmcore.dagger.Updates;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.forms.logger.FormsIntegrationLogger;
import com.stripe.jvmcore.forms.transform.CollectInputsExternalModelTransformer;
import com.stripe.jvmcore.forms.transform.CollectInputsParametersTransformer;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusRepository;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.OfflineReaderSetup;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.helpers.OfflineDatabaseReaper;
import com.stripe.offlinemode.helpers.OfflineSessionManager;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.spos.sentry.http.ErrorReporter;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import com.stripe.stripeterminal.external.callable.TerminalListener;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.AdapterRepository;
import com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter;
import com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter;
import com.stripe.stripeterminal.internal.common.adapter.CotsAdapter;
import com.stripe.stripeterminal.internal.common.adapter.DefaultAdapterRepository;
import com.stripe.stripeterminal.internal.common.adapter.ProxyAdapter;
import com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter;
import com.stripe.stripeterminal.internal.common.adapter.SimulatedIpAdapter;
import com.stripe.stripeterminal.internal.common.adapter.SimulatedMobileAdapter;
import com.stripe.stripeterminal.internal.common.adapter.SimulatorConfigurationRepository;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyTerminalListener;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import com.stripe.stripeterminal.internal.common.introspection.LocationServicesValidator;
import com.stripe.stripeterminal.internal.common.log.SentryAndroidKt;
import com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ProxyRemoteReaderController;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController;
import com.stripe.stripeterminal.internal.common.resourcerepository.DirectResourceRepositoryRouter;
import com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository;
import com.stripe.stripeterminal.internal.common.resourcerepository.RemoteReaderResourceRepository;
import com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository;
import com.stripe.stripeterminal.internal.common.terminalsession.BackgroundReaderActivator;
import com.stripe.stripeterminal.internal.common.terminalsession.DefaultUpdatePaymentIntentParamRepository;
import com.stripe.stripeterminal.internal.common.terminalsession.HandoffConnectionTokenProviderSupplier;
import com.stripe.stripeterminal.internal.common.terminalsession.SessionTokenInterceptor;
import com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession;
import com.stripe.stripeterminal.internal.common.terminalsession.UpdatePaymentIntentParamRepository;
import com.stripe.stripeterminal.internal.common.terminalsession.transform.TerminalExceptionTransformer;
import com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository;
import com.stripe.stripeterminal.internal.common.validators.CollectPaymentMethodOperationValidator;
import com.stripe.stripeterminal.internal.common.validators.PermissionsValidator;
import com.stripe.stripeterminal.internal.common.validators.TipEligibleValidator;
import com.stripe.time.Clock;
import com.stripe.transaction.ChargeAttemptManager;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Date;
import java.util.Optional;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.EventListener;

/* JADX INFO: compiled from: TerminalModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0094\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006Jz\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\n2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\n2\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\n2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\b\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u0010\u001e\u001a\u00020\u001fH\u0007J\b\u0010 \u001a\u00020!H\u0007J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$H\u0007J\u0012\u0010%\u001a\u00020&2\b\b\u0001\u0010'\u001a\u00020(H\u0007J\b\u0010)\u001a\u00020*H\u0007J\u000e\u0010+\u001a\b\u0012\u0004\u0012\u00020-0,H\u0007J\b\u0010.\u001a\u00020/H\u0007J\u000e\u00100\u001a\b\u0012\u0004\u0012\u00020201H\u0007J\u0018\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J$\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\n\b\u0001\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0018\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0007J\u0010\u0010A\u001a\u00020B2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0012\u0010C\u001a\u0004\u0018\u00010D2\u0006\u0010E\u001a\u00020FH\u0007J:\u0010G\u001a\u00020\u00102\u0006\u0010E\u001a\u00020F2\u0006\u0010H\u001a\u0002062\u0006\u0010I\u001a\u00020J2\b\b\u0001\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020N2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\b\u0010O\u001a\u00020(H\u0007J\b\u0010P\u001a\u00020QH\u0007J\u0010\u0010R\u001a\u00020\u00052\u0006\u0010S\u001a\u00020BH\u0007J\u0081\u0004\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020\u00172\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\2\u0006\u0010E\u001a\u00020F2\u0006\u0010I\u001a\u00020J2\u0006\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020<2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020i2\u0006\u0010j\u001a\u00020k2\u0006\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020o2\u0006\u0010M\u001a\u00020N2\f\u0010p\u001a\b\u0012\u0004\u0012\u00020r0q2\u0006\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\"\u0010y\u001a\u001e\u0012\u0004\u0012\u00020{\u0012\u0004\u0012\u00020|\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0zj\u0002`\u007f2\b\u0010\u0080\u0001\u001a\u00030\u0081\u00012\b\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0006\u0010S\u001a\u00020B2\b\u0010\u0084\u0001\u001a\u00030\u0085\u00012\b\b\u0001\u0010K\u001a\u00020L2\b\u0010\u0086\u0001\u001a\u00030\u0087\u00012\b\u0010\u0088\u0001\u001a\u00030\u0089\u00012\b\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u008c\u0001\u001a\u00020\u001f2\b\u0010\u008d\u0001\u001a\u00030\u008e\u00012\b\u0010\u008f\u0001\u001a\u00030\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\b\u0010\u0095\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0097\u0001\u001a\u00020Q2\u0007\u0010\u0098\u0001\u001a\u00020!2\b\u0010\u0099\u0001\u001a\u00030\u009a\u00012\b\u0010\u009b\u0001\u001a\u00030\u009c\u00012(\u0010\u009d\u0001\u001a#\u0012\u0005\u0012\u00030\u009e\u0001\u0012\u0005\u0012\u00030\u009f\u0001\u0012\u0005\u0012\u00030 \u0001\u0012\u0005\u0012\u00030¡\u00010zj\u0003`¢\u00012(\u0010£\u0001\u001a#\u0012\u0005\u0012\u00030\u009e\u0001\u0012\u0005\u0012\u00030\u009f\u0001\u0012\u0005\u0012\u00030¤\u0001\u0012\u0005\u0012\u00030¥\u00010zj\u0003`¦\u00012\b\u0010§\u0001\u001a\u00030¨\u00012\u0006\u0010\u001a\u001a\u00020\u001b2\u0007\u0010©\u0001\u001a\u00020\u001d2\u0007\u0010ª\u0001\u001a\u00020*H\u0007J\t\u0010«\u0001\u001a\u00020(H\u0007J\u0014\u0010¬\u0001\u001a\u00030\u00ad\u00012\b\b\u0001\u0010'\u001a\u00020(H\u0007J\u0014\u0010®\u0001\u001a\u00030¯\u00012\b\b\u0001\u0010'\u001a\u00020(H\u0007J\n\u0010°\u0001\u001a\u00030\u009c\u0001H\u0007J\u0016\u0010±\u0001\u001a\u00030\u00ad\u00012\n\b\u0001\u0010²\u0001\u001a\u00030\u00ad\u0001H\u0007J\n\u0010³\u0001\u001a\u00030´\u0001H\u0007J\u0016\u0010µ\u0001\u001a\u00030\u008b\u00012\n\b\u0001\u0010¶\u0001\u001a\u00030·\u0001H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006¸\u0001"}, d2 = {"Lcom/stripe/stripeterminal/dagger/TerminalModule;", "", "tokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", "integrationTerminalListener", "Lcom/stripe/stripeterminal/external/callable/TerminalListener;", "(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V", "provideAdapterRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;", "bbposAdapter", "Ldagger/Lazy;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;", "cotsAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;", "simulatedCotsAdapter", "remoteReaderAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;", "simulatedBluetoothAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;", "simulatedIpAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;", "simulatedUsbAdapter", "embeddedAdapter", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "usbAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideCancelIntentManager", "Lcom/stripe/cancelintent/CancelIntentManager;", "provideCollectInputsExternalModelTransformer", "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;", "provideCollectInputsParametersTransformer", "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;", "provideConnectionTokenProvider", "handoffConnectionTokenProviderSupplier", "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;", "provideCoroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "executor", "Ljava/util/concurrent/ExecutorService;", "provideEnsureSingleDiscoverOperation", "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;", "provideEpochProvider", "Lkotlin/Function0;", "", "provideLocaleManager", "Lcom/stripe/core/locale/LocaleManager;", "provideOptionalEmptyEventListenerFactory", "Ljava/util/Optional;", "Lokhttp3/EventListener$Factory;", "provideProxyAdapter", "repository", "provideProxyRemoteReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;", "ipReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;", "handoffReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;", "provideProxyResourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;", "directResourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;", "remoteReaderResourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;", "provideProxyTerminalListenerProxy", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;", "provideReader", "Lcom/stripe/core/hardware/Reader;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "provideRemoteReaderAdapter", "proxyRemoteReaderController", "connectionTokenRepository", "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "provideSingleThreadExecutorService", "provideTerminalExceptionTransformer", "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;", "provideTerminalListener", "proxyTerminalListener", "provideTerminalSession", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "adapter", "apiClient", "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;", "locationValidator", "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;", "locationHandler", "Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "proxyResourceRepository", "chargeAttemptManager", "Lcom/stripe/transaction/ChargeAttemptManager;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "readerBatteryInfoPoller", "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;", "traceManager", "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;", "offlineReaderSetup", "Lcom/stripe/offlinemode/OfflineReaderSetup;", "offlineSessionManager", "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;", "tipEligibleValidator", "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;", "collectPaymentMethodOperationValidator", "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;", "networkStatusProvider", "Ljavax/inject/Provider;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "bluetoothDeviceNameRepository", "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;", "offlineDatabaseReaper", "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;", "stripeConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;", "healthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatesHealthLogger;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "simulatorConfigurationRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "proxyOfflineListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;", "backgroundReaderActivator", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;", "sessionTokenInterceptor", "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;", "errorReporter", "Lcom/stripe/spos/sentry/http/ErrorReporter;", "collectInputsExternalModelTransformer", "permissionsValidator", "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;", "offlineStatusRepository", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;", "formsIntegrationLogger", "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;", "disconnectReasonRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "terminalExceptionTransformer", "collectInputsParametersTransformer", "clock", "Lcom/stripe/time/Clock;", "updatePaymentIntentParamRepository", "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;", "passthroughHealthStageLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthStageLogger;", "passthroughHealthDiscreteLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthDiscreteLogger;", "paymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "cancelIntentManager", "ensureSingleDiscoverOperation", "provideTransactionExecutor", "provideTransactionScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "provideUpdateDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "provideUpdatePaymentIntentParamRepository", "provideUpdateScheduler", "scheduler", "providesDebugFlavor", "", "sentry", "context", "Landroid/content/Context;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {HttpClientModule.class})
public final class TerminalModule {
    private final TerminalListener integrationTerminalListener;
    private final ConnectionTokenProvider tokenProvider;

    /* JADX INFO: compiled from: TerminalModule.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DeviceType.values().length];
            try {
                iArr[DeviceType.CHIPPER_1X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DeviceType.CHIPPER_2X.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DeviceType.STRIPE_M2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DeviceType.WISECUBE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DeviceType.WISEPAD_3.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DeviceType.WISEPAD_3S.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Provides
    @Singleton
    @Updates
    public final Scheduler provideUpdateScheduler(@Transaction Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        return scheduler;
    }

    @Provides
    @Singleton
    @Debug
    public final boolean providesDebugFlavor() {
        return false;
    }

    public TerminalModule(ConnectionTokenProvider tokenProvider, TerminalListener integrationTerminalListener) {
        Intrinsics.checkNotNullParameter(tokenProvider, "tokenProvider");
        Intrinsics.checkNotNullParameter(integrationTerminalListener, "integrationTerminalListener");
        this.tokenProvider = tokenProvider;
        this.integrationTerminalListener = integrationTerminalListener;
    }

    @Provides
    @Singleton
    public final ErrorReporter sentry(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return SentryAndroidKt.createSentryAndroid$default(context, "https://ec696654b69f4676822d0e173e31745a@errors.stripe.com/1047", "com.stripe.stripeterminal", "4.1.0", 0, "publish", null, 64, null);
    }

    @Transaction
    @Provides
    @Singleton
    public final ExecutorService provideTransactionExecutor() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        return executorServiceNewSingleThreadExecutor;
    }

    @Transaction
    @Provides
    @Singleton
    public final Scheduler provideTransactionScheduler(@Transaction ExecutorService executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        Scheduler schedulerFrom = Schedulers.from(executor);
        Intrinsics.checkNotNullExpressionValue(schedulerFrom, "from(...)");
        return schedulerFrom;
    }

    @Transaction
    @Provides
    @Singleton
    public final CoroutineScope provideCoroutineScope(@Transaction ExecutorService executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(ExecutorsKt.from(executor)).plus(new CoroutineName("Transaction")));
    }

    @Provides
    @Reusable
    public final LocaleManager provideLocaleManager() {
        return new NoOpLocaleManager();
    }

    @Provides
    @Singleton
    @Updates
    public final CoroutineDispatcher provideUpdateDispatcher(@Transaction ExecutorService executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        return ExecutorsKt.from(executor);
    }

    @Provides
    @Singleton
    public final Adapter provideProxyAdapter(AdapterRepository repository, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ProxyAdapter(repository, loggerFactory.create(Reflection.getOrCreateKotlinClass(ProxyAdapter.class)));
    }

    @Provides
    public final AdapterRepository provideAdapterRepository(Lazy<BbposBluetoothAdapter> bbposAdapter, CotsAdapter cotsAdapter, @SimulatedCotsAdapter CotsAdapter simulatedCotsAdapter, RemoteReaderAdapter remoteReaderAdapter, Lazy<SimulatedMobileAdapter> simulatedBluetoothAdapter, SimulatedIpAdapter simulatedIpAdapter, Lazy<SimulatedMobileAdapter> simulatedUsbAdapter, @EmbeddedAdapter Adapter embeddedAdapter, Lazy<BbposUsbAdapter> usbAdapter, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(bbposAdapter, "bbposAdapter");
        Intrinsics.checkNotNullParameter(remoteReaderAdapter, "remoteReaderAdapter");
        Intrinsics.checkNotNullParameter(simulatedBluetoothAdapter, "simulatedBluetoothAdapter");
        Intrinsics.checkNotNullParameter(simulatedIpAdapter, "simulatedIpAdapter");
        Intrinsics.checkNotNullParameter(simulatedUsbAdapter, "simulatedUsbAdapter");
        Intrinsics.checkNotNullParameter(usbAdapter, "usbAdapter");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultAdapterRepository(bbposAdapter, cotsAdapter, simulatedCotsAdapter, remoteReaderAdapter, simulatedBluetoothAdapter, simulatedIpAdapter, simulatedUsbAdapter, embeddedAdapter, usbAdapter, loggerFactory.create(Reflection.getOrCreateKotlinClass(AdapterRepository.class)));
    }

    @Provides
    @Singleton
    public final RemoteReaderAdapter provideRemoteReaderAdapter(TerminalStatusManager statusManager, ProxyRemoteReaderController proxyRemoteReaderController, ConnectionTokenRepository connectionTokenRepository, @Offline OfflineRepository offlineRepository, FeatureFlagsRepository featureFlagsRepository, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(proxyRemoteReaderController, "proxyRemoteReaderController");
        Intrinsics.checkNotNullParameter(connectionTokenRepository, "connectionTokenRepository");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new RemoteReaderAdapter(proxyRemoteReaderController, statusManager, connectionTokenRepository, offlineRepository, new C03741(featureFlagsRepository), loggerFactory.create(Reflection.getOrCreateKotlinClass(RemoteReaderAdapter.class)));
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.dagger.TerminalModule$provideRemoteReaderAdapter$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TerminalModule.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class C03741 extends FunctionReferenceImpl implements Function0<ReaderFeatureFlags> {
        C03741(Object obj) {
            super(0, obj, FeatureFlagsRepository.class, "getFeatureFlags", "getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ReaderFeatureFlags invoke() {
            return ((FeatureFlagsRepository) this.receiver).getFeatureFlags();
        }
    }

    @Provides
    @Singleton
    public final ProxyRemoteReaderController provideProxyRemoteReaderController(IpReaderController ipReaderController, @HandoffReaderController RemoteReaderController handoffReaderController, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(ipReaderController, "ipReaderController");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultProxyRemoteReaderController(ipReaderController, handoffReaderController, loggerFactory);
    }

    @Provides
    @Singleton
    public final ProxyResourceRepository provideProxyResourceRepository(DirectResourceRepositoryRouter directResourceRepository, RemoteReaderResourceRepository remoteReaderResourceRepository) {
        Intrinsics.checkNotNullParameter(directResourceRepository, "directResourceRepository");
        Intrinsics.checkNotNullParameter(remoteReaderResourceRepository, "remoteReaderResourceRepository");
        return new ProxyResourceRepository(directResourceRepository, remoteReaderResourceRepository);
    }

    @Provides
    @Singleton
    public final ConnectionTokenProvider provideConnectionTokenProvider(HandoffConnectionTokenProviderSupplier handoffConnectionTokenProviderSupplier) {
        Intrinsics.checkNotNullParameter(handoffConnectionTokenProviderSupplier, "handoffConnectionTokenProviderSupplier");
        return handoffConnectionTokenProviderSupplier.replaceConnectionTokenProvider(this.tokenProvider);
    }

    @Provides
    @Singleton
    @ConnectionTokenManagement
    public final Function0<Long> provideEpochProvider() {
        return new Function0<Long>() { // from class: com.stripe.stripeterminal.dagger.TerminalModule.provideEpochProvider.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Long invoke() {
                return Long.valueOf(new Date().getTime());
            }
        };
    }

    @Provides
    @Singleton
    @ConnectionTokenManagement
    public final ExecutorService provideSingleThreadExecutorService() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        return executorServiceNewSingleThreadExecutor;
    }

    @Provides
    public final Reader provideReader(TerminalStatusManager statusManager) {
        Reader.UsbReader.Chipper2xReader chipper2xReader;
        Reader.BluetoothReader.Chipper1xReader chipper1xReader;
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        com.stripe.stripeterminal.external.models.Reader connectedReader = statusManager.getConnectedReader();
        if (connectedReader == null) {
            return null;
        }
        BluetoothDevice bluetoothDevice = connectedReader.getBluetoothDevice();
        if (bluetoothDevice != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[connectedReader.getDeviceType().ordinal()];
            if (i == 1) {
                chipper1xReader = new Reader.BluetoothReader.Chipper1xReader(bluetoothDevice);
            } else if (i == 2) {
                chipper1xReader = new Reader.BluetoothReader.Chipper2xReader(bluetoothDevice);
            } else if (i == 3) {
                chipper1xReader = new Reader.BluetoothReader.StripeM2Reader(bluetoothDevice);
            } else if (i == 4) {
                chipper1xReader = new Reader.BluetoothReader.WisecubeReader(bluetoothDevice);
            } else if (i == 5) {
                chipper1xReader = new Reader.BluetoothReader.Wisepad3Reader(bluetoothDevice);
            } else {
                chipper1xReader = Reader.SerialReader.INSTANCE;
            }
            if (chipper1xReader != null) {
                return chipper1xReader;
            }
        }
        UsbDevice usbDevice = connectedReader.getUsbDevice();
        if (usbDevice != null) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[connectedReader.getDeviceType().ordinal()];
            if (i2 == 2) {
                chipper2xReader = new Reader.UsbReader.Chipper2xReader(usbDevice);
            } else if (i2 == 3) {
                chipper2xReader = new Reader.UsbReader.StripeM2Reader(usbDevice);
            } else if (i2 == 4) {
                chipper2xReader = new Reader.UsbReader.WisecubeReader(usbDevice);
            } else if (i2 == 5) {
                chipper2xReader = new Reader.UsbReader.Wisepad3Reader(usbDevice);
            } else if (i2 == 6) {
                chipper2xReader = new Reader.UsbReader.Wisepad3SReader(usbDevice);
            } else {
                chipper2xReader = Reader.UsbReader.UnspecifiedUsbReader.INSTANCE;
            }
            return chipper2xReader;
        }
        return Reader.SerialReader.INSTANCE;
    }

    @Provides
    @Singleton
    public final ProxyTerminalListener provideProxyTerminalListenerProxy(LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ProxyTerminalListener(this.integrationTerminalListener, loggerFactory.create(Reflection.getOrCreateKotlinClass(ProxyTerminalListener.class)));
    }

    @Provides
    public final TerminalListener provideTerminalListener(ProxyTerminalListener proxyTerminalListener) {
        Intrinsics.checkNotNullParameter(proxyTerminalListener, "proxyTerminalListener");
        return proxyTerminalListener;
    }

    @Provides
    @Singleton
    public final CancelIntentManager provideCancelIntentManager() {
        return new DefaultCancelIntentManager();
    }

    @Provides
    @Singleton
    public final EnsureSingleDiscoverOperation provideEnsureSingleDiscoverOperation() {
        return new DefaultEnsureSingleDiscoverOperation();
    }

    @Provides
    @Reusable
    public final CollectInputsExternalModelTransformer provideCollectInputsExternalModelTransformer() {
        return new CollectInputsExternalModelTransformer();
    }

    @Provides
    @Reusable
    public final TerminalExceptionTransformer provideTerminalExceptionTransformer() {
        return new TerminalExceptionTransformer();
    }

    @Provides
    @Reusable
    public final CollectInputsParametersTransformer provideCollectInputsParametersTransformer() {
        return new CollectInputsParametersTransformer();
    }

    @Provides
    @Singleton
    public final Optional<EventListener.Factory> provideOptionalEmptyEventListenerFactory() {
        Optional<EventListener.Factory> optionalEmpty = Optional.empty();
        Intrinsics.checkNotNullExpressionValue(optionalEmpty, "empty(...)");
        return optionalEmpty;
    }

    @Provides
    @Singleton
    public final UpdatePaymentIntentParamRepository provideUpdatePaymentIntentParamRepository() {
        return new DefaultUpdatePaymentIntentParamRepository();
    }

    @Provides
    @Singleton
    public final TerminalSession provideTerminalSession(Adapter adapter, ApiClient apiClient, LocationServicesValidator locationValidator, LocationHandler locationHandler, TerminalStatusManager statusManager, ConnectionTokenRepository connectionTokenRepository, SessionTokenRepository sessionTokenRepository, ProxyResourceRepository proxyResourceRepository, ChargeAttemptManager chargeAttemptManager, TransactionRepository transactionRepository, ReaderBatteryInfoPoller readerBatteryInfoPoller, TraceManager traceManager, OfflineReaderSetup offlineReaderSetup, OfflineSessionManager offlineSessionManager, TipEligibleValidator tipEligibleValidator, CollectPaymentMethodOperationValidator collectPaymentMethodOperationValidator, FeatureFlagsRepository featureFlagsRepository, Provider<NetworkStatus> networkStatusProvider, BluetoothDeviceNameRepository bluetoothDeviceNameRepository, OfflineDatabaseReaper offlineDatabaseReaper, StripeConnectivityRepository stripeConnectivityRepository, HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> healthLogger, OfflineConfigHelper offlineConfigHelper, SimulatorConfigurationRepository simulatorConfigurationRepository, ProxyTerminalListener proxyTerminalListener, ProxyOfflineListener proxyOfflineListener, @Offline OfflineRepository offlineRepository, BackgroundReaderActivator backgroundReaderActivator, SessionTokenInterceptor sessionTokenInterceptor, ErrorReporter errorReporter, CollectInputsExternalModelTransformer collectInputsExternalModelTransformer, PermissionsValidator permissionsValidator, OfflineStatusRepository offlineStatusRepository, FormsIntegrationLogger formsIntegrationLogger, DisconnectReasonRepository disconnectReasonRepository, SettingsRepository settingsRepository, TerminalExceptionTransformer terminalExceptionTransformer, CollectInputsParametersTransformer collectInputsParametersTransformer, Clock clock, UpdatePaymentIntentParamRepository updatePaymentIntentParamRepository, HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder> passthroughHealthStageLogger, HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder> passthroughHealthDiscreteLogger, PaymentIntentUpdater paymentIntentUpdater, LoggerFactory loggerFactory, CancelIntentManager cancelIntentManager, EnsureSingleDiscoverOperation ensureSingleDiscoverOperation) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        Intrinsics.checkNotNullParameter(locationValidator, "locationValidator");
        Intrinsics.checkNotNullParameter(locationHandler, "locationHandler");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(connectionTokenRepository, "connectionTokenRepository");
        Intrinsics.checkNotNullParameter(sessionTokenRepository, "sessionTokenRepository");
        Intrinsics.checkNotNullParameter(proxyResourceRepository, "proxyResourceRepository");
        Intrinsics.checkNotNullParameter(chargeAttemptManager, "chargeAttemptManager");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(readerBatteryInfoPoller, "readerBatteryInfoPoller");
        Intrinsics.checkNotNullParameter(traceManager, "traceManager");
        Intrinsics.checkNotNullParameter(offlineReaderSetup, "offlineReaderSetup");
        Intrinsics.checkNotNullParameter(offlineSessionManager, "offlineSessionManager");
        Intrinsics.checkNotNullParameter(tipEligibleValidator, "tipEligibleValidator");
        Intrinsics.checkNotNullParameter(collectPaymentMethodOperationValidator, "collectPaymentMethodOperationValidator");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(networkStatusProvider, "networkStatusProvider");
        Intrinsics.checkNotNullParameter(bluetoothDeviceNameRepository, "bluetoothDeviceNameRepository");
        Intrinsics.checkNotNullParameter(offlineDatabaseReaper, "offlineDatabaseReaper");
        Intrinsics.checkNotNullParameter(stripeConnectivityRepository, "stripeConnectivityRepository");
        Intrinsics.checkNotNullParameter(healthLogger, "healthLogger");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(simulatorConfigurationRepository, "simulatorConfigurationRepository");
        Intrinsics.checkNotNullParameter(proxyTerminalListener, "proxyTerminalListener");
        Intrinsics.checkNotNullParameter(proxyOfflineListener, "proxyOfflineListener");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(backgroundReaderActivator, "backgroundReaderActivator");
        Intrinsics.checkNotNullParameter(sessionTokenInterceptor, "sessionTokenInterceptor");
        Intrinsics.checkNotNullParameter(errorReporter, "errorReporter");
        Intrinsics.checkNotNullParameter(collectInputsExternalModelTransformer, "collectInputsExternalModelTransformer");
        Intrinsics.checkNotNullParameter(permissionsValidator, "permissionsValidator");
        Intrinsics.checkNotNullParameter(offlineStatusRepository, "offlineStatusRepository");
        Intrinsics.checkNotNullParameter(formsIntegrationLogger, "formsIntegrationLogger");
        Intrinsics.checkNotNullParameter(disconnectReasonRepository, "disconnectReasonRepository");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(terminalExceptionTransformer, "terminalExceptionTransformer");
        Intrinsics.checkNotNullParameter(collectInputsParametersTransformer, "collectInputsParametersTransformer");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(updatePaymentIntentParamRepository, "updatePaymentIntentParamRepository");
        Intrinsics.checkNotNullParameter(passthroughHealthStageLogger, "passthroughHealthStageLogger");
        Intrinsics.checkNotNullParameter(passthroughHealthDiscreteLogger, "passthroughHealthDiscreteLogger");
        Intrinsics.checkNotNullParameter(paymentIntentUpdater, "paymentIntentUpdater");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        Intrinsics.checkNotNullParameter(cancelIntentManager, "cancelIntentManager");
        Intrinsics.checkNotNullParameter(ensureSingleDiscoverOperation, "ensureSingleDiscoverOperation");
        SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLoggerCreate = loggerFactory.create(Reflection.getOrCreateKotlinClass(TerminalSession.class));
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        return new TerminalSession(adapter, apiClient, locationValidator, locationHandler, statusManager, connectionTokenRepository, sessionTokenRepository, proxyResourceRepository, chargeAttemptManager, transactionRepository, readerBatteryInfoPoller, traceManager, executorServiceNewSingleThreadExecutor, offlineReaderSetup, offlineSessionManager, tipEligibleValidator, collectPaymentMethodOperationValidator, featureFlagsRepository, networkStatusProvider, bluetoothDeviceNameRepository, offlineDatabaseReaper, stripeConnectivityRepository, healthLogger, offlineConfigHelper, simulatorConfigurationRepository, proxyTerminalListener, proxyOfflineListener, offlineRepository, backgroundReaderActivator, sessionTokenInterceptor, errorReporter, collectInputsExternalModelTransformer, permissionsValidator, offlineStatusRepository, CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(new TerminalModule$provideTerminalSession$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, simpleLoggerCreate, errorReporter))), simpleLoggerCreate, formsIntegrationLogger, disconnectReasonRepository, settingsRepository, terminalExceptionTransformer, collectInputsParametersTransformer, clock, updatePaymentIntentParamRepository, passthroughHealthStageLogger, passthroughHealthDiscreteLogger, paymentIntentUpdater, loggerFactory, cancelIntentManager, ensureSingleDiscoverOperation);
    }
}
