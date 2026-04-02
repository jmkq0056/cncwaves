package com.stripe.stripeterminal.dagger;

import com.stripe.core.bbpos.dagger.BbposSdkModule;
import com.stripe.core.bbpos.dagger.BbposUpdateModule;
import com.stripe.core.bbpos.hardware.dagger.BbposConnectionAndInfoModule;
import com.stripe.core.bbpos.hardware.dagger.BbposEmvModule;
import com.stripe.core.bbpos.hardware.dagger.BbposReaderModule;
import com.stripe.core.bbpos.hardware.dagger.BbposUpdateHardwareModule;
import com.stripe.core.bbpos.hardware.dagger.DeviceListenerModule;
import com.stripe.core.dagger.modules.SystemServiceModule;
import com.stripe.core.device.dagger.DeviceInfoModule;
import com.stripe.core.encoder.EncoderModule;
import com.stripe.core.featureflag.dagger.FeatureFlagModule;
import com.stripe.core.hardware.reactive.dagger.EmvModule;
import com.stripe.core.hardware.reactive.dagger.ReaderInfoModule;
import com.stripe.core.hardware.reactive.dagger.ReaderStatusModule;
import com.stripe.core.hardware.reactive.dagger.ReaderUpdateListenerModule;
import com.stripe.core.random.dagger.RandomModule;
import com.stripe.core.readerupdate.dagger.ReaderUpdateModule;
import com.stripe.core.schedulers.dagger.SchedulersModule;
import com.stripe.core.transaction.dagger.CoreTransactionModule;
import com.stripe.jvmcore.batchdispatcher.dagger.CoroutineSchedulerModule;
import com.stripe.jvmcore.client.dagger.ArmadaApiModule;
import com.stripe.jvmcore.client.dagger.GatorModule;
import com.stripe.jvmcore.clientlogger.dagger.ClientLoggerDispatcherModule;
import com.stripe.jvmcore.featureflag.dagger.FactoryImageNotSupportedFeatureFlagRepositoryModule;
import com.stripe.jvmcore.forms.dagger.FormsIntegrationLoggerModule;
import com.stripe.jvmcore.gator.dagger.GatorDispatchersModule;
import com.stripe.jvmcore.gator.dagger.NoopGatorUploaderOutOfMemoryLoggerModule;
import com.stripe.jvmcore.logging.dagger.CompositeTraceLoggerBatchDispatcherModule;
import com.stripe.jvmcore.logging.dagger.CoreMetricLoggerModule;
import com.stripe.jvmcore.logging.dagger.CoreTraceLoggerModule;
import com.stripe.jvmcore.logging.dagger.EmptyHealthMetricsListenerModule;
import com.stripe.jvmcore.logging.dagger.GatorMetricLoggerBatchDispatcherModule;
import com.stripe.jvmcore.logging.dagger.StructuredEventLoggerModule;
import com.stripe.jvmcore.terminal.requestfactories.dagger.TerminalRequestFactoriesModule;
import com.stripe.paymentcollection.dagger.BbposPaymentStateMachineModule;
import com.stripe.paymentcollection.dagger.PaymentCollectionModule;
import com.stripe.stripeterminal.internal.common.adapter.dagger.MposAdaptersModule;
import com.stripe.stripeterminal.internal.common.connectivity.dagger.ConnectivityModule;
import com.stripe.stripeterminal.internal.common.connectivity.dagger.NetworkConnectivityModule;
import com.stripe.stripeterminal.internal.common.dagger.AppInfoModule;
import com.stripe.stripeterminal.internal.common.dagger.BbposDiscoveryModule;
import com.stripe.stripeterminal.internal.common.dagger.BbposProxyDiscoveryModule;
import com.stripe.stripeterminal.internal.common.dagger.CommonModule;
import com.stripe.stripeterminal.internal.common.dagger.CrpcContextProviderModule;
import com.stripe.stripeterminal.internal.common.dagger.DeviceTypeModule;
import com.stripe.stripeterminal.internal.common.dagger.MposReaderDebugLogManagerModule;
import com.stripe.stripeterminal.internal.common.dagger.MposReaderEventLoggerModule;
import com.stripe.stripeterminal.internal.common.dagger.PassthroughHealthLoggerModule;
import com.stripe.stripeterminal.internal.common.terminalsession.dagger.TerminalSessionModule;
import com.stripe.time.dagger.TimeModule;
import com.stripe.transaction.dagger.ChargeAttemptManagerModule;
import dagger.Module;
import kotlin.Metadata;

/* JADX INFO: compiled from: TerminalCommonComponent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\ba\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/dagger/TerminalCommonModule;", "", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {AccessibilityModeCheckModule.class, AdapterModule.class, ApiLevelModule.class, AppInfoModule.class, ApplicationInfoModule.class, ArmadaApiModule.class, ArmadaClientModule.class, BbposDiscoveryModule.class, BbposEmvModule.class, BbposPaymentStateMachineModule.class, BbposProxyDiscoveryModule.class, BbposReaderModule.class, BbposSdkModule.class, BbposUpdateModule.class, BbposUpdateHardwareModule.class, ChargeAttemptManagerModule.class, ClientLoggerDispatcherModule.class, CommonModule.class, CompositeTraceLoggerBatchDispatcherModule.class, ContextModule.class, ConnectivityModule.class, CoreMetricLoggerModule.class, CoreTraceLoggerModule.class, CoreTransactionModule.class, CoroutineSchedulerModule.class, CotsModule.class, CrpcContextProviderModule.class, DeviceInfoModule.class, DeviceListenerModule.class, DeviceTypeModule.class, EmptyHealthMetricsListenerModule.class, EmvModule.class, EncoderModule.class, FactoryImageNotSupportedFeatureFlagRepositoryModule.class, FeatureFlagModule.class, FilesModule.class, GatorModule.class, GatorClientModule.class, GatorDispatchersModule.class, GatorMetricLoggerBatchDispatcherModule.class, HandoffClientModule.class, IpReaderModule.class, JackrabbitModule.class, com.stripe.hardware.dagger.EmvModule.class, LogModule.class, MainlandModule.class, MposAdaptersModule.class, MposReaderEventLoggerModule.class, MposReaderDebugLogManagerModule.class, NetworkConnectivityModule.class, NoopGatorUploaderOutOfMemoryLoggerModule.class, OfflineModule.class, PassthroughHealthLoggerModule.class, PaymentCollectionModule.class, PaymentCollectionExternalModule.class, PermissionsModule.class, RandomModule.class, ReaderInfoModule.class, BbposConnectionAndInfoModule.class, ReaderStatusModule.class, ReaderUpdateListenerModule.class, ReaderUpdateModule.class, RootAccessModule.class, SchedulersModule.class, SdkPlatformDeviceInfoModule.class, StorageModule.class, StructuredEventLoggerModule.class, SystemServiceModule.class, TerminalModule.class, TerminalRequestFactoriesModule.class, TerminalSessionModule.class, TimeModule.class, ValidatorModule.class, FormsIntegrationLoggerModule.class})
public interface TerminalCommonModule {
}
