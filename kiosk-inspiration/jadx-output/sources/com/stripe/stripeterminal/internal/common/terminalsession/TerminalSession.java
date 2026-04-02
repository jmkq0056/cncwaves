package com.stripe.stripeterminal.internal.common.terminalsession;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.cancelintent.CancelIntentManager;
import com.stripe.cancelintent.CancelableIntentOperation;
import com.stripe.core.transaction.CancelableOperationContext;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
import com.stripe.currency.Amount;
import com.stripe.currency.AmountExtensionsKt;
import com.stripe.currency.CountryCode;
import com.stripe.currency.CurrencyCode;
import com.stripe.discoverreaders.CancelDiscoverReadersReason;
import com.stripe.discoverreaders.CancelableDiscoverReadersOperation;
import com.stripe.discoverreaders.EnsureSingleDiscoverOperation;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.forms.logger.FormsIntegrationLogger;
import com.stripe.jvmcore.forms.transform.CollectInputsExternalModelTransformer;
import com.stripe.jvmcore.forms.transform.CollectInputsParametersTransformer;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusRepository;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResultFailure;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResultSuccess;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.Outcome;
import com.stripe.offlinemode.OfflineReaderSetup;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.helpers.OfflineDatabaseReaper;
import com.stripe.offlinemode.helpers.OfflineSessionManager;
import com.stripe.offlinemode.models.OfflineRequestsToSync;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.ConnectionType;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.spos.sentry.http.ErrorReporter;
import com.stripe.stripeterminal.external.api.ApiError;
import com.stripe.stripeterminal.external.callable.CollectInputsResultCallback;
import com.stripe.stripeterminal.external.callable.CollectedDataCallback;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.callable.ErrorCallback;
import com.stripe.stripeterminal.external.callable.LocationListCallback;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.external.callable.PaymentIntentCallback;
import com.stripe.stripeterminal.external.callable.PaymentMethodCallback;
import com.stripe.stripeterminal.external.callable.ReaderCallback;
import com.stripe.stripeterminal.external.callable.ReaderSettingsCallback;
import com.stripe.stripeterminal.external.callable.RefundCallback;
import com.stripe.stripeterminal.external.callable.SetupIntentCallback;
import com.stripe.stripeterminal.external.callable.TerminalListener;
import com.stripe.stripeterminal.external.models.Address;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.AmountDetails;
import com.stripe.stripeterminal.external.models.CardPresentDetails;
import com.stripe.stripeterminal.external.models.CardPresentOptions;
import com.stripe.stripeterminal.external.models.CardPresentRoutingOptions;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.CollectConfiguration;
import com.stripe.stripeterminal.external.models.CollectDataConfiguration;
import com.stripe.stripeterminal.external.models.CollectDataType;
import com.stripe.stripeterminal.external.models.CollectInputsParameters;
import com.stripe.stripeterminal.external.models.CollectInputsResult;
import com.stripe.stripeterminal.external.models.CollectedData;
import com.stripe.stripeterminal.external.models.ConfirmConfiguration;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.ConnectionStatus;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.DynamicCurrencyConversionOptions;
import com.stripe.stripeterminal.external.models.ListLocationsParameters;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.external.models.NextAction;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.OfflineStatus;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.PaymentStatus;
import com.stripe.stripeterminal.external.models.ReadReusableCardParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSettings;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.ReaderSupportResult;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundConfiguration;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.RoutingPriority;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentConfiguration;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.SimulatorConfiguration;
import com.stripe.stripeterminal.external.models.TapToPayUxConfiguration;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.external.models.Tip;
import com.stripe.stripeterminal.external.models.TippingConfiguration;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.activation.ActivateReaderCallback;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.stripeterminal.internal.common.adapter.OfflineAdapterKt;
import com.stripe.stripeterminal.internal.common.adapter.SimulatorConfigurationRepository;
import com.stripe.stripeterminal.internal.common.adapter.TapToPayUxConfigurationRepository;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.callable.ProxyCollectInputsResultCallback;
import com.stripe.stripeterminal.internal.common.callable.ProxyDiscoveryListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyReaderListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyTerminalListener;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import com.stripe.stripeterminal.internal.common.extensions.DeviceTypeExtensions;
import com.stripe.stripeterminal.internal.common.extensions.PaymentIntentExtensionsKt;
import com.stripe.stripeterminal.internal.common.extensions.ReaderExtensionsKt;
import com.stripe.stripeterminal.internal.common.introspection.LocationServicesValidator;
import com.stripe.stripeterminal.internal.common.log.SdkRequest;
import com.stripe.stripeterminal.internal.common.log.SdkResponse;
import com.stripe.stripeterminal.internal.common.p000enum.AdapterType;
import com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository;
import com.stripe.stripeterminal.internal.common.resourcerepository.ReaderActivationListener;
import com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository;
import com.stripe.stripeterminal.internal.common.terminalsession.BackgroundActivationResult;
import com.stripe.stripeterminal.internal.common.terminalsession.offline.OfflineData;
import com.stripe.stripeterminal.internal.common.terminalsession.offline.OfflineDataFactory;
import com.stripe.stripeterminal.internal.common.terminalsession.transform.TerminalExceptionTransformer;
import com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository;
import com.stripe.stripeterminal.internal.common.validators.CollectPaymentMethodOperationValidator;
import com.stripe.stripeterminal.internal.common.validators.PermissionsValidator;
import com.stripe.stripeterminal.internal.common.validators.TipEligibleValidator;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.time.Clock;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.ChargeAttemptManager;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.PaymentMethodCollectionType;
import com.sun.jna.Callback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u009c\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b$\u0018\u0000 Ã\u00022\u00020\u00012\u00020\u0002:D¸\u0002¹\u0002º\u0002»\u0002¼\u0002½\u0002¾\u0002¿\u0002À\u0002Á\u0002Â\u0002Ã\u0002Ä\u0002Å\u0002Æ\u0002Ç\u0002È\u0002É\u0002Ê\u0002Ë\u0002Ì\u0002Í\u0002Î\u0002Ï\u0002Ð\u0002Ñ\u0002Ò\u0002Ó\u0002Ô\u0002Õ\u0002Ö\u0002×\u0002Ø\u0002Ù\u0002B÷\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\u0006\u0010\u001f\u001a\u00020 \u0012\u0006\u0010!\u001a\u00020\"\u0012\u0006\u0010#\u001a\u00020$\u0012\u0006\u0010%\u001a\u00020&\u0012\f\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-\u0012\u0006\u0010.\u001a\u00020/\u0012\"\u00100\u001a\u001e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020501j\u0002`6\u0012\u0006\u00107\u001a\u000208\u0012\u0006\u00109\u001a\u00020:\u0012\u0006\u0010;\u001a\u00020<\u0012\u0006\u0010=\u001a\u00020>\u0012\u0006\u0010?\u001a\u00020@\u0012\u0006\u0010A\u001a\u00020B\u0012\u0006\u0010C\u001a\u00020D\u0012\u0006\u0010E\u001a\u00020F\u0012\u0006\u0010G\u001a\u00020H\u0012\u0006\u0010I\u001a\u00020J\u0012\u0006\u0010K\u001a\u00020\u0002\u0012\u0006\u0010L\u001a\u00020M\u0012\u0016\u0010N\u001a\u0012\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020Q0Oj\u0002`R\u0012\u0006\u0010S\u001a\u00020T\u0012\u0006\u0010U\u001a\u00020V\u0012\u0006\u0010W\u001a\u00020X\u0012\u0006\u0010Y\u001a\u00020Z\u0012\u0006\u0010[\u001a\u00020\\\u0012\u0006\u0010]\u001a\u00020^\u0012\u0006\u0010_\u001a\u00020`\u0012\"\u0010a\u001a\u001e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020d\u0012\u0004\u0012\u00020e01j\u0002`f\u0012\"\u0010g\u001a\u001e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u00020i01j\u0002`j\u0012\u0006\u0010k\u001a\u00020l\u0012\u0006\u0010m\u001a\u00020n\u0012\u0006\u0010o\u001a\u00020p\u0012\u0006\u0010q\u001a\u00020r¢\u0006\u0002\u0010sJ#\u0010\u0095\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\b\u0010\u0098\u0001\u001a\u00030\u0099\u0001H\u0000¢\u0006\u0003\b\u009a\u0001J'\u0010\u0095\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\b\u0010\u0098\u0001\u001a\u00030\u009c\u00012\b\u0010\u009d\u0001\u001a\u00030\u009e\u0001H\u0016J\u001e\u0010\u009f\u0001\u001a\u00030\u009b\u00012\b\u0010 \u0001\u001a\u00030¡\u00012\b\u0010¢\u0001\u001a\u00030£\u0001H\u0016J(\u0010¤\u0001\u001a\u00030\u009b\u00012\b\u0010¥\u0001\u001a\u00030¦\u00012\b\u0010§\u0001\u001a\u00030¨\u00012\b\u0010¢\u0001\u001a\u00030©\u0001H\u0016J\n\u0010ª\u0001\u001a\u00030\u009b\u0001H\u0016J\u0014\u0010«\u0001\u001a\u00030\u009b\u00012\b\u0010¢\u0001\u001a\u00030¬\u0001H\u0016J\u001e\u0010\u00ad\u0001\u001a\u00030®\u00012\b\u0010\u0098\u0001\u001a\u00030¯\u00012\b\u0010¢\u0001\u001a\u00030°\u0001H\u0017J\u001e\u0010±\u0001\u001a\u00030®\u00012\b\u0010²\u0001\u001a\u00030³\u00012\b\u0010¢\u0001\u001a\u00030´\u0001H\u0017J(\u0010µ\u0001\u001a\u00030®\u00012\b\u0010 \u0001\u001a\u00030¡\u00012\b\u0010¢\u0001\u001a\u00030£\u00012\b\u0010\u0098\u0001\u001a\u00030¶\u0001H\u0016J4\u0010·\u0001\u001a\u00030®\u00012\b\u0010 \u0001\u001a\u00030¡\u00012\b\u0010¢\u0001\u001a\u00030£\u00012\b\u0010\u0098\u0001\u001a\u00030¶\u00012\n\u0010¸\u0001\u001a\u0005\u0018\u00010¹\u0001H\u0016J(\u0010º\u0001\u001a\u00030®\u00012\b\u0010»\u0001\u001a\u00030\u0088\u00012\b\u0010\u0098\u0001\u001a\u00030¼\u00012\b\u0010¢\u0001\u001a\u00030¬\u0001H\u0016J2\u0010½\u0001\u001a\u00030®\u00012\b\u0010 \u0001\u001a\u00030¦\u00012\b\u0010¸\u0001\u001a\u00030¹\u00012\b\u0010\u0098\u0001\u001a\u00030¾\u00012\b\u0010¢\u0001\u001a\u00030©\u0001H\u0016J>\u0010½\u0001\u001a\u00030®\u00012\b\u0010 \u0001\u001a\u00030¦\u00012\b\u0010¿\u0001\u001a\u00030À\u00012\n\u0010¸\u0001\u001a\u0005\u0018\u00010¹\u00012\b\u0010\u0098\u0001\u001a\u00030¾\u00012\b\u0010¢\u0001\u001a\u00030©\u0001H\u0016J\u0014\u0010Á\u0001\u001a\u00030\u009b\u00012\b\u0010Â\u0001\u001a\u00030Ã\u0001H\u0016J(\u0010Ä\u0001\u001a\u00030®\u00012\b\u0010 \u0001\u001a\u00030¡\u00012\b\u0010¢\u0001\u001a\u00030£\u00012\b\u0010\u0098\u0001\u001a\u00030Å\u0001H\u0016J\u0014\u0010Æ\u0001\u001a\u00030®\u00012\b\u0010¢\u0001\u001a\u00030Ç\u0001H\u0016J\u001e\u0010È\u0001\u001a\u00030®\u00012\b\u0010 \u0001\u001a\u00030¦\u00012\b\u0010¢\u0001\u001a\u00030©\u0001H\u0016J'\u0010É\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\b\u0010\u0098\u0001\u001a\u00030\u009c\u00012\b\u0010Ê\u0001\u001a\u00030Ë\u0001H\u0016J'\u0010Ì\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\b\u0010\u0098\u0001\u001a\u00030\u0099\u00012\b\u0010Ê\u0001\u001a\u00030Ë\u0001H\u0016J(\u0010Í\u0001\u001a\u00030¬\u00012\b\u0010Î\u0001\u001a\u00030Ã\u00012\b\u0010Ï\u0001\u001a\u00030Ã\u00012\b\u0010Ð\u0001\u001a\u00030Ã\u0001H\u0002J\u001e\u0010Ñ\u0001\u001a\u00030\u009b\u00012\b\u0010§\u0001\u001a\u00030Ò\u00012\b\u0010¢\u0001\u001a\u00030£\u0001H\u0016J*\u0010Ñ\u0001\u001a\u00030\u009b\u00012\b\u0010§\u0001\u001a\u00030Ò\u00012\b\u0010¢\u0001\u001a\u00030£\u00012\n\u0010Ó\u0001\u001a\u0005\u0018\u00010Ô\u0001H\u0017J*\u0010Õ\u0001\u001a\u00030\u009b\u00012\b\u0010§\u0001\u001a\u00030Ö\u00012\b\u0010¢\u0001\u001a\u00030©\u00012\n\u0010Ó\u0001\u001a\u0005\u0018\u00010Ô\u0001H\u0016J\n\u0010×\u0001\u001a\u00030\u009b\u0001H\u0007J\u001e\u0010Ø\u0001\u001a\u00030Ù\u00012\b\u0010 \u0001\u001a\u00030¡\u00012\b\u0010Ú\u0001\u001a\u00030Ù\u0001H\u0002J\u0014\u0010Û\u0001\u001a\u00030\u009b\u00012\b\u0010¢\u0001\u001a\u00030¬\u0001H\u0016J(\u0010Ü\u0001\u001a\u00030®\u00012\b\u0010\u0098\u0001\u001a\u00030Ý\u00012\b\u0010Þ\u0001\u001a\u00030ß\u00012\b\u0010¢\u0001\u001a\u00030¬\u0001H\u0016J'\u0010à\u0001\u001a\u00030\u009b\u00012\b\u0010á\u0001\u001a\u00030â\u00012\u0011\b\u0002\u0010ã\u0001\u001a\n\u0012\u0005\u0012\u00030\u009b\u00010ä\u0001H\u0002J\n\u0010å\u0001\u001a\u00030\u009b\u0001H\u0002J\n\u0010æ\u0001\u001a\u00030\u009b\u0001H\u0002J#\u0010ç\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\b\u0010\u0098\u0001\u001a\u00030\u0099\u0001H\u0001¢\u0006\u0003\bè\u0001J\u0018\u0010é\u0001\u001a\u00030\u009b\u00012\f\u0010ê\u0001\u001a\u00070\u0082\u0001R\u00020\u0000H\u0002J\n\u0010ë\u0001\u001a\u00030\u009b\u0001H\u0002J\u0014\u0010ì\u0001\u001a\u00030\u009b\u00012\b\u0010á\u0001\u001a\u00030â\u0001H\u0002J\u0010\u0010í\u0001\u001a\t\u0012\u0005\u0012\u00030À\u00010}H\u0016J\u0013\u0010î\u0001\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010Ã\u00010ï\u0001H\u0016J\"\u0010ð\u0001\u001a\u0011\u0012\f\u0012\n\u0012\u0005\u0012\u00030ò\u00010ñ\u00010ï\u00012\b\u0010ó\u0001\u001a\u00030Ã\u0001H\u0016J\u0010\u0010ô\u0001\u001a\t\u0012\u0004\u0012\u00020u0ñ\u0001H\u0016J\u0014\u0010õ\u0001\u001a\u00030\u009b\u00012\b\u0010¢\u0001\u001a\u00030ö\u0001H\u0016J\u0012\u0010÷\u0001\u001a\u00030\u009b\u00012\u0006\u0010t\u001a\u00020uH\u0002J\u001e\u0010ø\u0001\u001a\u00030®\u00012\b\u0010 \u0001\u001a\u00030¡\u00012\b\u0010¢\u0001\u001a\u00030£\u0001H\u0016J\n\u0010ù\u0001\u001a\u00030À\u0001H\u0016J\n\u0010ú\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010û\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020uH\u0002J\u001d\u0010ü\u0001\u001a\u00030\u009b\u00012\n\b\u0002\u0010ý\u0001\u001a\u00030þ\u0001H\u0086@¢\u0006\u0003\u0010ÿ\u0001J\u001e\u0010\u0080\u0002\u001a\u00030\u009b\u00012\b\u0010\u0081\u0002\u001a\u00030\u0082\u00022\b\u0010¢\u0001\u001a\u00030\u0083\u0002H\u0016J\b\u0010\u0084\u0002\u001a\u00030\u009b\u0001J\n\u0010\u0085\u0002\u001a\u00030\u009b\u0001H\u0007J\n\u0010\u0086\u0002\u001a\u00030\u009b\u0001H\u0002J\u001e\u0010\u0087\u0002\u001a\u00030®\u00012\b\u0010§\u0001\u001a\u00030\u0088\u00022\b\u0010¢\u0001\u001a\u00030\u0089\u0002H\u0016J\u0014\u0010\u008a\u0002\u001a\u00030\u009b\u00012\b\u0010¢\u0001\u001a\u00030¬\u0001H\u0016J\n\u0010\u008b\u0002\u001a\u00020~H\u0096\u0001J\n\u0010\u008c\u0002\u001a\u00030\u009b\u0001H\u0007J\u0014\u0010\u008d\u0002\u001a\u00030\u009b\u00012\b\u0010ó\u0001\u001a\u00030Ã\u0001H\u0016J\n\u0010\u008e\u0002\u001a\u00030\u009b\u0001H\u0007J\n\u0010\u008f\u0002\u001a\u00030\u009b\u0001H\u0007J\u001e\u0010\u0090\u0002\u001a\u00030\u009b\u00012\b\u0010\u0091\u0002\u001a\u00030Ã\u00012\b\u0010¢\u0001\u001a\u00030£\u0001H\u0016J\u001e\u0010\u0092\u0002\u001a\u00030\u009b\u00012\b\u0010\u0091\u0002\u001a\u00030Ã\u00012\b\u0010¢\u0001\u001a\u00030©\u0001H\u0016JJ\u0010\u0093\u0002\u001a\u00030\u009b\u00012\b\u0010¢\u0001\u001a\u00030\u0094\u00022\b\u0010\u0095\u0002\u001a\u00030Ã\u00012#\b\u0004\u0010\u0096\u0002\u001a\u001c\b\u0001\u0012\f\u0012\n\u0012\u0005\u0012\u00030\u009b\u00010\u0098\u0002\u0012\u0007\u0012\u0005\u0018\u00010\u0099\u00020\u0097\u0002H\u0082\b¢\u0006\u0003\u0010\u009a\u0002J \u0010\u009b\u0002\u001a\u00030\u009b\u00012\b\u0010\u009c\u0002\u001a\u00030Ã\u00012\n\u0010\u009d\u0002\u001a\u0005\u0018\u00010\u009e\u0002H\u0017J\u0014\u0010\u009f\u0002\u001a\u00030\u009b\u00012\b\u0010ó\u0001\u001a\u00030Ã\u0001H\u0016J\u0012\u0010 \u0002\u001a\u00030\u009b\u00012\b\u0010¡\u0002\u001a\u00030¢\u0002J\u0014\u0010£\u0002\u001a\u00030\u009b\u00012\b\u0010¤\u0002\u001a\u00030¥\u0002H\u0017J\u001e\u0010¦\u0002\u001a\u00030\u009b\u00012\b\u0010§\u0002\u001a\u00030¨\u00022\b\u0010¢\u0001\u001a\u00030¬\u0001H\u0016J\u001e\u0010©\u0002\u001a\u00030\u009b\u00012\b\u0010§\u0001\u001a\u00030ª\u00022\b\u0010¢\u0001\u001a\u00030ö\u0001H\u0016J\u0012\u0010«\u0002\u001a\u00030\u009b\u00012\b\u0010\u0098\u0001\u001a\u00030¬\u0002J\u0014\u0010\u00ad\u0002\u001a\u00030\u009b\u00012\b\u0010¤\u0002\u001a\u00030®\u0002H\u0016J\n\u0010¯\u0002\u001a\u00030\u009b\u0001H\u0007J\n\u0010°\u0002\u001a\u00030\u009b\u0001H\u0002J\u0014\u0010±\u0002\u001a\u00030\u009b\u00012\b\u0010²\u0002\u001a\u00030Ã\u0001H\u0007J\u001e\u0010³\u0002\u001a\u00030´\u00022\b\u0010µ\u0002\u001a\u00030¶\u00022\b\u0010·\u0002\u001a\u00030Ý\u0001H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020BX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020MX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010o\u001a\u00020pX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020^X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020HX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010[\u001a\u00020\\X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010t\u001a\u0004\u0018\u00010u8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bv\u0010wR\u0014\u0010x\u001a\u00020y8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bz\u0010{R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020VX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010q\u001a\u00020rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020FX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020TX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010N\u001a\u0012\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020Q0Oj\u0002`RX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010m\u001a\u00020nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020@X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010|\u001a\b\u0012\u0004\u0012\u00020~0}X\u0096\u0005¢\u0006\u0007\u001a\u0005\b\u007f\u0010\u0080\u0001R\u0014\u0010\u0081\u0001\u001a\u00070\u0082\u0001R\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010g\u001a\u001e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u00020i01j\u0002`jX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010a\u001a\u001e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020d\u0012\u0004\u0012\u00020e01j\u0002`fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010k\u001a\u00020lX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0083\u0001\u001a\u00030\u0084\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u000e\u0010I\u001a\u00020JX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020DX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020XX\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u008b\u0001\u001a\u00030\u008a\u00012\b\u0010\u0089\u0001\u001a\u00030\u008a\u00018V@VX\u0096\u000e¢\u0006\u0010\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001R\u000e\u00109\u001a\u00020:X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020ZX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020`X\u0082\u0004¢\u0006\u0002\n\u0000R*\u00100\u001a\u001e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020501j\u0002`6X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0090\u0001\u001a\u00030\u0091\u0001*\u00030\u0092\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001¨\u0006Ú\u0002"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalInternalApi;", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;", "adapter", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "apiClient", "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;", "locationValidator", "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;", "locationHandler", "Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "connectionTokenRepository", "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "proxyResourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;", "chargeAttemptManager", "Lcom/stripe/transaction/ChargeAttemptManager;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "readerBatteryInfoPoller", "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;", "traceManager", "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;", "executorService", "Ljava/util/concurrent/ExecutorService;", "offlineReaderSetup", "Lcom/stripe/offlinemode/OfflineReaderSetup;", "offlineSessionManager", "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;", "tipEligibleValidator", "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;", "collectPaymentMethodOperationValidator", "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "networkStatusProvider", "Ljavax/inject/Provider;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "bluetoothDeviceNameRepository", "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;", "offlineDatabaseReaper", "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;", "stripeConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;", "updatesHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatesHealthLogger;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "simulatorConfigurationRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "proxyTerminalListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;", "proxyOfflineListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "backgroundReaderActivator", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;", "readerActivationListener", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;", "errorReporter", "Lcom/stripe/spos/sentry/http/ErrorReporter;", "collectInputsExternalModelTransformer", "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;", "permissionsValidator", "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;", "offlineStatusRepository", "backgroundScope", "Lkotlinx/coroutines/CoroutineScope;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "formsIntegrationLogger", "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;", "disconnectReasonRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "terminalExceptionTransformer", "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;", "collectInputsParametersTransformer", "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;", "clock", "Lcom/stripe/time/Clock;", "updatePaymentIntentParamRepository", "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;", "passthroughHealthStageLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthStageLogger;", "passthroughHealthDiscreteLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthDiscreteLogger;", "paymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "cancelIntentManager", "Lcom/stripe/cancelintent/CancelIntentManager;", "ensureSingleDiscoverOperation", "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;", "(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Ljava/util/concurrent/ExecutorService;Lcom/stripe/offlinemode/OfflineReaderSetup;Lcom/stripe/offlinemode/helpers/OfflineSessionManager;Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Ljavax/inject/Provider;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;Lcom/stripe/spos/sentry/http/ErrorReporter;Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;Lcom/stripe/time/Clock;Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/cancelintent/CancelIntentManager;Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;)V", "connectedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "getConnectedReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "connectionStatus", "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "getConnectionStatus", "()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "offlineStatusStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "getOfflineStatusStateFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "operationInProgress", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;", "paymentStatus", "Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "getPaymentStatus", "()Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "previousRefundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "value", "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "simulatorConfiguration", "getSimulatorConfiguration", "()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "setSimulatorConfiguration", "(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V", "accountOfflineConfigOrDefault", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", "getAccountOfflineConfigOrDefault", "(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "activateReader", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "activateReader$terminalsession_release", "", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;", "activateReaderCallback", "Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;", "cancelPaymentIntent", "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "cancelSetupIntent", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;", "clearCachedCredentials", "clearReaderDisplay", "Lcom/stripe/stripeterminal/external/callable/Callback;", "collectData", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;", "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;", "collectInputs", "collectInputsParameters", "Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;", "Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;", "collectPaymentMethod", "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;", "collectPaymentMethodWithExplicitAllowRedisplay", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "collectRefundPaymentMethod", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;", "collectSetupIntentPaymentMethod", "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;", "customerConsentCollected", "", "completePaymentIntentActionRequired", "paymentIntentId", "", "confirmPaymentIntent", "Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;", "confirmRefund", "Lcom/stripe/stripeterminal/external/callable/RefundCallback;", "confirmSetupIntent", "connectEmbeddedReader", "connectionCallback", "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;", "connectReader", "createLogCancelCallback", "cancelIntentMethodName", "operationName", "intentId", "createPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "destroy", "determineAmountToDisplayForCollection", "Lcom/stripe/currency/Amount;", "defaultAmount", "disconnectReader", "discoverReaders", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "discoveryListener", "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "emergencyDisconnectReader", "disconnectReason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "doFinally", "Lkotlin/Function0;", "emergencyRebootReader", "endReaderBatteryPolling", "enqueueActivateOp", "enqueueActivateOp$terminalsession_release", "enqueueOperation", "operation", "enqueueReaderBatteryInfoPollingOperation", "enqueueReconnectReaderOperation", "getHasSessionTokenFlow", "getOfflineActiveAccount", "Lkotlinx/coroutines/flow/Flow;", "getOfflineData", "", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;", "accountId", "getOfflineReaders", "getReaderSettings", "Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;", "handleMposDevice", "handleNextActions", "hasSessionToken", "installAvailableUpdate", "installAvailableUpdateOnMpos", "killAidlServer", "delayMs", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "listLocations", "parameters", "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "Lcom/stripe/stripeterminal/external/callable/LocationListCallback;", "pause", "pauseNetworkHealthChecks", "pauseReaderBatteryPolling", "readReusableCard", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "Lcom/stripe/stripeterminal/external/callable/PaymentMethodCallback;", "rebootReader", "requestOfflineStatusStateUpdate", "reset", "restoreSoftDeletedPayments", "resume", "resumeNetworkHealthChecks", "retrievePaymentIntent", "clientSecret", "retrieveSetupIntent", "runSuspendingApiRequest", "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;", "errorMessage", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "saveOfflineConfigForInternetReader", "locationId", "offlineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "setActiveAccount", "setFakedContactlessOutcome", "fakedContactlessOutcome", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "setOfflineListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "setTapToPayUxConfiguration", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;", "setTerminalListener", "Lcom/stripe/stripeterminal/external/callable/TerminalListener;", "startOfflineSession", "startReaderBatteryPolling", "stopOfflineSession", "reason", "supportsReadersOfType", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "discoveryConfiguration", "ActivateReaderBackgroundOperation", "ActivateReaderOperation", "CancelPaymentIntentOperation", "CancelSetupIntentOperation", "CancelableOperation", "ClearReaderDisplayOperation", "CollectDataOperation", "CollectInputsOperation", "CollectPaymentMethodOperation", "CollectRefundPaymentMethodOperation", "CollectSetupIntentPaymentMethodOperation", "Companion", "CompletePaymentIntentActionRequiredOperation", "ConfirmPaymentIntentOperation", "ConfirmRefundOperation", "ConfirmSetupIntentOperation", "ConnectReaderOperation", "CreatePaymentIntentOperation", "CreateSetupIntentOperation", "DisconnectReaderOperation", "DiscoverReadersOperation", "ExternalOperation", "GetReaderSettingsOperation", "HandleNextActionsOperation", "InstallUpdateOperation", "InternalOperation", "NullOperation", "Operation", "ReadReusableCardOperation", "ReaderBatteryInfoPollingOperation", "RebootReaderOperation", "ReconnectReaderOperation", "SetReaderDisplayOperation", "SetReaderSettingsOperation", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalSession implements TerminalInternalApi, OfflineStatusRepository {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String IDENTIFIER = "sdk_operation";
    private final Adapter adapter;
    private final ApiClient apiClient;
    private final BackgroundReaderActivator backgroundReaderActivator;
    private final CoroutineScope backgroundScope;
    private final BluetoothDeviceNameRepository bluetoothDeviceNameRepository;
    private final CancelIntentManager cancelIntentManager;
    private final ChargeAttemptManager chargeAttemptManager;
    private final Clock clock;
    private final CollectInputsExternalModelTransformer collectInputsExternalModelTransformer;
    private final CollectInputsParametersTransformer collectInputsParametersTransformer;
    private final CollectPaymentMethodOperationValidator collectPaymentMethodOperationValidator;
    private final ConnectionTokenRepository connectionTokenRepository;
    private final DisconnectReasonRepository disconnectReasonRepository;
    private final EnsureSingleDiscoverOperation ensureSingleDiscoverOperation;
    private final ErrorReporter errorReporter;
    private final ExecutorService executorService;
    private final FeatureFlagsRepository featureFlagsRepository;
    private final FormsIntegrationLogger formsIntegrationLogger;
    private final LocationHandler locationHandler;
    private final LocationServicesValidator locationValidator;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final LoggerFactory loggerFactory;
    private final Provider<NetworkStatus> networkStatusProvider;
    private final OfflineConfigHelper offlineConfigHelper;
    private final OfflineDatabaseReaper offlineDatabaseReaper;
    private final OfflineReaderSetup offlineReaderSetup;
    private final OfflineRepository offlineRepository;
    private final OfflineSessionManager offlineSessionManager;
    private final OfflineStatusRepository offlineStatusRepository;
    private Operation operationInProgress;
    private final HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder> passthroughHealthDiscreteLogger;
    private final HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder> passthroughHealthStageLogger;
    private final PaymentIntentUpdater paymentIntentUpdater;
    private final PermissionsValidator permissionsValidator;
    private RefundParameters previousRefundParams;
    private final ProxyOfflineListener proxyOfflineListener;
    private final ProxyResourceRepository proxyResourceRepository;
    private final ProxyTerminalListener proxyTerminalListener;
    private final ReaderActivationListener readerActivationListener;
    private final ReaderBatteryInfoPoller readerBatteryInfoPoller;
    private final SessionTokenRepository sessionTokenRepository;
    private final SettingsRepository settingsRepository;
    private final SimulatorConfigurationRepository simulatorConfigurationRepository;
    private final TerminalStatusManager statusManager;
    private final StripeConnectivityRepository stripeConnectivityRepository;
    private final TerminalExceptionTransformer terminalExceptionTransformer;
    private final TipEligibleValidator tipEligibleValidator;
    private final TraceManager traceManager;
    private final TransactionRepository transactionRepository;
    private final UpdatePaymentIntentParamRepository updatePaymentIntentParamRepository;
    private final HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> updatesHealthLogger;

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CollectDataType.values().length];
            try {
                iArr[CollectDataType.MAGSTRIPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusRepository
    public StateFlow<OfflineStatus> getOfflineStatusStateFlow() {
        return this.offlineStatusRepository.getOfflineStatusStateFlow();
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusRepository
    public OfflineStatus requestOfflineStatusStateUpdate() {
        return this.offlineStatusRepository.requestOfflineStatusStateUpdate();
    }

    public TerminalSession(Adapter adapter, ApiClient apiClient, LocationServicesValidator locationValidator, LocationHandler locationHandler, TerminalStatusManager statusManager, ConnectionTokenRepository connectionTokenRepository, SessionTokenRepository sessionTokenRepository, ProxyResourceRepository proxyResourceRepository, ChargeAttemptManager chargeAttemptManager, TransactionRepository transactionRepository, ReaderBatteryInfoPoller readerBatteryInfoPoller, TraceManager traceManager, ExecutorService executorService, OfflineReaderSetup offlineReaderSetup, OfflineSessionManager offlineSessionManager, TipEligibleValidator tipEligibleValidator, CollectPaymentMethodOperationValidator collectPaymentMethodOperationValidator, FeatureFlagsRepository featureFlagsRepository, Provider<NetworkStatus> networkStatusProvider, BluetoothDeviceNameRepository bluetoothDeviceNameRepository, OfflineDatabaseReaper offlineDatabaseReaper, StripeConnectivityRepository stripeConnectivityRepository, HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> updatesHealthLogger, OfflineConfigHelper offlineConfigHelper, SimulatorConfigurationRepository simulatorConfigurationRepository, ProxyTerminalListener proxyTerminalListener, ProxyOfflineListener proxyOfflineListener, OfflineRepository offlineRepository, BackgroundReaderActivator backgroundReaderActivator, ReaderActivationListener readerActivationListener, ErrorReporter errorReporter, CollectInputsExternalModelTransformer collectInputsExternalModelTransformer, PermissionsValidator permissionsValidator, OfflineStatusRepository offlineStatusRepository, CoroutineScope backgroundScope, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger, FormsIntegrationLogger formsIntegrationLogger, DisconnectReasonRepository disconnectReasonRepository, SettingsRepository settingsRepository, TerminalExceptionTransformer terminalExceptionTransformer, CollectInputsParametersTransformer collectInputsParametersTransformer, Clock clock, UpdatePaymentIntentParamRepository updatePaymentIntentParamRepository, HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder> passthroughHealthStageLogger, HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder> passthroughHealthDiscreteLogger, PaymentIntentUpdater paymentIntentUpdater, LoggerFactory loggerFactory, CancelIntentManager cancelIntentManager, EnsureSingleDiscoverOperation ensureSingleDiscoverOperation) {
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
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        Intrinsics.checkNotNullParameter(offlineReaderSetup, "offlineReaderSetup");
        Intrinsics.checkNotNullParameter(offlineSessionManager, "offlineSessionManager");
        Intrinsics.checkNotNullParameter(tipEligibleValidator, "tipEligibleValidator");
        Intrinsics.checkNotNullParameter(collectPaymentMethodOperationValidator, "collectPaymentMethodOperationValidator");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(networkStatusProvider, "networkStatusProvider");
        Intrinsics.checkNotNullParameter(bluetoothDeviceNameRepository, "bluetoothDeviceNameRepository");
        Intrinsics.checkNotNullParameter(offlineDatabaseReaper, "offlineDatabaseReaper");
        Intrinsics.checkNotNullParameter(stripeConnectivityRepository, "stripeConnectivityRepository");
        Intrinsics.checkNotNullParameter(updatesHealthLogger, "updatesHealthLogger");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(simulatorConfigurationRepository, "simulatorConfigurationRepository");
        Intrinsics.checkNotNullParameter(proxyTerminalListener, "proxyTerminalListener");
        Intrinsics.checkNotNullParameter(proxyOfflineListener, "proxyOfflineListener");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(backgroundReaderActivator, "backgroundReaderActivator");
        Intrinsics.checkNotNullParameter(readerActivationListener, "readerActivationListener");
        Intrinsics.checkNotNullParameter(errorReporter, "errorReporter");
        Intrinsics.checkNotNullParameter(collectInputsExternalModelTransformer, "collectInputsExternalModelTransformer");
        Intrinsics.checkNotNullParameter(permissionsValidator, "permissionsValidator");
        Intrinsics.checkNotNullParameter(offlineStatusRepository, "offlineStatusRepository");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(logger, "logger");
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
        this.adapter = adapter;
        this.apiClient = apiClient;
        this.locationValidator = locationValidator;
        this.locationHandler = locationHandler;
        this.statusManager = statusManager;
        this.connectionTokenRepository = connectionTokenRepository;
        this.sessionTokenRepository = sessionTokenRepository;
        this.proxyResourceRepository = proxyResourceRepository;
        this.chargeAttemptManager = chargeAttemptManager;
        this.transactionRepository = transactionRepository;
        this.readerBatteryInfoPoller = readerBatteryInfoPoller;
        this.traceManager = traceManager;
        this.executorService = executorService;
        this.offlineReaderSetup = offlineReaderSetup;
        this.offlineSessionManager = offlineSessionManager;
        this.tipEligibleValidator = tipEligibleValidator;
        this.collectPaymentMethodOperationValidator = collectPaymentMethodOperationValidator;
        this.featureFlagsRepository = featureFlagsRepository;
        this.networkStatusProvider = networkStatusProvider;
        this.bluetoothDeviceNameRepository = bluetoothDeviceNameRepository;
        this.offlineDatabaseReaper = offlineDatabaseReaper;
        this.stripeConnectivityRepository = stripeConnectivityRepository;
        this.updatesHealthLogger = updatesHealthLogger;
        this.offlineConfigHelper = offlineConfigHelper;
        this.simulatorConfigurationRepository = simulatorConfigurationRepository;
        this.proxyTerminalListener = proxyTerminalListener;
        this.proxyOfflineListener = proxyOfflineListener;
        this.offlineRepository = offlineRepository;
        this.backgroundReaderActivator = backgroundReaderActivator;
        this.readerActivationListener = readerActivationListener;
        this.errorReporter = errorReporter;
        this.collectInputsExternalModelTransformer = collectInputsExternalModelTransformer;
        this.permissionsValidator = permissionsValidator;
        this.offlineStatusRepository = offlineStatusRepository;
        this.backgroundScope = backgroundScope;
        this.logger = logger;
        this.formsIntegrationLogger = formsIntegrationLogger;
        this.disconnectReasonRepository = disconnectReasonRepository;
        this.settingsRepository = settingsRepository;
        this.terminalExceptionTransformer = terminalExceptionTransformer;
        this.collectInputsParametersTransformer = collectInputsParametersTransformer;
        this.clock = clock;
        this.updatePaymentIntentParamRepository = updatePaymentIntentParamRepository;
        this.passthroughHealthStageLogger = passthroughHealthStageLogger;
        this.passthroughHealthDiscreteLogger = passthroughHealthDiscreteLogger;
        this.paymentIntentUpdater = paymentIntentUpdater;
        this.loggerFactory = loggerFactory;
        this.cancelIntentManager = cancelIntentManager;
        this.ensureSingleDiscoverOperation = ensureSingleDiscoverOperation;
        this.operationInProgress = new NullOperation();
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public Reader getConnectedReader() {
        return this.statusManager.getConnectedReader();
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public ConnectionStatus getConnectionStatus() {
        return this.statusManager.getConnectionStatus();
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public PaymentStatus getPaymentStatus() {
        return this.statusManager.getPaymentStatus();
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public SimulatorConfiguration getSimulatorConfiguration() {
        return this.simulatorConfigurationRepository.getSimulatorConfiguration();
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void setSimulatorConfiguration(SimulatorConfiguration value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.simulatorConfigurationRepository.setSimulatorConfiguration(value);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void setTerminalListener(TerminalListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.proxyTerminalListener.setListener(listener);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void setOfflineListener(OfflineListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.proxyOfflineListener.setListener(listener);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public void saveOfflineConfigForInternetReader(String locationId, OfflineConfigPb offlineConfig) {
        Intrinsics.checkNotNullParameter(locationId, "locationId");
        this.offlineConfigHelper.onOfflineConfigUpdate(locationId, offlineConfig, null, null, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public List<Reader> getOfflineReaders() {
        return OfflineRepository.discoverOfflineReaderList$default(this.offlineRepository, null, 1, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public boolean hasSessionToken() {
        return this.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue();
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public StateFlow<Boolean> getHasSessionTokenFlow() {
        return this.sessionTokenRepository.getHasSessionTokenStateFlow();
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public Flow<List<OfflineData>> getOfflineData(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return FlowKt.combineTransform(this.offlineRepository.offlineReaders(accountId), this.offlineRepository.offlineConnections(accountId), this.offlineRepository.offlineLocations(accountId), this.offlineRepository.offlinePaymentRequestsToSync(accountId), new C04701(null));
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$getOfflineData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\u0006\u0010\u000b\u001a\u00020\fH\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;", "readers", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "connections", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "locations", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "paymentIntents", "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$getOfflineData$1", f = "TerminalSession.kt", i = {}, l = {302}, m = "invokeSuspend", n = {}, s = {})
    static final class C04701 extends SuspendLambda implements Function6<FlowCollector<? super List<? extends OfflineData>>, List<? extends OfflineReader>, List<? extends OfflineConnection>, List<? extends OfflineLocation>, OfflineRequestsToSync, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        /* synthetic */ Object L$3;
        /* synthetic */ Object L$4;
        int label;

        C04701(Continuation<? super C04701> continuation) {
            super(6, continuation);
        }

        @Override // kotlin.jvm.functions.Function6
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends OfflineData>> flowCollector, List<? extends OfflineReader> list, List<? extends OfflineConnection> list2, List<? extends OfflineLocation> list3, OfflineRequestsToSync offlineRequestsToSync, Continuation<? super Unit> continuation) {
            return invoke2(flowCollector, (List<OfflineReader>) list, (List<OfflineConnection>) list2, (List<OfflineLocation>) list3, offlineRequestsToSync, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<? extends OfflineData>> flowCollector, List<OfflineReader> list, List<OfflineConnection> list2, List<OfflineLocation> list3, OfflineRequestsToSync offlineRequestsToSync, Continuation<? super Unit> continuation) {
            C04701 c04701 = new C04701(continuation);
            c04701.L$0 = flowCollector;
            c04701.L$1 = list;
            c04701.L$2 = list2;
            c04701.L$3 = list3;
            c04701.L$4 = offlineRequestsToSync;
            return c04701.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                List<OfflineReader> list = (List) this.L$1;
                List<OfflineConnection> list2 = (List) this.L$2;
                List<OfflineLocation> list3 = (List) this.L$3;
                OfflineRequestsToSync offlineRequestsToSync = (OfflineRequestsToSync) this.L$4;
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 1;
                if (flowCollector.emit(CollectionsKt.plus((Collection) OfflineDataFactory.INSTANCE.dataFromConnectionsAndReaders(list2, list, list3), (Iterable) OfflineDataFactory.INSTANCE.dataFromPaymentIntentRequest(offlineRequestsToSync)), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public void restoreSoftDeletedPayments(String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.offlineRepository.restoreSoftDeletedPayments(accountId);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public Flow<String> getOfflineActiveAccount() {
        return this.offlineRepository.getActiveAccountFlow();
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public void setActiveAccount(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.offlineRepository.setActiveAccountId(accountId);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void cancelPaymentIntent(PaymentIntent intent, PaymentIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.cancelIntentManager.cancelIntent(OfflineAdapterKt.requireOnlineOrOfflineId(intent));
        enqueueOperation(new CancelPaymentIntentOperation(this, intent, callback));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void clearCachedCredentials() {
        this.logger.startOperation(SdkRequest.INSTANCE.clearCachedCredentials(), IDENTIFIER);
        this.connectionTokenRepository.clearToken();
        this.sessionTokenRepository.clear();
        this.offlineSessionManager.clear();
        this.bluetoothDeviceNameRepository.clear();
        this.logger.endOperation(SdkResponse.INSTANCE.success(), IDENTIFIER);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void clearReaderDisplay(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        enqueueOperation(new ClearReaderDisplayOperation(this, callback));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public ReaderSupportResult supportsReadersOfType(DeviceType deviceType, DiscoveryConfiguration discoveryConfiguration) {
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        return this.adapter.supportsReadersOfType(deviceType, discoveryConfiguration);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public com.stripe.stripeterminal.external.callable.Cancelable collectPaymentMethodWithExplicitAllowRedisplay(PaymentIntent intent, PaymentIntentCallback callback, CollectConfiguration config, AllowRedisplay allowRedisplay) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(config, "config");
        this.logger.d("collectPaymentMethodWithExplicitAllowRedisplay", TuplesKt.to("config", config));
        boolean skipTipping = config.getSkipTipping();
        boolean moto = config.getMoto();
        boolean updatePaymentIntent = config.getUpdatePaymentIntent();
        TippingConfiguration tippingConfiguration = config.getTippingConfiguration();
        CollectPaymentMethodOperation collectPaymentMethodOperation = new CollectPaymentMethodOperation(this, intent, skipTipping, moto, updatePaymentIntent, tippingConfiguration != null ? tippingConfiguration.getEligibleAmount() : null, config.getEnableCustomerCancellation(), config.getRequestDynamicCurrencyConversion(), config.getSurchargeNotice(), allowRedisplay, new Function1<ApiError, Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$collectPaymentMethodWithExplicitAllowRedisplay$op$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ApiError apiError) {
                invoke2(apiError);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ApiError it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.this$0.adapter.onCollectPaymentMethodApiError();
            }
        }, callback);
        this.cancelIntentManager.onQueueIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(intent), collectPaymentMethodOperation, this.adapter.adapterType());
        enqueueOperation(collectPaymentMethodOperation);
        return new Cancelable(collectPaymentMethodOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable collectPaymentMethod(PaymentIntent intent, PaymentIntentCallback callback, CollectConfiguration config) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(config, "config");
        return collectPaymentMethodWithExplicitAllowRedisplay(intent, callback, config, config.getAllowRedisplay());
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$setFakedContactlessOutcome$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$setFakedContactlessOutcome$1", f = "TerminalSession.kt", i = {}, l = {399}, m = "invokeSuspend", n = {}, s = {})
    static final class C04721 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType $fakedContactlessOutcome;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04721(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType, Continuation<? super C04721> continuation) {
            super(2, continuation);
            this.$fakedContactlessOutcome = fakedContactlessOutcomeType;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TerminalSession.this.new C04721(this.$fakedContactlessOutcome, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04721) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (TerminalSession.this.adapter.setFakedContactlessOutcome(this.$fakedContactlessOutcome, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final void setFakedContactlessOutcome(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcome) throws InterruptedException {
        Intrinsics.checkNotNullParameter(fakedContactlessOutcome, "fakedContactlessOutcome");
        BuildersKt__BuildersKt.runBlocking$default(null, new C04721(fakedContactlessOutcome, null), 1, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable collectRefundPaymentMethod(RefundParameters refundParams, RefundConfiguration config, com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(callback, "callback");
        CollectRefundPaymentMethodOperation collectRefundPaymentMethodOperation = new CollectRefundPaymentMethodOperation(this, refundParams, config, callback);
        enqueueOperation(collectRefundPaymentMethodOperation);
        return new Cancelable(collectRefundPaymentMethodOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable collectSetupIntentPaymentMethod(SetupIntent intent, AllowRedisplay allowRedisplay, SetupIntentConfiguration config, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(allowRedisplay, "allowRedisplay");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return collectSetupIntentPaymentMethod(intent, true, allowRedisplay, config, callback);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public com.stripe.stripeterminal.external.callable.Cancelable collectSetupIntentPaymentMethod(SetupIntent intent, boolean customerConsentCollected, AllowRedisplay allowRedisplay, SetupIntentConfiguration config, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(callback, "callback");
        CollectSetupIntentPaymentMethodOperation collectSetupIntentPaymentMethodOperation = new CollectSetupIntentPaymentMethodOperation(this, intent, customerConsentCollected, allowRedisplay, config.getMoto(), config.getEnableCustomerCancellation(), callback);
        this.cancelIntentManager.onQueueIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(intent), collectSetupIntentPaymentMethodOperation, this.adapter.adapterType());
        enqueueOperation(collectSetupIntentPaymentMethodOperation);
        return new Cancelable(collectSetupIntentPaymentMethodOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable collectData(CollectDataConfiguration config, CollectedDataCallback callback) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (WhenMappings.$EnumSwitchMapping$0[config.getType().ordinal()] != 1) {
            throw new NoWhenBranchMatchedException();
        }
        CollectDataOperation collectDataOperation = new CollectDataOperation(this, PaymentMethodCollectionType.Passthrough.PassthroughType.MAGSTRIPE, config.getEnableCustomerCancellation(), callback);
        enqueueOperation(collectDataOperation);
        return new Cancelable(collectDataOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable confirmSetupIntent(SetupIntent intent, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ConfirmSetupIntentOperation confirmSetupIntentOperation = new ConfirmSetupIntentOperation(this, intent, callback);
        this.cancelIntentManager.onQueueIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(intent), confirmSetupIntentOperation, this.adapter.adapterType());
        enqueueOperation(confirmSetupIntentOperation);
        return new Cancelable(confirmSetupIntentOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable collectInputs(CollectInputsParameters collectInputsParameters, CollectInputsResultCallback callback) {
        Intrinsics.checkNotNullParameter(collectInputsParameters, "collectInputsParameters");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.logger.i("collectInputs", new Pair[0]);
        CollectInputsOperation collectInputsOperation = new CollectInputsOperation(this, collectInputsParameters, new ProxyCollectInputsResultCallback(callback, this.formsIntegrationLogger, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(ProxyCollectInputsResultCallback.class))));
        enqueueOperation(collectInputsOperation);
        return new Cancelable(collectInputsOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void connectReader(Reader reader, ConnectionConfiguration config, ReaderCallback connectionCallback) {
        ProxyReaderListener proxyReaderListener;
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(connectionCallback, "connectionCallback");
        if (config instanceof ConnectionConfiguration.BluetoothConnectionConfiguration) {
            proxyReaderListener = new ProxyReaderListener(this.loggerFactory, null, null, null, ((ConnectionConfiguration.BluetoothConnectionConfiguration) config).getBluetoothReaderListener(), 14, null);
        } else if (config instanceof ConnectionConfiguration.UsbConnectionConfiguration) {
            proxyReaderListener = new ProxyReaderListener(this.loggerFactory, null, null, null, ((ConnectionConfiguration.UsbConnectionConfiguration) config).getUsbReaderListener(), 14, null);
        } else if (config instanceof ConnectionConfiguration.HandoffConnectionConfiguration) {
            proxyReaderListener = new ProxyReaderListener(this.loggerFactory, ((ConnectionConfiguration.HandoffConnectionConfiguration) config).getHandoffReaderListener(), null, null, null, 28, null);
        } else if (config instanceof ConnectionConfiguration.TapToPayConnectionConfiguration) {
            proxyReaderListener = new ProxyReaderListener(this.loggerFactory, null, ((ConnectionConfiguration.TapToPayConnectionConfiguration) config).getTapToPayReaderListener(), null, null, 26, null);
        } else if (config instanceof ConnectionConfiguration.InternetConnectionConfiguration) {
            proxyReaderListener = new ProxyReaderListener(this.loggerFactory, null, null, ((ConnectionConfiguration.InternetConnectionConfiguration) config).getInternetReaderListener(), null, 22, null);
        } else {
            if (!(config instanceof ConnectionConfiguration.EmbeddedConnectionConfiguration)) {
                throw new NoWhenBranchMatchedException();
            }
            proxyReaderListener = new ProxyReaderListener(this.loggerFactory, null, null, null, null, 30, null);
        }
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new AnonymousClass1(reader, config, proxyReaderListener, connectionCallback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$connectReader$1, reason: invalid class name */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$connectReader$1", f = "TerminalSession.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ConnectionConfiguration $config;
        final /* synthetic */ ReaderCallback $connectionCallback;
        final /* synthetic */ ProxyReaderListener $proxyReaderListener;
        final /* synthetic */ Reader $reader;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Reader reader, ConnectionConfiguration connectionConfiguration, ProxyReaderListener proxyReaderListener, ReaderCallback readerCallback, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$reader = reader;
            this.$config = connectionConfiguration;
            this.$proxyReaderListener = proxyReaderListener;
            this.$connectionCallback = readerCallback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TerminalSession.this.new AnonymousClass1(this.$reader, this.$config, this.$proxyReaderListener, this.$connectionCallback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                TerminalSession.this.adapter.cancelDiscoverReaders(CancelDiscoverReadersReason.ConnectReaderInProgress.INSTANCE);
                TerminalSession.this.enqueueOperation(new ConnectReaderOperation(TerminalSession.this, this.$reader, this.$config, this.$proxyReaderListener, this.$connectionCallback));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public void connectEmbeddedReader(Reader reader, ConnectionConfiguration.EmbeddedConnectionConfiguration config, ReaderCallback connectionCallback) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(connectionCallback, "connectionCallback");
        this.logger.d("connectEmbeddedReader", TuplesKt.to(OfflineStorageConstantsKt.READER_SERIAL_NUMBER, reader.getSerialNumber()));
        connectReader(reader, config, connectionCallback);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public void activateReader(Reader reader, ConnectionConfiguration.EmbeddedConnectionConfiguration config, ActivateReaderCallback activateReaderCallback) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(activateReaderCallback, "activateReaderCallback");
        enqueueOperation(new ActivateReaderOperation(this, reader, config, activateReaderCallback));
    }

    public final ActivateReaderResponse activateReader$terminalsession_release(Reader reader, ConnectionConfiguration config) {
        String accountId;
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(config, "config");
        ActivateReaderResponse activateReaderResponseActivateReader = this.proxyResourceRepository.activateReader(reader, config, new TerminalSession$activateReader$response$1(this.adapter));
        this.readerActivationListener.onReaderActivated(config, reader, activateReaderResponseActivateReader);
        this.transactionRepository.setAccountId(activateReaderResponseActivateReader.getAccountId());
        String readerId = activateReaderResponseActivateReader.getReaderId();
        ApiLocationPb location = activateReaderResponseActivateReader.getLocation();
        reader.activate(readerId, location != null ? ProtoConverter.INSTANCE.toSdkLocation(location) : null, activateReaderResponseActivateReader.getCanonicalReaderVersion());
        String rpcSessionToken = activateReaderResponseActivateReader.getRpcSessionToken();
        if (rpcSessionToken != null && !StringsKt.isBlank(rpcSessionToken) && (accountId = activateReaderResponseActivateReader.getAccountId()) != null) {
            this.offlineReaderSetup.onReaderActivated(accountId, reader, config);
        }
        this.adapter.onReaderActivated(reader, activateReaderResponseActivateReader);
        this.logger.i(null, TuplesKt.to(OfflineStorageConstantsKt.READER_ID, reader.getId()), TuplesKt.to(OfflineStorageConstantsKt.ACCOUNT_ID, activateReaderResponseActivateReader.getAccountId()));
        return activateReaderResponseActivateReader;
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void createPaymentIntent(PaymentIntentParameters params, PaymentIntentCallback callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        createPaymentIntent(params, callback, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void createPaymentIntent(PaymentIntentParameters params, PaymentIntentCallback callback, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (createConfiguration == null) {
            createConfiguration = new CreateConfiguration(OfflineBehavior.PREFER_ONLINE);
        }
        enqueueOperation(new CreatePaymentIntentOperation(this, params, callback, createConfiguration));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void retrieveSetupIntent(String clientSecret, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.logger.startOperation(SdkRequest.INSTANCE.retrieveSetupIntent(), IDENTIFIER);
        TerminalSession$retrieveSetupIntent$wrappedCallback$1 terminalSession$retrieveSetupIntent$wrappedCallback$1 = new TerminalSession$retrieveSetupIntent$wrappedCallback$1(this, callback);
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1(terminalSession$retrieveSetupIntent$wrappedCallback$1, this, "Unknown error retrieving setup intent from API", null, this, clientSecret, terminalSession$retrieveSetupIntent$wrappedCallback$1), 3, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void createSetupIntent(SetupIntentParameters params, SetupIntentCallback callback, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (createConfiguration == null) {
            createConfiguration = new CreateConfiguration(OfflineBehavior.PREFER_ONLINE);
        }
        enqueueOperation(new CreateSetupIntentOperation(this, params, callback, createConfiguration));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void cancelSetupIntent(SetupIntent setupIntent, SetupIntentCancellationParameters params, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.cancelIntentManager.cancelIntent(OfflineAdapterKt.requireOnlineOrOfflineId(setupIntent));
        enqueueOperation(new CancelSetupIntentOperation(this, setupIntent, params, callback));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void rebootReader(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        enqueueOperation(new RebootReaderOperation(this, callback));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void disconnectReader(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        enqueueOperation(new DisconnectReaderOperation(this, callback));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void listLocations(ListLocationsParameters parameters, LocationListCallback callback) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.logger.startOperation(SdkRequest.INSTANCE.listLocations(parameters), IDENTIFIER);
        TerminalSession$listLocations$wrappedCallback$1 terminalSession$listLocations$wrappedCallback$1 = new TerminalSession$listLocations$wrappedCallback$1(this, callback);
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new TerminalSession$listLocations$$inlined$runSuspendingApiRequest$1(terminalSession$listLocations$wrappedCallback$1, this, "Unknown error listing locations from API", null, this, parameters, terminalSession$listLocations$wrappedCallback$1), 3, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable discoverReaders(DiscoveryConfiguration config, DiscoveryListener discoveryListener, com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(discoveryListener, "discoveryListener");
        Intrinsics.checkNotNullParameter(callback, "callback");
        DiscoverReadersOperation discoverReadersOperation = new DiscoverReadersOperation(this, config, new ProxyDiscoveryListener(discoveryListener, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(ProxyDiscoveryListener.class))), callback);
        this.ensureSingleDiscoverOperation.onQueueDiscoverOperation(discoverReadersOperation);
        enqueueOperation(discoverReadersOperation);
        return new Cancelable(discoverReadersOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void installAvailableUpdate() throws TerminalException {
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (connectedReader == null) {
            throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "No connected reader", null, null, 12, null);
        }
        boolean zIsMposDevice = DeviceTypeExtensions.INSTANCE.isMposDevice(connectedReader.getDeviceType());
        if (zIsMposDevice) {
            installAvailableUpdateOnMpos(connectedReader);
        } else if (!zIsMposDevice) {
            throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "This operation is not supported for this reader type", null, null, 12, null);
        }
    }

    private final void installAvailableUpdateOnMpos(final Reader reader) {
        Unit unit;
        final ReaderSoftwareUpdate availableUpdate = reader.getAvailableUpdate();
        if (availableUpdate != null) {
            availableUpdate.setOnlyInstallRequiredUpdates(false);
            InstallUpdateOperation installUpdateOperation = new InstallUpdateOperation(this, availableUpdate, new com.stripe.stripeterminal.external.callable.Callback() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$installAvailableUpdateOnMpos$1$callback$1
                @Override // com.stripe.stripeterminal.external.callable.Callback
                public void onSuccess() {
                    reader.setAvailableUpdate(null);
                    TerminalStatusManager.finishInstallingUpdate$default(this.statusManager, availableUpdate, null, 2, null);
                }

                @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                public void onFailure(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    this.statusManager.finishInstallingUpdate(availableUpdate, e);
                }
            });
            this.statusManager.startInstallingUpdate(availableUpdate, new Cancelable(installUpdateOperation));
            enqueueOperation(installUpdateOperation);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            this.statusManager.finishInstallingUpdate(null, null);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable confirmPaymentIntent(PaymentIntent intent, PaymentIntentCallback callback, ConfirmConfiguration config) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(config, "config");
        ConfirmPaymentIntentOperation confirmPaymentIntentOperation = new ConfirmPaymentIntentOperation(this, intent, config.getAmountSurcharge(), config.getReturnUrl(), callback);
        this.cancelIntentManager.onQueueIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(intent), confirmPaymentIntentOperation, this.adapter.adapterType());
        enqueueOperation(confirmPaymentIntentOperation);
        return new Cancelable(confirmPaymentIntentOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable confirmRefund(RefundCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        ConfirmRefundOperation confirmRefundOperation = new ConfirmRefundOperation(this, callback);
        enqueueOperation(confirmRefundOperation);
        return new Cancelable(confirmRefundOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public com.stripe.stripeterminal.external.callable.Cancelable readReusableCard(ReadReusableCardParameters params, PaymentMethodCallback callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ReadReusableCardOperation readReusableCardOperation = new ReadReusableCardOperation(this, params, callback);
        enqueueOperation(readReusableCardOperation);
        return new Cancelable(readReusableCardOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void retrievePaymentIntent(String clientSecret, PaymentIntentCallback callback) {
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.logger.startOperation(SdkRequest.INSTANCE.retrievePaymentIntent(), IDENTIFIER);
        TerminalSession$retrievePaymentIntent$wrappedCallback$1 terminalSession$retrievePaymentIntent$wrappedCallback$1 = new TerminalSession$retrievePaymentIntent$wrappedCallback$1(this, callback);
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new TerminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1(terminalSession$retrievePaymentIntent$wrappedCallback$1, this, "Unknown error retrieving payment intent from API", null, this, clientSecret, terminalSession$retrievePaymentIntent$wrappedCallback$1), 3, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void setReaderDisplay(Cart cart, com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        Intrinsics.checkNotNullParameter(callback, "callback");
        enqueueOperation(new SetReaderDisplayOperation(this, cart, callback));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void setReaderSettings(ReaderSettingsParameters params, ReaderSettingsCallback callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        enqueueOperation(new SetReaderSettingsOperation(this, params, callback));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalApi
    public void getReaderSettings(ReaderSettingsCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        enqueueOperation(new GetReaderSettingsOperation(this, callback));
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public com.stripe.stripeterminal.external.callable.Cancelable handleNextActions(PaymentIntent intent, PaymentIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        HandleNextActionsOperation handleNextActionsOperation = new HandleNextActionsOperation(this, intent, callback);
        enqueueOperation(handleNextActionsOperation);
        return new Cancelable(handleNextActionsOperation);
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalInternalApi
    public void completePaymentIntentActionRequired(String paymentIntentId) {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        CompletePaymentIntentActionRequiredOperation completePaymentIntentActionRequiredOperation = new CompletePaymentIntentActionRequiredOperation(this, paymentIntentId);
        try {
            completePaymentIntentActionRequiredOperation.run$terminalsession_release();
        } catch (Throwable th) {
            this.logger.e(th);
            completePaymentIntentActionRequiredOperation.onFailure$terminalsession_release(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected failure", th, null, 8, null));
        }
    }

    public final void setTapToPayUxConfiguration(TapToPayUxConfiguration config) {
        Intrinsics.checkNotNullParameter(config, "config");
        TapToPayUxConfigurationRepository.INSTANCE.setUxConfig(config);
    }

    public final void resume() {
        startReaderBatteryPolling();
        startOfflineSession();
        resumeNetworkHealthChecks();
    }

    public final void pause() {
        pauseReaderBatteryPolling();
        pauseNetworkHealthChecks();
    }

    public final void destroy() {
        endReaderBatteryPolling();
        stopOfflineSession("Destroy terminal called.");
    }

    public static /* synthetic */ Object killAidlServer$default(TerminalSession terminalSession, long j, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        return terminalSession.killAidlServer(j, continuation);
    }

    public final Object killAidlServer(long j, Continuation<? super Unit> continuation) {
        Object objKillAidlServer = this.adapter.killAidlServer(j, continuation);
        return objKillAidlServer == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objKillAidlServer : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void enqueueReaderBatteryInfoPollingOperation() {
        enqueueOperation(new ReaderBatteryInfoPollingOperation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startReaderBatteryPolling() {
        Reader connectedReader = getConnectedReader();
        if ((connectedReader != null ? connectedReader.getBluetoothDevice() : null) == null) {
            Reader connectedReader2 = getConnectedReader();
            if ((connectedReader2 != null ? connectedReader2.getUsbDevice() : null) == null) {
                return;
            }
        }
        this.readerBatteryInfoPoller.startPolling(new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.startReaderBatteryPolling.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TerminalSession.this.enqueueReaderBatteryInfoPollingOperation();
            }
        });
    }

    public final void startOfflineSession() {
        this.offlineSessionManager.startForwardingOfflinePayments();
        this.offlineDatabaseReaper.start();
    }

    public final void stopOfflineSession(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        OfflineSessionManager offlineSessionManager = this.offlineSessionManager;
        offlineSessionManager.stopForwardingOfflinePayments(reason);
        offlineSessionManager.cancelPendingActivations(reason);
    }

    public final void resumeNetworkHealthChecks() {
        this.stripeConnectivityRepository.resumeNetworkHealthChecks();
    }

    public final void pauseNetworkHealthChecks() {
        this.stripeConnectivityRepository.pauseNetworkHealthChecks();
    }

    private final void pauseReaderBatteryPolling() {
        Reader connectedReader = getConnectedReader();
        if ((connectedReader != null ? connectedReader.getBluetoothDevice() : null) == null) {
            Reader connectedReader2 = getConnectedReader();
            if ((connectedReader2 != null ? connectedReader2.getUsbDevice() : null) == null) {
                return;
            }
        }
        this.readerBatteryInfoPoller.pausePolling();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void endReaderBatteryPolling() {
        Reader connectedReader = getConnectedReader();
        if ((connectedReader != null ? connectedReader.getBluetoothDevice() : null) == null) {
            Reader connectedReader2 = getConnectedReader();
            if ((connectedReader2 != null ? connectedReader2.getUsbDevice() : null) == null) {
                return;
            }
        }
        this.readerBatteryInfoPoller.endPolling();
    }

    public final void reset() {
        this.previousRefundParams = null;
        this.operationInProgress = new NullOperation();
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$runSuspendingApiRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$runSuspendingApiRequest$1", f = "TerminalSession.kt", i = {}, l = {1015}, m = "invokeSuspend", n = {}, s = {})
    public static final class C04711 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super Unit>, Object> $block;
        final /* synthetic */ ErrorCallback $callback;
        final /* synthetic */ String $errorMessage;
        int label;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04711(Function1<? super Continuation<? super Unit>, ? extends Object> function1, ErrorCallback errorCallback, TerminalSession terminalSession, String str, Continuation<? super C04711> continuation) {
            super(2, continuation);
            this.$block = function1;
            this.$callback = errorCallback;
            this.this$0 = terminalSession;
            this.$errorMessage = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04711(this.$block, this.$callback, this.this$0, this.$errorMessage, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04711) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function1<Continuation<? super Unit>, Object> function1 = this.$block;
                    this.label = 1;
                    if (function1.invoke(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (TerminalException e) {
                this.$callback.onFailure(e);
            } catch (Throwable th) {
                this.this$0.logger.e(this.$errorMessage, th, new Pair[0]);
                this.$callback.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, this.$errorMessage, th, null, 8, null));
                if (th instanceof CancellationException) {
                    throw th;
                }
            }
            return Unit.INSTANCE;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            try {
                this.$block.invoke(this);
            } catch (TerminalException e) {
                this.$callback.onFailure(e);
            } catch (Throwable th) {
                this.this$0.logger.e(this.$errorMessage, th, new Pair[0]);
                this.$callback.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, this.$errorMessage, th, null, 8, null));
                if (th instanceof CancellationException) {
                    throw th;
                }
            }
            return Unit.INSTANCE;
        }
    }

    private final void runSuspendingApiRequest(ErrorCallback callback, String errorMessage, Function1<? super Continuation<? super Unit>, ? extends Object> block) {
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new C04711(block, callback, this, errorMessage, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void enqueueOperation(final Operation operation) {
        this.logger.i("enqueueOperation", TuplesKt.to("operation", Reflection.getOrCreateKotlinClass(operation.getClass()).getSimpleName()));
        this.executorService.submit(new Runnable() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TerminalSession.enqueueOperation$lambda$6(this.f$0, operation);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enqueueOperation$lambda$6(TerminalSession this$0, Operation operation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        Operation operation2 = this$0.operationInProgress;
        if (operation2 instanceof InternalOperation) {
            Intrinsics.checkNotNull(operation2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.InternalOperation");
            ((InternalOperation) operation2).cancel();
        } else {
            this$0.logger.i("enqueueOperation - Operation in progress when attempting to start a new operation", TuplesKt.to("operationInProgress", Reflection.getOrCreateKotlinClass(operation2.getClass()).getSimpleName()), TuplesKt.to("operation", Reflection.getOrCreateKotlinClass(operation.getClass()).getSimpleName()));
            this$0.operationInProgress.onFailure$terminalsession_release(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Operation in progress wasn't completed before starting new operation", null, null, 12, null));
        }
        this$0.operationInProgress = operation;
        try {
            operation.run$terminalsession_release();
        } catch (Throwable th) {
            this$0.logger.e(th);
            this$0.errorReporter.mo498blockingReportErrorgIAlus(th, true);
            this$0.operationInProgress.onFailure$terminalsession_release(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected failure", th, null, 8, null));
        }
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$emergencyDisconnectReader$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class C04691 extends FunctionReferenceImpl implements Function0<Unit> {
        C04691(Object obj) {
            super(0, obj, TerminalStatusManager.class, "notConnected", "notConnected()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((TerminalStatusManager) this.receiver).notConnected();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void emergencyDisconnectReader$default(TerminalSession terminalSession, DisconnectReason disconnectReason, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = new C04691(terminalSession.statusManager);
        }
        terminalSession.emergencyDisconnectReader(disconnectReason, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void emergencyDisconnectReader(DisconnectReason disconnectReason, Function0<Unit> doFinally) {
        try {
            try {
                this.adapter.disconnectReader(disconnectReason);
                doFinally.invoke();
            } catch (TerminalException e) {
                Logger.w$default(this.logger, e, null, new Pair[0], 2, null);
                doFinally.invoke();
            }
        } catch (Throwable th) {
            doFinally.invoke();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void emergencyRebootReader() {
        try {
            Reader connectedReader = this.statusManager.getConnectedReader();
            if (connectedReader == null) {
                throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "No connected reader on rebootReader call", null, null, 12, null);
            }
            Adapter adapter = this.adapter;
            ReaderInfo readerInfo = adapter.getReaderInfo(connectedReader);
            if (readerInfo != null) {
                this.logger.i("Reader info after missing keys: " + readerInfo, new Pair[0]);
            }
            adapter.rebootReader(connectedReader);
        } catch (TerminalException e) {
            Logger.w$default(this.logger, e, null, new Pair[0], 2, null);
        }
    }

    public final void enqueueActivateOp$terminalsession_release(Reader reader, ConnectionConfiguration config) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(config, "config");
        enqueueOperation(new ActivateReaderBackgroundOperation(this, reader, config));
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0010¢\u0006\u0002\b\u0010J\r\u0010\u0011\u001a\u00020\rH\u0010¢\u0006\u0002\b\u0012J\r\u0010\u0013\u001a\u00020\rH\u0010¢\u0006\u0002\b\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;", "", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V", "completed", "", "getCompleted", "()Z", "setCompleted", "(Z)V", "started", "getStarted", "setStarted", "onFailure", "", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "onSuccess$terminalsession_release", "run", "run$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public abstract class Operation {
        private boolean completed;
        private boolean started;

        public Operation() {
        }

        public final boolean getStarted() {
            return this.started;
        }

        public final void setStarted(boolean z) {
            this.started = z;
        }

        public final boolean getCompleted() {
            return this.completed;
        }

        public final void setCompleted(boolean z) {
            this.completed = z;
        }

        public void run$terminalsession_release() {
            this.started = true;
        }

        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            TerminalSession.this.logger.e(e);
            TerminalSession.this.operationInProgress = TerminalSession.this.new NullOperation();
        }

        public void onSuccess$terminalsession_release() {
            this.completed = true;
            TerminalSession terminalSession = TerminalSession.this;
            Operation operation = terminalSession.operationInProgress;
            CollectRefundPaymentMethodOperation collectRefundPaymentMethodOperation = operation instanceof CollectRefundPaymentMethodOperation ? (CollectRefundPaymentMethodOperation) operation : null;
            terminalSession.previousRefundParams = collectRefundPaymentMethodOperation != null ? collectRefundPaymentMethodOperation.getRefundParams() : null;
            TerminalSession.this.operationInProgress = TerminalSession.this.new NullOperation();
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0090\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V", "cancel", "", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public class InternalOperation extends Operation {
        public void cancel() {
        }

        public InternalOperation() {
            super();
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0010¢\u0006\u0002\b\bJ\r\u0010\t\u001a\u00020\u0005H\u0010¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReaderBatteryInfoPollingOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V", "onFailure", "", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "run", "run$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class ReaderBatteryInfoPollingOperation extends InternalOperation {
        public ReaderBatteryInfoPollingOperation() {
            super();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void run$terminalsession_release() {
            if (TerminalSession.this.statusManager.getPaymentStatus() == PaymentStatus.READY) {
                try {
                    Adapter adapter = TerminalSession.this.adapter;
                    final TerminalSession terminalSession = TerminalSession.this;
                    TerminalSession.this.statusManager.reportReaderBatteryInfo(adapter.requestReaderBatteryInfo(new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$ReaderBatteryInfoPollingOperation$run$readerBatteryInfo$1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            terminalSession.endReaderBatteryPolling();
                        }
                    }));
                    onSuccess$terminalsession_release();
                    return;
                } catch (TerminalException e) {
                    onFailure$terminalsession_release(e);
                    return;
                }
            }
            TerminalSession.this.enqueueReaderBatteryInfoPollingOperation();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            TerminalSession.this.logger.e("ReaderBatteryInfoPollingOperation onFailure", e, new Pair[0]);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b \u0004\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00060\u0003R\u00020\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH&J\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0010¢\u0006\u0002\b\u0012J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0010¢\u0006\u0002\b\u0016J\r\u0010\u0017\u001a\u00020\u000eH\u0010¢\u0006\u0002\b\u0018J\b\u0010\u0019\u001a\u00020\u001aH&R\u0013\u0010\u0005\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "CallbackType", "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V", "getCallback", "()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;", "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;", "isCompleted", "", "()Z", "execute", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "response", "Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;", "onSuccess$terminalsession_release", "run", "run$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public abstract class ExternalOperation<CallbackType extends ErrorCallback> extends Operation {
        private final CallbackType callback;
        final /* synthetic */ TerminalSession this$0;

        public abstract void execute();

        public abstract SdkRequest sdkRequest();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ExternalOperation(TerminalSession terminalSession, CallbackType callback) {
            super();
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.callback = callback;
        }

        public final CallbackType getCallback() {
            return this.callback;
        }

        public final boolean isCompleted() {
            return getCompleted();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            DisconnectReason disconnectReason;
            Reader connectedReader;
            DeviceType deviceType;
            Intrinsics.checkNotNullParameter(e, "e");
            super.onFailure$terminalsession_release(e);
            if (SetsKt.setOf((Object[]) new TerminalErrorCode[]{TerminalErrorCode.SESSION_EXPIRED, TerminalErrorCode.READER_BATTERY_CRITICALLY_LOW, TerminalErrorCode.READER_MISSING_ENCRYPTION_KEYS}).contains(e.getErrorCode())) {
                if (e.getErrorCode() == TerminalErrorCode.READER_MISSING_ENCRYPTION_KEYS && (connectedReader = this.this$0.getConnectedReader()) != null && (deviceType = connectedReader.getDeviceType()) != null && DeviceTypeExtensions.INSTANCE.isMposDevice(deviceType)) {
                    this.this$0.logger.d("Rebooting reader due to missing keys error.", new Pair[0]);
                    this.this$0.emergencyRebootReader();
                } else {
                    if (e.getErrorCode() == TerminalErrorCode.READER_BATTERY_CRITICALLY_LOW) {
                        disconnectReason = DisconnectReason.CRITICALLY_LOW_BATTERY;
                    } else {
                        disconnectReason = DisconnectReason.UNKNOWN;
                    }
                    TerminalSession.emergencyDisconnectReader$default(this.this$0, disconnectReason, null, 2, null);
                    this.this$0.sessionTokenRepository.clear();
                }
            }
            this.this$0.logger.endOperation(SdkResponse.INSTANCE.failure(e), TerminalSession.IDENTIFIER);
            this.callback.onFailure(e);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void run$terminalsession_release() {
            super.run$terminalsession_release();
            this.this$0.logger.startOperation(sdkRequest(), TerminalSession.IDENTIFIER);
            try {
                execute();
            } catch (TerminalException e) {
                onFailure$terminalsession_release(e);
            }
        }

        public void onSuccess$terminalsession_release(SdkResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            super.onSuccess$terminalsession_release();
            this.this$0.logger.endOperation(response, TerminalSession.IDENTIFIER);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0004\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\f\u0012\u0004\u0012\u0002H\u00010\u0003R\u00020\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0002\u0010\u0006J\b\u0010\u0017\u001a\u00020\bH\u0004J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0019H&J\u000e\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u0019J\u0015\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0010¢\u0006\u0002\b\"J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\bH\u0004J\u0015\u0010%\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0010H\u0010¢\u0006\u0002\b&R\u0014\u0010\u0007\u001a\u00020\bX\u0094D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\n\"\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u0012X\u0094D¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "CallbackType", "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V", "allowCompleteCancellation", "", "getAllowCompleteCancellation", "()Z", "canceled", "getCanceled", "setCanceled", "(Z)V", "cancellationCallback", "Lcom/stripe/stripeterminal/external/callable/Callback;", "cannotCurrentlyBeCanceledMessage", "", "getCannotCurrentlyBeCanceledMessage", "()Ljava/lang/String;", "currentlyCancelable", "Ljava/util/concurrent/atomic/AtomicBoolean;", "canCurrentlyBeCancelled", "execute", "", "executeIfNotCanceled", "onCancelFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onCancelSuccess", "onSuccess", "response", "Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;", "onSuccess$terminalsession_release", "setIsCurrentlyCancelable", "isCancelable", "startCancel", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public abstract class CancelableOperation<CallbackType extends ErrorCallback> extends ExternalOperation<CallbackType> {
        private final boolean allowCompleteCancellation;
        private boolean canceled;
        private com.stripe.stripeterminal.external.callable.Callback cancellationCallback;
        private final String cannotCurrentlyBeCanceledMessage;
        private final AtomicBoolean currentlyCancelable;
        final /* synthetic */ TerminalSession this$0;

        public abstract void executeIfNotCanceled();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CancelableOperation(TerminalSession terminalSession, CallbackType callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.currentlyCancelable = new AtomicBoolean(true);
            this.cannotCurrentlyBeCanceledMessage = "Operation cannot currently be canceled";
        }

        protected String getCannotCurrentlyBeCanceledMessage() {
            return this.cannotCurrentlyBeCanceledMessage;
        }

        public final boolean getCanceled() {
            return this.canceled;
        }

        public final void setCanceled(boolean z) {
            this.canceled = z;
        }

        protected boolean getAllowCompleteCancellation() {
            return this.allowCompleteCancellation;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() {
            if (this.canceled) {
                this.this$0.logger.endOperation(SdkResponse.INSTANCE.canceled(), TerminalSession.IDENTIFIER);
            } else {
                executeIfNotCanceled();
            }
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void onSuccess$terminalsession_release(SdkResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            super.onSuccess$terminalsession_release(response);
            onCancelFailure(new TerminalException(TerminalErrorCode.CANCEL_FAILED, "Operation completed before it could be canceled", null, null, 12, null));
        }

        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.cancellationCallback = callback;
            if (!getStarted()) {
                this.canceled = true;
                com.stripe.stripeterminal.external.callable.Callback callback2 = this.cancellationCallback;
                if (callback2 != null) {
                    callback2.onSuccess();
                }
                this.cancellationCallback = null;
                return;
            }
            if (getCompleted() && !getAllowCompleteCancellation()) {
                onCancelFailure(new TerminalException(TerminalErrorCode.CANCEL_FAILED, "Operation completed before it could be canceled", null, null, 12, null));
            } else {
                if (canCurrentlyBeCancelled()) {
                    return;
                }
                onCancelFailure(new TerminalException(TerminalErrorCode.CANCEL_FAILED, getCannotCurrentlyBeCanceledMessage(), null, null, 12, null));
            }
        }

        public final void onCancelSuccess() {
            this.this$0.operationInProgress = this.this$0.new NullOperation();
            com.stripe.stripeterminal.external.callable.Callback callback = this.cancellationCallback;
            if (callback != null) {
                callback.onSuccess();
            }
            this.cancellationCallback = null;
        }

        public final void onCancelFailure(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            com.stripe.stripeterminal.external.callable.Callback callback = this.cancellationCallback;
            if (callback != null) {
                callback.onFailure(e);
            }
            this.cancellationCallback = null;
        }

        protected final void setIsCurrentlyCancelable(boolean isCancelable) {
            this.currentlyCancelable.set(isCancelable);
            CancelableOperationContext cancelableOperationContext = this.this$0.transactionRepository.getCancelableOperationContext();
            if (cancelableOperationContext != null) {
                cancelableOperationContext.setCurrentlyCancelable(isCancelable);
            }
        }

        protected final boolean canCurrentlyBeCancelled() {
            return this.currentlyCancelable.get() || this.this$0.adapter.adapterType() == AdapterType.REMOTE;
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0005J\b\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelPaymentIntentOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V", "execute", "", "onSuccess", "canceledIntent", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CancelPaymentIntentOperation extends ExternalOperation<PaymentIntentCallback> {
        private final PaymentIntent intent;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CancelPaymentIntentOperation(TerminalSession terminalSession, PaymentIntent intent, PaymentIntentCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.intent = intent;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() {
            onSuccess(this.this$0.proxyResourceRepository.cancelPaymentIntent(this.intent));
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.cancelPaymentIntent(this.intent);
        }

        public final void onSuccess(PaymentIntent canceledIntent) {
            Intrinsics.checkNotNullParameter(canceledIntent, "canceledIntent");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(canceledIntent));
            getCallback().onSuccess(canceledIntent);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\r\u0010\b\u001a\u00020\u0007H\u0010¢\u0006\u0002\b\tJ\b\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ClearReaderDisplayOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/Callback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/Callback;)V", "execute", "", "onSuccess", "onSuccess$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class ClearReaderDisplayOperation extends ExternalOperation<com.stripe.stripeterminal.external.callable.Callback> {
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ClearReaderDisplayOperation(TerminalSession terminalSession, com.stripe.stripeterminal.external.callable.Callback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.clearReaderDisplay();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() throws TerminalException {
            this.this$0.adapter.clearReaderDisplay();
            onSuccess$terminalsession_release();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onSuccess$terminalsession_release() {
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            getCallback().onSuccess();
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u00032\u00020\u0004Bo\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0002¢\u0006\u0002\u0010\u0018J\b\u0010\u001d\u001a\u00020\u0016H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0016J\b\u0010\u001f\u001a\u00020\u0006H\u0002J\b\u0010 \u001a\u00020\bH\u0002J\b\u0010!\u001a\u00020\bH\u0002J\u0010\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u0006H\u0002J\u0015\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&H\u0010¢\u0006\u0002\b'J\u0010\u0010(\u001a\u00020\u00162\u0006\u0010)\u001a\u00020*H\u0002J\r\u0010+\u001a\u00020\u0016H\u0010¢\u0006\u0002\b,J\b\u0010-\u001a\u00020.H\u0016J\u0015\u0010/\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u000200H\u0010¢\u0006\u0002\b1R\u0014\u0010\u0019\u001a\u00020\bX\u0094D¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001cR\u000e\u0010\n\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "Lcom/stripe/cancelintent/CancelableIntentOperation;", "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "skipTipping", "", "manualEntry", "updatePaymentIntent", "tipEligibleAmount", "", "enableCustomerCancellation", "requestDynamicCurrencyConversion", "surchargeNotice", "", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "onApiErrorCallback", "Lkotlin/Function1;", "Lcom/stripe/stripeterminal/external/api/ApiError;", "", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;ZZZLjava/lang/Long;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lkotlin/jvm/functions/Function1;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V", "allowCompleteCancellation", "getAllowCompleteCancellation", "()Z", "Ljava/lang/Long;", "cancelIntent", "executeIfNotCanceled", "getUpdatedPaymentIntent", "isCollectionForOnlineOrOfflinePinSca", "isCollectionForSca", "maybePromptForDynamicCurrencyConversion", "paymentIntent", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onPaymentMethodCollected", "paymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "onSuccess", "onSuccess$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "Lcom/stripe/stripeterminal/external/callable/Callback;", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CollectPaymentMethodOperation extends CancelableOperation<PaymentIntentCallback> implements CancelableIntentOperation {
        private final boolean allowCompleteCancellation;
        private final AllowRedisplay allowRedisplay;
        private final boolean enableCustomerCancellation;
        private final PaymentIntent intent;
        private final boolean manualEntry;
        private final Function1<ApiError, Unit> onApiErrorCallback;
        private final boolean requestDynamicCurrencyConversion;
        private final boolean skipTipping;
        private final String surchargeNotice;
        final /* synthetic */ TerminalSession this$0;
        private final Long tipEligibleAmount;
        private final boolean updatePaymentIntent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public CollectPaymentMethodOperation(TerminalSession terminalSession, PaymentIntent intent, boolean z, boolean z2, boolean z3, Long l, boolean z4, boolean z5, String str, AllowRedisplay allowRedisplay, Function1<? super ApiError, Unit> onApiErrorCallback, PaymentIntentCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(onApiErrorCallback, "onApiErrorCallback");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.intent = intent;
            this.skipTipping = z;
            this.manualEntry = z2;
            this.updatePaymentIntent = z3;
            this.tipEligibleAmount = l;
            this.enableCustomerCancellation = z4;
            this.requestDynamicCurrencyConversion = z5;
            this.surchargeNotice = str;
            this.allowRedisplay = allowRedisplay;
            this.onApiErrorCallback = onApiErrorCallback;
            this.allowCompleteCancellation = true;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        protected boolean getAllowCompleteCancellation() {
            return this.allowCompleteCancellation;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() throws TerminalException {
            DeviceType deviceType;
            long amount;
            Amount amount2;
            String str;
            PaymentMethodCollectionType.Sale sale;
            CardPresentOptions cardPresent;
            CardPresentRoutingOptions routing;
            List<RoutingPriority> computedPriority;
            PaymentMethodCollectionType.StrongCustomerAuthentication.Requirement requirement;
            String setupFutureUsage;
            CardPresentOptions cardPresent2;
            Boolean requestIncrementalAuthorizationSupport;
            Object objM817constructorimpl;
            Amount amount3;
            Tip tip;
            Long amount4;
            this.this$0.transactionRepository.clearTipAmount();
            this.this$0.locationValidator.validateLocationServices();
            this.this$0.statusManager.waitForInput();
            this.this$0.updatePaymentIntentParamRepository.resetIfNewPaymentIntent(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent));
            this.this$0.collectPaymentMethodOperationValidator.validateParams(this.skipTipping, this.manualEntry, this.updatePaymentIntent, this.tipEligibleAmount, this.enableCustomerCancellation, this.requestDynamicCurrencyConversion, this.surchargeNotice);
            if (this.intent.getOfflineBehavior() != OfflineBehavior.REQUIRE_ONLINE && this.updatePaymentIntent && this.this$0.offlineConfigHelper.isOfflineModeEnabled()) {
                throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Updating PaymentIntents is not supported while offline mode is enabled.", null, null, 12, null);
            }
            Companion companion = TerminalSession.INSTANCE;
            boolean z = this.enableCustomerCancellation;
            Reader connectedReader = this.this$0.getConnectedReader();
            if (connectedReader == null || (deviceType = connectedReader.getDeviceType()) == null) {
                deviceType = DeviceType.UNKNOWN;
            }
            companion.checkCustomerCancellationFeature(z, deviceType);
            AmountDetails amountDetails = this.intent.getAmountDetails();
            if (amountDetails != null && (tip = amountDetails.getTip()) != null && (amount4 = tip.getAmount()) != null) {
                amount = this.intent.getAmount() - amount4.longValue();
            } else {
                amount = this.intent.getAmount();
            }
            if (amount <= 0) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Adjusted amount from recollecting after confirmation was less than or equal to 0", null, null, 12, null);
            }
            String currency = this.intent.getCurrency();
            if (currency == null) {
                currency = "";
            }
            Amount amount5 = new Amount(amount, currency);
            ReaderFeatureFlags featureFlags = this.this$0.featureFlagsRepository.getFeatureFlags();
            if (this.requestDynamicCurrencyConversion && !featureFlags.enable_dcc) {
                throw new TerminalException(TerminalErrorCode.FEATURE_NOT_ENABLED_ON_ACCOUNT, "Dynamic Currency Conversion is not enabled on this account. Contact Stripe support to enable this feature.", null, null, 12, null);
            }
            if (this.manualEntry && !featureFlags.enable_moto_transactions) {
                throw new TerminalException(TerminalErrorCode.FEATURE_NOT_ENABLED_ON_ACCOUNT, "MO/TO payments are not enabled on this account. Contact Stripe support to enable this feature.", null, null, 12, null);
            }
            String str2 = this.surchargeNotice;
            List<PaymentMethodOptions.RoutingPriority> protoPriorities = null;
            if (str2 != null && str2.length() != 0) {
                Companion companion2 = TerminalSession.INSTANCE;
                Reader connectedReader2 = this.this$0.getConnectedReader();
                companion2.checkSurchargingFeature(featureFlags, connectedReader2 != null ? connectedReader2.getDeviceType() : null);
            }
            if (this.allowRedisplay != null) {
                String setupFutureUsage2 = this.intent.getSetupFutureUsage();
                if (setupFutureUsage2 == null || StringsKt.isBlank(setupFutureUsage2) || this.allowRedisplay != AllowRedisplay.UNSPECIFIED) {
                    this.this$0.transactionRepository.setAllowRedisplay(this.allowRedisplay);
                } else {
                    throw new TerminalException(TerminalErrorCode.ALLOW_REDISPLAY_INVALID, "This command requires allow_redisplay to be set as always or limited when saving payment methods with Terminal.", null, null, 12, null);
                }
            }
            this.this$0.tipEligibleValidator.validateTipEligibleAmount(this.tipEligibleAmount, this.skipTipping, AmountExtensionsKt.getCurrencyCode(amount5));
            this.this$0.updatePaymentIntentParamRepository.setIfNewPaymentIntent(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this.updatePaymentIntent);
            Boolean boolValueOf = Boolean.valueOf(featureFlags.tip_eligible_amounts_circuit_breaker);
            if (boolValueOf.booleanValue()) {
                boolValueOf = null;
            }
            if (boolValueOf != null) {
                boolValueOf.booleanValue();
                Long l = this.tipEligibleAmount;
                if (l != null) {
                    long jLongValue = l.longValue();
                    String currency2 = this.intent.getCurrency();
                    amount3 = new Amount(jLongValue, currency2 != null ? currency2 : "");
                } else {
                    amount3 = null;
                }
                amount2 = amount3;
            } else {
                amount2 = null;
            }
            boolean z2 = OfflineAdapterKt.hasOfflineId(this.intent) || (this.this$0.offlineConfigHelper.isOfflineModeEnabled() && this.this$0.networkStatusProvider.get() == NetworkStatus.OFFLINE);
            boolean zIsDeferredAuthorizationCountry = this.this$0.offlineConfigHelper.isDeferredAuthorizationCountry();
            String strRequireOnlineOrOfflineId = OfflineAdapterKt.requireOnlineOrOfflineId(this.intent);
            List<PaymentMethodType> paymentMethodTypes = this.intent.getPaymentMethodTypes();
            List<String> list = this.this$0.settingsRepository.getLpmConfig().enabled_payment_method_types;
            TerminalSession terminalSession = this.this$0;
            ArrayList arrayList = new ArrayList();
            for (String str3 : list) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    CollectPaymentMethodOperation collectPaymentMethodOperation = this;
                    String upperCase = str3.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    objM817constructorimpl = Result.m817constructorimpl(PaymentMethodType.valueOf(upperCase));
                } catch (Throwable th) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
                if (thM820exceptionOrNullimpl != null) {
                    terminalSession.logger.w(thM820exceptionOrNullimpl, "Attempted to parse invalid LPMConfig Payment Method Type: " + thM820exceptionOrNullimpl, new Pair[0]);
                    objM817constructorimpl = null;
                }
                PaymentMethodType paymentMethodType = (PaymentMethodType) objM817constructorimpl;
                if (paymentMethodType != null) {
                    arrayList.add(paymentMethodType);
                }
            }
            List list2 = CollectionsKt.toList(CollectionsKt.intersect(paymentMethodTypes, CollectionsKt.toSet(arrayList)));
            com.stripe.stripeterminal.external.models.PaymentMethodOptions paymentMethodOptions = this.intent.getPaymentMethodOptions();
            boolean zBooleanValue = (paymentMethodOptions == null || (cardPresent2 = paymentMethodOptions.getCardPresent()) == null || (requestIncrementalAuthorizationSupport = cardPresent2.getRequestIncrementalAuthorizationSupport()) == null) ? false : requestIncrementalAuthorizationSupport.booleanValue();
            boolean z3 = featureFlags.enable_force_pin_entry_for_pi && !this.manualEntry && (!((setupFutureUsage = this.intent.getSetupFutureUsage()) == null || StringsKt.isBlank(setupFutureUsage)) || zBooleanValue);
            if (isCollectionForSca()) {
                if (isCollectionForOnlineOrOfflinePinSca()) {
                    requirement = PaymentMethodCollectionType.StrongCustomerAuthentication.Requirement.ONLINE_OR_OFFLINE_PIN;
                } else {
                    requirement = PaymentMethodCollectionType.StrongCustomerAuthentication.Requirement.GENERIC;
                }
                str = strRequireOnlineOrOfflineId;
                sale = new PaymentMethodCollectionType.StrongCustomerAuthentication(strRequireOnlineOrOfflineId, this.intent.getOfflineDetails(), this.this$0.determineAmountToDisplayForCollection(this.intent, amount5), requirement, this.enableCustomerCancellation);
            } else {
                str = strRequireOnlineOrOfflineId;
                String id = this.intent.getId();
                OfflineDetails offlineDetails = this.intent.getOfflineDetails();
                boolean z4 = this.skipTipping;
                boolean z5 = this.manualEntry;
                boolean z6 = this.updatePaymentIntent;
                com.stripe.stripeterminal.external.models.PaymentMethodOptions paymentMethodOptions2 = this.intent.getPaymentMethodOptions();
                if (paymentMethodOptions2 != null && (cardPresent = paymentMethodOptions2.getCardPresent()) != null && (routing = cardPresent.getRouting()) != null && (computedPriority = routing.getComputedPriority()) != null) {
                    protoPriorities = ProtoConverter.INSTANCE.toProtoPriorities(computedPriority);
                }
                List<PaymentMethodOptions.RoutingPriority> list3 = protoPriorities;
                String stripeAccountId = this.intent.getStripeAccountId();
                boolean z7 = this.enableCustomerCancellation;
                com.stripe.proto.model.rest.PaymentIntent protoPaymentIntent = ProtoConverter.INSTANCE.toProtoPaymentIntent(this.intent);
                boolean z8 = this.requestDynamicCurrencyConversion;
                OfflineBehavior offlineBehavior = this.intent.getOfflineBehavior();
                String str4 = this.surchargeNotice;
                ArrayList arrayList2 = new ArrayList();
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    Iterator it2 = it;
                    boolean z9 = z7;
                    PaymentMethodType paymentMethodTypeFromTypeName = PaymentMethodType.INSTANCE.fromTypeName(((PaymentMethodType) it.next()).getTypeName());
                    if (paymentMethodTypeFromTypeName != null) {
                        arrayList2.add(paymentMethodTypeFromTypeName);
                    }
                    it = it2;
                    z7 = z9;
                }
                sale = new PaymentMethodCollectionType.Sale(id, amount5, z4, z5, z2, zIsDeferredAuthorizationCountry, z6, amount2, list3, stripeAccountId, offlineDetails, z8, z7, protoPaymentIntent, offlineBehavior, str4, arrayList2, zBooleanValue, z3, this.allowRedisplay);
            }
            PaymentMethodData paymentMethodDataCollectPaymentMethod = this.this$0.adapter.collectPaymentMethod(sale);
            this.intent.setCollectedOffline(z2);
            this.this$0.transactionRepository.setPaymentIntentId(str, this.intent.getStripeAccountId());
            onPaymentMethodCollected(paymentMethodDataCollectPaymentMethod);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.collectPaymentMethod(this.intent, this.updatePaymentIntent);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            try {
                this.this$0.proxyResourceRepository.cancelPaymentIntentActionRequired();
            } catch (UnsupportedOperationException unused) {
            }
            this.this$0.adapter.cancelCollectPaymentMethod();
            this.this$0.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
            this.this$0.statusManager.endPaymentFlow();
            this.this$0.updatePaymentIntentParamRepository.forceReset();
            onCancelSuccess();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onSuccess$terminalsession_release() {
            this.this$0.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
            super.onSuccess$terminalsession_release();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.this$0.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
            this.this$0.statusManager.endPaymentFlow();
            super.onFailure$terminalsession_release(e);
        }

        private final void onPaymentMethodCollected(PaymentMethodData paymentMethodData) throws TerminalException {
            this.intent.setPaymentMethodData(paymentMethodData);
            try {
                PaymentIntent updatedPaymentIntent = getUpdatedPaymentIntent();
                maybePromptForDynamicCurrencyConversion(updatedPaymentIntent);
                onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(updatedPaymentIntent));
                ((PaymentIntentCallback) getCallback()).onSuccess(updatedPaymentIntent);
            } catch (TerminalException e) {
                ApiError apiError = e.getApiError();
                if (apiError != null) {
                    this.onApiErrorCallback.invoke(apiError);
                }
                throw e;
            }
        }

        private final void maybePromptForDynamicCurrencyConversion(PaymentIntent paymentIntent) {
            CardPresentOptions cardPresent;
            DynamicCurrencyConversionOptions dynamicCurrencyConversion;
            CardPresentOptions cardPresent2;
            Boolean requestExtendedAuthorization;
            CardPresentOptions cardPresent3;
            Boolean requestIncrementalAuthorizationSupport;
            Location location;
            Address address;
            CardPresentDetails cardPresentDetails;
            com.stripe.stripeterminal.external.models.PaymentMethodOptions paymentMethodOptions = paymentIntent.getPaymentMethodOptions();
            if (paymentMethodOptions == null || (cardPresent = paymentMethodOptions.getCardPresent()) == null || (dynamicCurrencyConversion = cardPresent.getDynamicCurrencyConversion()) == null) {
                return;
            }
            TerminalSession terminalSession = this.this$0;
            CountryCode.Companion companion = CountryCode.INSTANCE;
            PaymentMethod paymentMethod = paymentIntent.getPaymentMethod();
            String country = null;
            CountryCode byCode = companion.getByCode((paymentMethod == null || (cardPresentDetails = paymentMethod.getCardPresentDetails()) == null) ? null : cardPresentDetails.getCountry());
            CountryCode.Companion companion2 = CountryCode.INSTANCE;
            Reader connectedReader = terminalSession.getConnectedReader();
            if (connectedReader != null && (location = connectedReader.getLocation()) != null && (address = location.getAddress()) != null) {
                country = address.getCountry();
            }
            CountryCode byCode2 = companion2.getByCode(country);
            Amount amount = new Amount(dynamicCurrencyConversion.getAmount(), dynamicCurrencyConversion.getCurrency());
            float transactionFxRate = dynamicCurrencyConversion.getTransactionFxRate();
            float transactionMarkupPercent = dynamicCurrencyConversion.getTransactionMarkupPercent();
            float cardholderRate = dynamicCurrencyConversion.getCardholderRate();
            Float referenceFxRate = dynamicCurrencyConversion.getReferenceFxRate();
            Float referenceMarkupPercent = dynamicCurrencyConversion.getReferenceMarkupPercent();
            float fxAsOf = dynamicCurrencyConversion.getFxAsOf();
            String setupFutureUsage = paymentIntent.getSetupFutureUsage();
            boolean zBooleanValue = false;
            boolean z = !(setupFutureUsage == null || StringsKt.isBlank(setupFutureUsage));
            com.stripe.stripeterminal.external.models.PaymentMethodOptions paymentMethodOptions2 = paymentIntent.getPaymentMethodOptions();
            boolean zBooleanValue2 = (paymentMethodOptions2 == null || (cardPresent3 = paymentMethodOptions2.getCardPresent()) == null || (requestIncrementalAuthorizationSupport = cardPresent3.getRequestIncrementalAuthorizationSupport()) == null) ? false : requestIncrementalAuthorizationSupport.booleanValue();
            com.stripe.stripeterminal.external.models.PaymentMethodOptions paymentMethodOptions3 = paymentIntent.getPaymentMethodOptions();
            if (paymentMethodOptions3 != null && (cardPresent2 = paymentMethodOptions3.getCardPresent()) != null && (requestExtendedAuthorization = cardPresent2.getRequestExtendedAuthorization()) != null) {
                zBooleanValue = requestExtendedAuthorization.booleanValue();
            }
            DynamicCurrencyConversionData dynamicCurrencyConversionData = new DynamicCurrencyConversionData(amount, transactionFxRate, transactionMarkupPercent, cardholderRate, referenceFxRate, referenceMarkupPercent, fxAsOf, z, zBooleanValue2, zBooleanValue, byCode2, byCode);
            if (terminalSession.transactionRepository.getDynamicCurrencyConversionOfferPresented()) {
                return;
            }
            terminalSession.transactionRepository.setDynamicCurrencyConversionOfferPresented(true);
            terminalSession.adapter.selectDynamicCurrencyConversion(dynamicCurrencyConversionData);
        }

        private final PaymentIntent getUpdatedPaymentIntent() {
            PaymentIntent paymentIntentUpdatePaymentIntent;
            if (this.updatePaymentIntent) {
                paymentIntentUpdatePaymentIntent = this.this$0.adapter.updatePaymentIntent(this.intent, this.this$0.transactionRepository.getCollectiblePayment(), this.requestDynamicCurrencyConversion, this.this$0.paymentIntentUpdater);
            } else {
                paymentIntentUpdatePaymentIntent = this.intent;
            }
            return PaymentIntentExtensionsKt.copyWithVars$default(paymentIntentUpdatePaymentIntent, null, 0L, 0L, 0L, null, 0L, 0L, null, null, null, null, 0L, null, null, null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, this.intent.getStripeAccountId(), this.intent.getOfflineBehavior(), null, false, this.intent.getPaymentMethodData(), LockFreeTaskQueueCore.MAX_CAPACITY_MASK, 3, null);
        }

        private final boolean isCollectionForOnlineOrOfflinePinSca() {
            ChargeAttempt chargeAttempt = this.this$0.chargeAttemptManager.getChargeAttempt();
            if (!(chargeAttempt instanceof ChargeAttempt.ExtendedAttempt)) {
                return false;
            }
            ChargeAttempt.ExtendedAttempt extendedAttempt = (ChargeAttempt.ExtendedAttempt) chargeAttempt;
            return Intrinsics.areEqual(extendedAttempt.getId(), this.intent.getId()) && extendedAttempt.getRequirement() == ChargeAttempt.ExtendedAttempt.Requirement.ONLINE_OR_OFFLINE_PIN_REQUIRED;
        }

        private final boolean isCollectionForSca() {
            ChargeAttempt chargeAttempt = this.this$0.chargeAttemptManager.getChargeAttempt();
            return (chargeAttempt instanceof ChargeAttempt.ExtendedAttempt) && Intrinsics.areEqual(((ChargeAttempt.ExtendedAttempt) chargeAttempt).getId(), this.intent.getId());
        }

        @Override // com.stripe.cancelintent.CancelableIntentOperation
        public void cancelIntent() {
            if (getCompleted()) {
                return;
            }
            startCancel$terminalsession_release(this.this$0.createLogCancelCallback("cancelPaymentIntent", "collectPaymentMethod", OfflineAdapterKt.requireOnlineOrOfflineId(this.intent)));
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0002\u0010\tJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0010¢\u0006\u0002\b\u0013J\r\u0010\u0014\u001a\u00020\u000fH\u0010¢\u0006\u0002\b\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0015\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u0002H\u0010¢\u0006\u0002\b\u0019R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/Callback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "config", "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;)V", "getConfig", "()Lcom/stripe/stripeterminal/external/models/RefundConfiguration;", "getRefundParams", "()Lcom/stripe/stripeterminal/external/models/RefundParameters;", "executeIfNotCanceled", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "onSuccess$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CollectRefundPaymentMethodOperation extends CancelableOperation<com.stripe.stripeterminal.external.callable.Callback> {
        private final RefundConfiguration config;
        private final RefundParameters refundParams;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CollectRefundPaymentMethodOperation(TerminalSession terminalSession, RefundParameters refundParams, RefundConfiguration config, com.stripe.stripeterminal.external.callable.Callback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(refundParams, "refundParams");
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.refundParams = refundParams;
            this.config = config;
        }

        public final RefundParameters getRefundParams() {
            return this.refundParams;
        }

        public final RefundConfiguration getConfig() {
            return this.config;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() throws TerminalException {
            DeviceType deviceType;
            Companion companion = TerminalSession.INSTANCE;
            boolean enableCustomerCancellation = this.config.getEnableCustomerCancellation();
            Reader connectedReader = this.this$0.getConnectedReader();
            if (connectedReader == null || (deviceType = connectedReader.getDeviceType()) == null) {
                deviceType = DeviceType.UNKNOWN;
            }
            companion.checkCustomerCancellationFeature(enableCustomerCancellation, deviceType);
            this.this$0.locationValidator.validateLocationServices();
            this.this$0.statusManager.waitForInput();
            this.this$0.adapter.collectPaymentMethod(new PaymentMethodCollectionType.Refund(new Amount(this.refundParams.getAmount(), this.refundParams.getCurrency()), this.refundParams.getChargeId(), this.refundParams.getPaymentIntentId(), this.config.getEnableCustomerCancellation()));
            onSuccess$terminalsession_release();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.collectRefundPaymentMethod(this.refundParams);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            this.this$0.adapter.cancelCollectPaymentMethod();
            this.this$0.statusManager.endPaymentFlow();
            onCancelSuccess();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.this$0.statusManager.endPaymentFlow();
            super.onFailure$terminalsession_release(e);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onSuccess$terminalsession_release() {
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            ((com.stripe.stripeterminal.external.callable.Callback) getCallback()).onSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.stripe.stripeterminal.external.callable.Callback createLogCancelCallback(String cancelIntentMethodName, String operationName, String intentId) {
        this.logger.i(cancelIntentMethodName + " was invoked. Attempting to cancel ongoing " + operationName + " for: " + intentId, new Pair[0]);
        return new com.stripe.stripeterminal.external.callable.Callback() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.createLogCancelCallback.1
            @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
            public void onFailure(TerminalException e) {
                Intrinsics.checkNotNullParameter(e, "e");
            }

            @Override // com.stripe.stripeterminal.external.callable.Callback
            public void onSuccess() {
            }
        };
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u00032\u00020\u0004B7\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0002\u0010\u000eJ\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\b\u0010\u0012\u001a\u00020\bH\u0002J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0010¢\u0006\u0002\b\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0015\u0010\u001c\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u001dH\u0010¢\u0006\u0002\b\u001eR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "Lcom/stripe/cancelintent/CancelableIntentOperation;", "intent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "customerConsentCollected", "", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "manualEntry", "enableCustomerCancellation", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;ZZLcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V", "cancelIntent", "", "executeIfNotCanceled", "isCollectionForSca", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "paymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "Lcom/stripe/stripeterminal/external/callable/Callback;", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CollectSetupIntentPaymentMethodOperation extends CancelableOperation<SetupIntentCallback> implements CancelableIntentOperation {
        private final AllowRedisplay allowRedisplay;
        private final boolean customerConsentCollected;
        private final boolean enableCustomerCancellation;
        private final SetupIntent intent;
        private final boolean manualEntry;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CollectSetupIntentPaymentMethodOperation(TerminalSession terminalSession, SetupIntent intent, boolean z, AllowRedisplay allowRedisplay, boolean z2, boolean z3, SetupIntentCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.intent = intent;
            this.customerConsentCollected = z;
            this.allowRedisplay = allowRedisplay;
            this.manualEntry = z2;
            this.enableCustomerCancellation = z3;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() throws TerminalException {
            DeviceType deviceType;
            PaymentMethodCollectionType.SetupIntent setupIntent;
            if (!this.customerConsentCollected) {
                throw new TerminalException(TerminalErrorCode.CUSTOMER_CONSENT_REQUIRED, "This command requires cardholder consent to be collected before it can take place", null, null, 12, null);
            }
            AllowRedisplay allowRedisplay = this.allowRedisplay;
            if (allowRedisplay != null) {
                if (allowRedisplay != AllowRedisplay.UNSPECIFIED) {
                    this.this$0.transactionRepository.setAllowRedisplay(this.allowRedisplay);
                } else {
                    throw new TerminalException(TerminalErrorCode.ALLOW_REDISPLAY_INVALID, "This command requires allow_redisplay to be set as always or limited when saving payment methods with Terminal.", null, null, 12, null);
                }
            }
            Companion companion = TerminalSession.INSTANCE;
            boolean z = this.enableCustomerCancellation;
            Reader connectedReader = this.this$0.getConnectedReader();
            if (connectedReader == null || (deviceType = connectedReader.getDeviceType()) == null) {
                deviceType = DeviceType.UNKNOWN;
            }
            companion.checkCustomerCancellationFeature(z, deviceType);
            this.this$0.locationValidator.validateLocationServices();
            this.this$0.statusManager.waitForInput();
            ReaderFeatureFlags featureFlags = this.this$0.featureFlagsRepository.getFeatureFlags();
            if (this.manualEntry && !featureFlags.enable_moto_transactions) {
                throw new TerminalException(TerminalErrorCode.FEATURE_NOT_ENABLED_ON_ACCOUNT, "MO/TO payments are not enabled on this account. Contact Stripe support to enable this feature.", null, null, 12, null);
            }
            SetupIntentOfflineDetails offlineDetails = this.intent.getOfflineDetails();
            String id = offlineDetails != null ? offlineDetails.getId() : null;
            boolean z2 = !(id == null || id.length() == 0) || (this.this$0.offlineConfigHelper.isOfflineModeEnabled() && this.this$0.networkStatusProvider.get() == NetworkStatus.OFFLINE);
            boolean zIsDeferredAuthorizationCountry = this.this$0.offlineConfigHelper.isDeferredAuthorizationCountry();
            boolean z3 = featureFlags.enable_force_pin_entry_for_si && !this.manualEntry;
            String strRequireOnlineOrOfflineId = OfflineAdapterKt.requireOnlineOrOfflineId(this.intent);
            Adapter adapter = this.this$0.adapter;
            if (isCollectionForSca()) {
                setupIntent = new PaymentMethodCollectionType.StrongCustomerAuthentication(strRequireOnlineOrOfflineId, null, new Amount(0L, CurrencyCode.USD), PaymentMethodCollectionType.StrongCustomerAuthentication.Requirement.GENERIC, this.enableCustomerCancellation);
            } else {
                setupIntent = new PaymentMethodCollectionType.SetupIntent(strRequireOnlineOrOfflineId, this.manualEntry, this.enableCustomerCancellation, z2, zIsDeferredAuthorizationCountry, this.intent.getOfflineDetails(), this.intent.getOfflineBehavior(), ProtoConverter.INSTANCE.toProtoSetupIntent(this.intent), z3, this.allowRedisplay);
            }
            PaymentMethodData paymentMethodDataCollectPaymentMethod = adapter.collectPaymentMethod(setupIntent);
            this.intent.setCollectedOffline(z2);
            onSuccess(paymentMethodDataCollectPaymentMethod);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.collectSetupIntentPaymentMethod(this.intent);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            if (getCompleted()) {
                return;
            }
            this.this$0.adapter.cancelCollectPaymentMethod();
            this.this$0.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
            this.this$0.statusManager.endPaymentFlow();
            onCancelSuccess();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.this$0.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
            this.this$0.statusManager.endPaymentFlow();
            super.onFailure$terminalsession_release(e);
        }

        private final void onSuccess(PaymentMethodData paymentMethodData) {
            onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(this.intent));
            this.intent.setPaymentMethodData(paymentMethodData);
            ((SetupIntentCallback) getCallback()).onSuccess(this.intent);
        }

        private final boolean isCollectionForSca() {
            ChargeAttempt chargeAttempt = this.this$0.chargeAttemptManager.getChargeAttempt();
            return (chargeAttempt instanceof ChargeAttempt.ExtendedAttempt) && Intrinsics.areEqual(((ChargeAttempt.ExtendedAttempt) chargeAttempt).getId(), this.intent.getId());
        }

        @Override // com.stripe.cancelintent.CancelableIntentOperation
        public void cancelIntent() {
            if (getCompleted()) {
                return;
            }
            startCancel$terminalsession_release(this.this$0.createLogCancelCallback("cancelSetupIntent", "collectSetupIntent", OfflineAdapterKt.requireOnlineOrOfflineId(this.intent)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void enqueueReconnectReaderOperation(DisconnectReason disconnectReason) {
        Unit unit;
        com.stripe.stripeterminal.external.callable.Callback callback = new com.stripe.stripeterminal.external.callable.Callback() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$enqueueReconnectReaderOperation$callback$1
            @Override // com.stripe.stripeterminal.external.callable.Callback
            public void onSuccess() {
                this.this$0.logger.d("Reconnection succeed", new Pair[0]);
            }

            @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
            public void onFailure(TerminalException e) {
                Intrinsics.checkNotNullParameter(e, "e");
                this.this$0.logger.e(e);
            }
        };
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (connectedReader != null) {
            if (getConnectionStatus() != ConnectionStatus.CONNECTING && !(this.operationInProgress instanceof ReconnectReaderOperation)) {
                enqueueOperation(new ReconnectReaderOperation(this, connectedReader, disconnectReason, callback));
            } else {
                callback.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "reader is already reconnecting.", null, null, 12, null));
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            callback.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "no connected reader while reconnecting.", null, null, 12, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0002\u0010\tJ\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0010¢\u0006\u0002\b\u0015J\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0015\u0010\u0019\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u0002H\u0010¢\u0006\u0002\b\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\f\"\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/Callback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "disconnectReason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lcom/stripe/stripeterminal/external/callable/Callback;)V", "isConnectedToReader", "", "()Z", "setConnectedToReader", "(Z)V", "isReconnectingAfterReboot", "executeIfNotCanceled", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class ReconnectReaderOperation extends CancelableOperation<com.stripe.stripeterminal.external.callable.Callback> {
        private final DisconnectReason disconnectReason;
        private boolean isConnectedToReader;
        private final Reader reader;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReconnectReaderOperation(TerminalSession terminalSession, Reader reader, DisconnectReason disconnectReason, com.stripe.stripeterminal.external.callable.Callback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(reader, "reader");
            Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.reader = reader;
            this.disconnectReason = disconnectReason;
        }

        /* JADX INFO: renamed from: isConnectedToReader, reason: from getter */
        public final boolean getIsConnectedToReader() {
            return this.isConnectedToReader;
        }

        public final void setConnectedToReader(boolean z) {
            this.isConnectedToReader = z;
        }

        private final boolean isReconnectingAfterReboot() {
            return SetsKt.setOf((Object[]) new DisconnectReason[]{DisconnectReason.REBOOT_REQUESTED, DisconnectReason.SECURITY_REBOOT}).contains(this.disconnectReason);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() throws TerminalException {
            this.this$0.statusManager.startReconnecting(this.reader, new Cancelable(this), this.disconnectReason);
            Reader readerReconnectReader = this.this$0.adapter.reconnectReader(this.reader);
            this.isConnectedToReader = true;
            if (DeviceTypeExtensions.INSTANCE.isMposDevice(readerReconnectReader.getDeviceType()) && isReconnectingAfterReboot()) {
                this.this$0.handleMposDevice(readerReconnectReader);
            }
            onSuccess(readerReconnectReader);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.reconnectReader(this.reader);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            try {
                if (!this.isConnectedToReader) {
                    this.this$0.adapter.cancelReconnectReader();
                    onCancelSuccess();
                    return;
                }
                throw new TerminalException(TerminalErrorCode.CANCEL_FAILED, "Too late to cancel reconnection", null, null, 12, null);
            } catch (TerminalException e) {
                onCancelFailure(e);
            }
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            TerminalSession terminalSession = this.this$0;
            DisconnectReason disconnectReasonConsumeDisconnectReason = terminalSession.disconnectReasonRepository.consumeDisconnectReason();
            final TerminalSession terminalSession2 = this.this$0;
            terminalSession.emergencyDisconnectReader(disconnectReasonConsumeDisconnectReason, new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$ReconnectReaderOperation$onFailure$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    terminalSession2.statusManager.reconnectFailed(this.reader, this.disconnectReason);
                }
            });
            super.onFailure$terminalsession_release(e);
        }

        public final void onSuccess(Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0.statusManager.reconnected(reader);
            onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(reader));
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0010¢\u0006\u0002\b\rJ\r\u0010\u000e\u001a\u00020\tH\u0010¢\u0006\u0002\b\u000fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V", "cancel", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "run", "run$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class ActivateReaderBackgroundOperation extends InternalOperation {
        private final ConnectionConfiguration config;
        private final Reader reader;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ActivateReaderBackgroundOperation(TerminalSession terminalSession, Reader reader, ConnectionConfiguration config) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            Intrinsics.checkNotNullParameter(config, "config");
            this.this$0 = terminalSession;
            this.reader = reader;
            this.config = config;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void run$terminalsession_release() {
            super.run$terminalsession_release();
            BackgroundActivationResult backgroundActivationResultActivateInBackground = this.this$0.backgroundReaderActivator.activateInBackground(this.reader, this.config);
            if (backgroundActivationResultActivateInBackground instanceof BackgroundActivationResult.ActivationCanceled) {
                cancel();
                return;
            }
            if (backgroundActivationResultActivateInBackground instanceof BackgroundActivationResult.CannotBeAttempted) {
                this.this$0.enqueueActivateOp$terminalsession_release(this.reader, this.config);
            } else if (backgroundActivationResultActivateInBackground instanceof BackgroundActivationResult.ActivationCompleted) {
                onSuccess$terminalsession_release();
            } else if (backgroundActivationResultActivateInBackground instanceof BackgroundActivationResult.ActivationFailed) {
                onFailure$terminalsession_release(((BackgroundActivationResult.ActivationFailed) backgroundActivationResultActivateInBackground).getException());
            }
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.InternalOperation
        public void cancel() {
            this.this$0.logger.d("on cancel activate reader operation", new Pair[0]);
            this.this$0.operationInProgress = this.this$0.new NullOperation();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.this$0.operationInProgress = this.this$0.new NullOperation();
            TerminalSession.emergencyDisconnectReader$default(this.this$0, DisconnectReason.UNKNOWN, null, 2, null);
            this.this$0.logger.w(e, "ActivateReaderBackgroundOperation failed.", new Pair[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0016J\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u0011J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "proxyReaderListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V", "execute", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class ConnectReaderOperation extends ExternalOperation<ReaderCallback> {
        private final ConnectionConfiguration config;
        private final ProxyReaderListener proxyReaderListener;
        private final Reader reader;
        final /* synthetic */ TerminalSession this$0;

        /* JADX INFO: compiled from: TerminalSession.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ConnectionStatus.values().length];
                try {
                    iArr[ConnectionStatus.CONNECTING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ConnectionStatus.CONNECTED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ConnectionStatus.NOT_CONNECTED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ConnectionStatus.DISCOVERING.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConnectReaderOperation(TerminalSession terminalSession, Reader reader, ConnectionConfiguration config, ProxyReaderListener proxyReaderListener, ReaderCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(reader, "reader");
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(proxyReaderListener, "proxyReaderListener");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.reader = reader;
            this.config = config;
            this.proxyReaderListener = proxyReaderListener;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() throws TerminalException {
            final Reader readerConnectReader;
            boolean z;
            this.proxyReaderListener.assertRequiredListener(this.config);
            int i = WhenMappings.$EnumSwitchMapping$0[this.this$0.getConnectionStatus().ordinal()];
            boolean z2 = true;
            if (i != 1 && i != 2) {
                this.this$0.statusManager.setProxyReaderListener(this.proxyReaderListener);
                this.this$0.statusManager.connecting(this.reader);
                ConnectionConfiguration connectionConfiguration = this.config;
                if ((connectionConfiguration instanceof ConnectionConfiguration.BluetoothConnectionConfiguration) && ((ConnectionConfiguration.BluetoothConnectionConfiguration) connectionConfiguration).getAutoReconnectOnUnexpectedDisconnect()) {
                    readerConnectReader = this.this$0.adapter.connectReader(this.reader, this.config, new TerminalSession$ConnectReaderOperation$execute$connectedReader$1(this.this$0));
                } else {
                    ConnectionConfiguration connectionConfiguration2 = this.config;
                    if ((connectionConfiguration2 instanceof ConnectionConfiguration.UsbConnectionConfiguration) && ((ConnectionConfiguration.UsbConnectionConfiguration) connectionConfiguration2).getAutoReconnectOnUnexpectedDisconnect()) {
                        readerConnectReader = this.this$0.adapter.connectReader(this.reader, this.config, new TerminalSession$ConnectReaderOperation$execute$connectedReader$2(this.this$0));
                    } else {
                        ConnectionConfiguration connectionConfiguration3 = this.config;
                        readerConnectReader = ((connectionConfiguration3 instanceof ConnectionConfiguration.TapToPayConnectionConfiguration) && ((ConnectionConfiguration.TapToPayConnectionConfiguration) connectionConfiguration3).getAutoReconnectOnUnexpectedDisconnect()) ? this.this$0.adapter.connectReader(this.reader, this.config, new TerminalSession$ConnectReaderOperation$execute$connectedReader$3(this.this$0)) : Adapter.connectReader$default(this.this$0.adapter, this.reader, this.config, null, 4, null);
                    }
                }
                this.this$0.statusManager.connecting(readerConnectReader);
                ConnectionConfiguration connectionConfiguration4 = this.config;
                if (connectionConfiguration4 instanceof ConnectionConfiguration.BluetoothConnectionConfiguration ? true : connectionConfiguration4 instanceof ConnectionConfiguration.HandoffConnectionConfiguration ? true : connectionConfiguration4 instanceof ConnectionConfiguration.InternetConnectionConfiguration ? true : connectionConfiguration4 instanceof ConnectionConfiguration.TapToPayConnectionConfiguration ? true : connectionConfiguration4 instanceof ConnectionConfiguration.UsbConnectionConfiguration) {
                    z = true;
                } else {
                    if (!(connectionConfiguration4 instanceof ConnectionConfiguration.EmbeddedConnectionConfiguration)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    z = false;
                }
                if (z) {
                    this.this$0.activateReader$terminalsession_release(readerConnectReader, connectionConfiguration4);
                }
                if (DeviceTypeExtensions.INSTANCE.isMposDevice(readerConnectReader.getDeviceType())) {
                    this.this$0.handleMposDevice(readerConnectReader);
                    String stripeSessionToken = this.this$0.sessionTokenRepository.getStripeSessionToken();
                    if (stripeSessionToken != null && !StringsKt.isBlank(stripeSessionToken)) {
                        z2 = false;
                    }
                    if (z2) {
                        OfflineSessionManager offlineSessionManager = this.this$0.offlineSessionManager;
                        final TerminalSession terminalSession = this.this$0;
                        offlineSessionManager.activateReaderWhenOnline(new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$ConnectReaderOperation$execute$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                terminalSession.enqueueActivateOp$terminalsession_release(readerConnectReader, this.config);
                            }
                        });
                    }
                }
                this.this$0.statusManager.connected(readerConnectReader);
                onSuccess(readerConnectReader);
                this.this$0.startReaderBatteryPolling();
                return;
            }
            throw new TerminalException(TerminalErrorCode.ALREADY_CONNECTED_TO_READER, "You must disconnect from reader before starting a new connection.", null, null, 12, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            this.this$0.traceManager.startSession(this.reader.getSerialNumber());
            return SdkRequest.INSTANCE.connectReader(this.reader, this.config);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            if (e.getErrorCode() != TerminalErrorCode.ALREADY_CONNECTED_TO_READER) {
                TerminalSession.emergencyDisconnectReader$default(this.this$0, DisconnectReason.UNKNOWN, null, 2, null);
            }
            super.onFailure$terminalsession_release(e);
        }

        public final void onSuccess(Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(reader));
            getCallback().onSuccess(reader);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleMposDevice(final Reader connectedReader) throws TerminalException {
        if (DeviceTypeExtensions.INSTANCE.isShopifyDevice(connectedReader.getDeviceType()) && !connectedReader.getIsSimulated()) {
            this.adapter.startSession(connectedReader);
        }
        final ReaderSoftwareUpdate readerSoftwareUpdateCheckForUpdate = this.adapter.checkForUpdate(connectedReader, true);
        if (readerSoftwareUpdateCheckForUpdate != null) {
            this.logger.i("Update available: " + readerSoftwareUpdateCheckForUpdate.getVersion() + " required at: " + readerSoftwareUpdateCheckForUpdate.getRequiredAtMs(), new Pair[0]);
        } else {
            this.logger.i("No update available", new Pair[0]);
        }
        if (readerSoftwareUpdateCheckForUpdate != null) {
            readerSoftwareUpdateCheckForUpdate.setOnlyInstallRequiredUpdates(true);
        }
        if (readerSoftwareUpdateCheckForUpdate != null) {
            if (readerSoftwareUpdateCheckForUpdate.getRequiredAtMs() < this.clock.currentTimeMillis()) {
                InstallUpdateOperation installUpdateOperation = new InstallUpdateOperation(this, readerSoftwareUpdateCheckForUpdate, new com.stripe.stripeterminal.external.callable.Callback() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$handleMposDevice$1$updateOp$1
                    @Override // com.stripe.stripeterminal.external.callable.Callback
                    public void onSuccess() {
                        connectedReader.update(readerSoftwareUpdateCheckForUpdate);
                        TerminalStatusManager.finishInstallingUpdate$default(this.statusManager, readerSoftwareUpdateCheckForUpdate, null, 2, null);
                    }

                    @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                    public void onFailure(TerminalException e) throws TerminalException {
                        Intrinsics.checkNotNullParameter(e, "e");
                        this.statusManager.finishInstallingUpdate(readerSoftwareUpdateCheckForUpdate, e);
                        if (e.getErrorCode() == TerminalErrorCode.CANCELED) {
                            throw new TerminalException(TerminalErrorCode.UNSUPPORTED_READER_VERSION, "Required update installation was canceled", e, null, 8, null);
                        }
                        if (ReaderExtensionsKt.isRunningAllowedVersionFromOfflineKFC(connectedReader, this.getAccountOfflineConfigOrDefault(readerSoftwareUpdateCheckForUpdate), this.clock.currentTimeMillis())) {
                            connectedReader.setAvailableUpdate(readerSoftwareUpdateCheckForUpdate);
                            this.statusManager.reportUpdateAvailable(readerSoftwareUpdateCheckForUpdate);
                            return;
                        }
                        throw e;
                    }
                });
                this.statusManager.startInstallingUpdate(readerSoftwareUpdateCheckForUpdate, new Cancelable(installUpdateOperation));
                installUpdateOperation.run$terminalsession_release();
                return;
            }
            connectedReader.setAvailableUpdate(readerSoftwareUpdateCheckForUpdate);
            this.statusManager.reportUpdateAvailable(readerSoftwareUpdateCheckForUpdate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OfflineConfigPb.AccountOfflineConfigPb getAccountOfflineConfigOrDefault(ReaderSoftwareUpdate readerSoftwareUpdate) {
        OfflineConfigPb offlineConfigPb;
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb;
        MobileClientConfig config = readerSoftwareUpdate.getConfig();
        return (config == null || (offlineConfigPb = config.offline_config) == null || (accountOfflineConfigPb = offlineConfigPb.account_offline_config) == null) ? new OfflineConfigPb.AccountOfflineConfigPb(0, null, 0, 0, 0, 0, null, false, false, null, null, false, null, null, null, null, null, null, 0, false, null, null, false, false, null, false, null, 134217727, null) : accountOfflineConfigPb;
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;)V", "execute", "", "onSuccess", "response", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class ActivateReaderOperation extends ExternalOperation<ActivateReaderCallback> {
        private final ConnectionConfiguration config;
        private final Reader reader;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ActivateReaderOperation(TerminalSession terminalSession, Reader reader, ConnectionConfiguration config, ActivateReaderCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(reader, "reader");
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.reader = reader;
            this.config = config;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() {
            onSuccess(this.this$0.activateReader$terminalsession_release(this.reader, this.config));
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.activateReader(this.reader);
        }

        private final void onSuccess(ActivateReaderResponse response) {
            getCallback().onSuccess(response);
            onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0016J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eJ\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CreatePaymentIntentOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "params", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", Callback.METHOD_NAME, "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V", "execute", "", "onSuccess", "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CreatePaymentIntentOperation extends ExternalOperation<PaymentIntentCallback> {
        private final CreateConfiguration createConfiguration;
        private final PaymentIntentParameters params;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CreatePaymentIntentOperation(TerminalSession terminalSession, PaymentIntentParameters params, PaymentIntentCallback callback, CreateConfiguration createConfiguration) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(params, "params");
            Intrinsics.checkNotNullParameter(callback, "callback");
            Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
            this.this$0 = terminalSession;
            this.params = params;
            this.createConfiguration = createConfiguration;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() {
            onSuccess(this.this$0.proxyResourceRepository.createPaymentIntent(this.params, this.createConfiguration));
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.createPaymentIntent(this.params);
        }

        public final void onSuccess(PaymentIntent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(intent));
            getCallback().onSuccess(intent);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0016J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eJ\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CreateSetupIntentOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", Callback.METHOD_NAME, "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V", "execute", "", "onSuccess", "intent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CreateSetupIntentOperation extends ExternalOperation<SetupIntentCallback> {
        private final CreateConfiguration createConfiguration;
        private final SetupIntentParameters params;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CreateSetupIntentOperation(TerminalSession terminalSession, SetupIntentParameters params, SetupIntentCallback callback, CreateConfiguration createConfiguration) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(params, "params");
            Intrinsics.checkNotNullParameter(callback, "callback");
            Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
            this.this$0 = terminalSession;
            this.params = params;
            this.createConfiguration = createConfiguration;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() {
            onSuccess(this.this$0.proxyResourceRepository.createSetupIntent(this.params, this.createConfiguration));
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.createSetupIntent(this.params);
        }

        public final void onSuccess(SetupIntent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(intent));
            getCallback().onSuccess(intent);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "intent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V", "execute", "", "onSuccess", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CancelSetupIntentOperation extends ExternalOperation<SetupIntentCallback> {
        private final SetupIntent intent;
        private final SetupIntentCancellationParameters params;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CancelSetupIntentOperation(TerminalSession terminalSession, SetupIntent intent, SetupIntentCancellationParameters params, SetupIntentCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(params, "params");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.intent = intent;
            this.params = params;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() {
            onSuccess(this.this$0.proxyResourceRepository.cancelSetupIntent(this.intent, this.params));
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.cancelSetupIntent(this.intent, this.params);
        }

        private final void onSuccess(SetupIntent intent) {
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            getCallback().onSuccess(intent);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\r\u0010\b\u001a\u00020\u0007H\u0010¢\u0006\u0002\b\tJ\b\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$RebootReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/Callback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/Callback;)V", "execute", "", "onSuccess", "onSuccess$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class RebootReaderOperation extends ExternalOperation<com.stripe.stripeterminal.external.callable.Callback> {
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RebootReaderOperation(TerminalSession terminalSession, com.stripe.stripeterminal.external.callable.Callback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() throws TerminalException {
            Reader connectedReader = this.this$0.statusManager.getConnectedReader();
            if (connectedReader != null) {
                this.this$0.adapter.rebootReader(connectedReader);
                onSuccess$terminalsession_release();
                return;
            }
            throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "No connected reader on rebootReader call", null, null, 12, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.rebootReader();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onSuccess$terminalsession_release() {
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            getCallback().onSuccess();
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\r\u0010\b\u001a\u00020\u0007H\u0010¢\u0006\u0002\b\tJ\b\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DisconnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/Callback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/Callback;)V", "execute", "", "onSuccess", "onSuccess$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class DisconnectReaderOperation extends ExternalOperation<com.stripe.stripeterminal.external.callable.Callback> {
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DisconnectReaderOperation(TerminalSession terminalSession, com.stripe.stripeterminal.external.callable.Callback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() {
            try {
                this.this$0.disconnectReasonRepository.setDisconnectReason(DisconnectReason.DISCONNECT_REQUESTED);
                this.this$0.adapter.disconnectReader(DisconnectReason.DISCONNECT_REQUESTED);
                this.this$0.readerActivationListener.onReaderDisconnected();
                this.this$0.statusManager.notConnected();
                onSuccess$terminalsession_release();
            } catch (Throwable th) {
                this.this$0.readerActivationListener.onReaderDisconnected();
                this.this$0.statusManager.notConnected();
                throw th;
            }
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            SdkRequest sdkRequestDisconnectReader = SdkRequest.INSTANCE.disconnectReader();
            this.this$0.traceManager.endSession();
            return sdkRequestDisconnectReader;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onSuccess$terminalsession_release() {
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            getCallback().onSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u00032\u00020\u0004B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u0015\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u0011J\r\u0010\u0012\u001a\u00020\fH\u0010¢\u0006\u0002\b\u0013J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0015\u0010\u0016\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0002H\u0010¢\u0006\u0002\b\u0017R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/Callback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/stripeterminal/external/callable/Callback;)V", "cancelBecauseMultipleDiscoveryOperations", "", "executeIfNotCanceled", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "onSuccess$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class DiscoverReadersOperation extends CancelableOperation<com.stripe.stripeterminal.external.callable.Callback> implements CancelableDiscoverReadersOperation {
        private final DiscoveryConfiguration config;
        private final DiscoveryListener listener;
        final /* synthetic */ TerminalSession this$0;

        /* JADX INFO: compiled from: TerminalSession.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ConnectionStatus.values().length];
                try {
                    iArr[ConnectionStatus.CONNECTING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ConnectionStatus.CONNECTED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ConnectionStatus.NOT_CONNECTED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ConnectionStatus.DISCOVERING.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DiscoverReadersOperation(TerminalSession terminalSession, DiscoveryConfiguration config, DiscoveryListener listener, com.stripe.stripeterminal.external.callable.Callback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.config = config;
            this.listener = listener;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() throws TerminalException {
            int i = WhenMappings.$EnumSwitchMapping$0[this.this$0.getConnectionStatus().ordinal()];
            if (i != 1 && i != 2) {
                this.this$0.statusManager.startDiscovery();
                DiscoveryConfiguration discoveryConfiguration = this.config;
                if (discoveryConfiguration instanceof DiscoveryConfiguration.BluetoothDiscoveryConfiguration) {
                    this.this$0.permissionsValidator.validateBluetoothPermissions();
                } else {
                    if (!(discoveryConfiguration instanceof DiscoveryConfiguration.EmbeddedDiscoveryConfiguration ? true : discoveryConfiguration instanceof DiscoveryConfiguration.HandoffDiscoveryConfiguration ? true : discoveryConfiguration instanceof DiscoveryConfiguration.InternetDiscoveryConfiguration ? true : discoveryConfiguration instanceof DiscoveryConfiguration.TapToPayDiscoveryConfiguration ? true : discoveryConfiguration instanceof DiscoveryConfiguration.UsbDiscoveryConfiguration)) {
                        throw new NoWhenBranchMatchedException();
                    }
                }
                Unit unit = Unit.INSTANCE;
                this.this$0.permissionsValidator.validateLocationPermissions();
                this.this$0.locationValidator.validateLocationServices();
                this.this$0.locationHandler.startListening();
                this.this$0.proxyResourceRepository.setResourceRepository(this.config);
                this.this$0.adapter.discoverReaders(this.config, this.listener);
                this.this$0.chargeAttemptManager.setChargeAttemptListener(this.this$0.adapter);
                onSuccess$terminalsession_release();
                return;
            }
            throw new TerminalException(TerminalErrorCode.ALREADY_CONNECTED_TO_READER, "You must disconnect from reader before discovering readers.", null, null, 12, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.discoverReaders(this.config);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            BuildersKt__Builders_commonKt.launch$default(this.this$0.backgroundScope, null, null, new TerminalSession$DiscoverReadersOperation$startCancel$1(this.this$0, this, null), 3, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onSuccess$terminalsession_release() {
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            ((com.stripe.stripeterminal.external.callable.Callback) getCallback()).onSuccess();
            this.this$0.statusManager.endDiscovery();
            this.this$0.ensureSingleDiscoverOperation.onCompleteDiscoverOperation(this);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            super.onFailure$terminalsession_release(e);
            this.this$0.ensureSingleDiscoverOperation.onCompleteDiscoverOperation(this);
            this.this$0.statusManager.endDiscovery();
        }

        @Override // com.stripe.discoverreaders.CancelableDiscoverReadersOperation
        public void cancelBecauseMultipleDiscoveryOperations() {
            super.startCancel$terminalsession_release(new com.stripe.stripeterminal.external.callable.Callback() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$DiscoverReadersOperation$cancelBecauseMultipleDiscoveryOperations$dummyCancelCallback$1
                @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                public void onFailure(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                }

                @Override // com.stripe.stripeterminal.external.callable.Callback
                public void onSuccess() {
                }
            });
            BuildersKt__Builders_commonKt.launch$default(this.this$0.backgroundScope, null, null, new TerminalSession$DiscoverReadersOperation$cancelBecauseMultipleDiscoveryOperations$1(this.this$0, this, null), 3, null);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0017\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0002\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0010¢\u0006\u0002\b\u0012J\r\u0010\u0013\u001a\u00020\u000eH\u0010¢\u0006\u0002\b\u0014J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0002H\u0010¢\u0006\u0002\b\u0018R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InstallUpdateOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/Callback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "update", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Callback;)V", "healthMetricTags", "", "", "timer", "Lcom/stripe/jvmcore/logging/PendingTimer;", "executeIfNotCanceled", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "onSuccess$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class InstallUpdateOperation extends CancelableOperation<com.stripe.stripeterminal.external.callable.Callback> {
        private final Map<String, String> healthMetricTags;
        final /* synthetic */ TerminalSession this$0;
        private final PendingTimer timer;
        private final ReaderSoftwareUpdate update;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InstallUpdateOperation(TerminalSession terminalSession, ReaderSoftwareUpdate readerSoftwareUpdate, com.stripe.stripeterminal.external.callable.Callback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.update = readerSoftwareUpdate;
            this.timer = HealthLogger.startTimer$default(terminalSession.updatesHealthLogger, null, new Function2<EndToEndScope.Builder, Timer, Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$InstallUpdateOperation$timer$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(EndToEndScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(EndToEndScope.Builder startTimer, Timer it) {
                    Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                    Intrinsics.checkNotNullParameter(it, "it");
                    startTimer.updates = it;
                }
            }, 1, null);
            this.healthMetricTags = new LinkedHashMap();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() throws TerminalException {
            Reader connectedReader = this.this$0.statusManager.getConnectedReader();
            if (connectedReader == null) {
                throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "No connected reader on installAvailableUpdate call", null, null, 12, null);
            }
            ConnectionType connectionType = ReaderExtensionsKt.getConnectionType(connectedReader);
            if (connectionType != null) {
                this.healthMetricTags.put(BbposAdapter.CONNECTION_TYPE_TAG_KEY, connectionType.name());
            }
            ReaderSoftwareUpdate readerSoftwareUpdate = this.update;
            if (readerSoftwareUpdate != null) {
                this.this$0.adapter.installUpdate(readerSoftwareUpdate);
            }
            onSuccess$terminalsession_release();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.installUpdate();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            PendingTimer pendingTimer = this.timer;
            if (pendingTimer != null) {
                HealthLogger.endTimer$default(this.this$0.updatesHealthLogger, pendingTimer, UpdatesHealthLoggerKt.toFailureOutcome(e), this.healthMetricTags, null, 8, null);
            }
            if (e.getErrorCode() == TerminalErrorCode.CANCELED) {
                onCancelSuccess();
            }
            super.onFailure$terminalsession_release(e);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onSuccess$terminalsession_release() {
            Reader connectedReader;
            PendingTimer pendingTimer = this.timer;
            if (pendingTimer != null) {
                HealthLogger.endTimer$default(this.this$0.updatesHealthLogger, pendingTimer, Outcome.Ok.INSTANCE, this.healthMetricTags, null, 8, null);
            }
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            ReaderSoftwareUpdate readerSoftwareUpdate = this.update;
            if (readerSoftwareUpdate != null && (connectedReader = this.this$0.statusManager.getConnectedReader()) != null) {
                connectedReader.update(readerSoftwareUpdate);
            }
            ((com.stripe.stripeterminal.external.callable.Callback) getCallback()).onSuccess();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            this.this$0.adapter.cancelInstallUpdate();
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class NullOperation extends InternalOperation {
        public NullOperation() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u00032\u00020\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0016J\u0006\u0010\u000f\u001a\u00020\u0010J\b\u0010\u0011\u001a\u00020\u000eH\u0016J\u0015\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0010¢\u0006\u0002\b\u0015J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0006J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0015\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u001bH\u0010¢\u0006\u0002\b\u001cR\u0014\u0010\t\u001a\u00020\n8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmSetupIntentOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "Lcom/stripe/cancelintent/CancelableIntentOperation;", "intent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V", "cannotCurrentlyBeCanceledMessage", "", "getCannotCurrentlyBeCanceledMessage", "()Ljava/lang/String;", "cancelIntent", "", "collectScaPaymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "executeIfNotCanceled", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "confirmedIntent", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "Lcom/stripe/stripeterminal/external/callable/Callback;", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class ConfirmSetupIntentOperation extends CancelableOperation<SetupIntentCallback> implements CancelableIntentOperation {
        private final SetupIntent intent;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConfirmSetupIntentOperation(TerminalSession terminalSession, SetupIntent intent, SetupIntentCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.intent = intent;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        protected String getCannotCurrentlyBeCanceledMessage() {
            return "Cannot cancel this operation while it is waiting for a network response";
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() {
            this.this$0.statusManager.processing();
            setIsCurrentlyCancelable(false);
            onSuccess(this.this$0.proxyResourceRepository.confirmSetupIntent(this.intent, this.this$0.adapter.getCollectiblePayment(), new TerminalSession$ConfirmSetupIntentOperation$executeIfNotCanceled$confirmed$1(this.this$0.adapter), new TerminalSession$ConfirmSetupIntentOperation$executeIfNotCanceled$confirmed$2(this), this.this$0.adapter.getImmediateRecollectForSca(), this.this$0.adapter));
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.confirmSetupIntent(this.intent);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            if ((getStarted() || !getCanceled()) && !canCurrentlyBeCancelled()) {
                return;
            }
            ProxyResourceRepository proxyResourceRepository = this.this$0.proxyResourceRepository;
            final TerminalSession terminalSession = this.this$0;
            proxyResourceRepository.cancelConfirmSetupIntent(new com.stripe.stripeterminal.external.callable.Callback() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$ConfirmSetupIntentOperation$startCancel$1
                @Override // com.stripe.stripeterminal.external.callable.Callback
                public void onSuccess() {
                    if (terminalSession.adapter.adapterType() != AdapterType.REMOTE) {
                        terminalSession.adapter.cancelCollectPaymentMethod();
                    }
                    terminalSession.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
                    terminalSession.statusManager.endPaymentFlow();
                    this.onCancelSuccess();
                }

                @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                public void onFailure(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    this.onCancelFailure(e);
                }
            });
        }

        public final void onSuccess(SetupIntent confirmedIntent) {
            Intrinsics.checkNotNullParameter(confirmedIntent, "confirmedIntent");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(confirmedIntent));
            this.this$0.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
            this.this$0.statusManager.endPaymentFlow();
            ((SetupIntentCallback) getCallback()).onSuccess(confirmedIntent);
        }

        public final PaymentMethodData collectScaPaymentMethodData() throws TerminalException {
            String strRequireOnlineOrOfflineId = OfflineAdapterKt.requireOnlineOrOfflineId(this.intent);
            setIsCurrentlyCancelable(true);
            PaymentMethodData paymentMethodDataCollectPaymentMethod = this.this$0.adapter.collectPaymentMethod(new PaymentMethodCollectionType.StrongCustomerAuthentication(strRequireOnlineOrOfflineId, null, new Amount(0L, CurrencyCode.USD), PaymentMethodCollectionType.StrongCustomerAuthentication.Requirement.GENERIC, false));
            setIsCurrentlyCancelable(false);
            return paymentMethodDataCollectPaymentMethod;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            super.onFailure$terminalsession_release(e);
            this.this$0.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
            this.this$0.statusManager.endPaymentFlow();
        }

        @Override // com.stripe.cancelintent.CancelableIntentOperation
        public void cancelIntent() {
            if (getCompleted()) {
                return;
            }
            startCancel$terminalsession_release(this.this$0.createLogCancelCallback("cancelSetupIntent", "confirmSetupIntent", OfflineAdapterKt.requireOnlineOrOfflineId(this.intent)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u00032\u00020\u0004B)\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0002\u0010\fJ\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\u0012H\u0016J\u0015\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0010¢\u0006\u0002\b\u0019J\u000e\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0006J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\u0015\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u001fH\u0010¢\u0006\u0002\b R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u00020\n8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "Lcom/stripe/cancelintent/CancelableIntentOperation;", "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "amountSurcharge", "", "returnUrl", "", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V", "Ljava/lang/Long;", "cannotCurrentlyBeCanceledMessage", "getCannotCurrentlyBeCanceledMessage", "()Ljava/lang/String;", "cancelIntent", "", "collectScaPaymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "executeIfNotCanceled", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "confirmedIntent", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "Lcom/stripe/stripeterminal/external/callable/Callback;", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class ConfirmPaymentIntentOperation extends CancelableOperation<PaymentIntentCallback> implements CancelableIntentOperation {
        private final Long amountSurcharge;
        private final PaymentIntent intent;
        private final String returnUrl;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConfirmPaymentIntentOperation(TerminalSession terminalSession, PaymentIntent intent, Long l, String str, PaymentIntentCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.intent = intent;
            this.amountSurcharge = l;
            this.returnUrl = str;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        protected String getCannotCurrentlyBeCanceledMessage() {
            return "Cannot cancel this operation while it is waiting for a network response";
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x00af A[PHI: r0
          0x00af: PHI (r0v10 java.lang.String) = (r0v9 java.lang.String), (r0v25 java.lang.String) binds: [B:27:0x0095, B:29:0x00aa] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void executeIfNotCanceled() throws com.stripe.stripeterminal.external.models.TerminalException {
            /*
                Method dump skipped, instruction units count: 338
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ConfirmPaymentIntentOperation.executeIfNotCanceled():void");
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.confirmPaymentIntent(this.intent);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            if ((getStarted() || !getCanceled()) && !canCurrentlyBeCancelled()) {
                return;
            }
            ProxyResourceRepository proxyResourceRepository = this.this$0.proxyResourceRepository;
            final TerminalSession terminalSession = this.this$0;
            proxyResourceRepository.cancelConfirmPaymentIntent(new com.stripe.stripeterminal.external.callable.Callback() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$ConfirmPaymentIntentOperation$startCancel$1
                @Override // com.stripe.stripeterminal.external.callable.Callback
                public void onSuccess() {
                    if (terminalSession.adapter.adapterType() != AdapterType.REMOTE) {
                        terminalSession.adapter.cancelCollectPaymentMethod();
                        try {
                            terminalSession.proxyResourceRepository.cancelPaymentIntentActionRequired();
                        } catch (UnsupportedOperationException unused) {
                        }
                    }
                    terminalSession.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
                    terminalSession.statusManager.endPaymentFlow();
                    this.onCancelSuccess();
                }

                @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                public void onFailure(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    this.onCancelFailure(e);
                }
            });
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            super.onFailure$terminalsession_release(e);
            this.this$0.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
            this.this$0.statusManager.endPaymentFlow();
        }

        public final void onSuccess(PaymentIntent confirmedIntent) {
            Intrinsics.checkNotNullParameter(confirmedIntent, "confirmedIntent");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(confirmedIntent));
            this.this$0.cancelIntentManager.onCompleteIntentOperation(OfflineAdapterKt.requireOnlineOrOfflineId(this.intent), this);
            this.this$0.statusManager.endPaymentFlow();
            ((PaymentIntentCallback) getCallback()).onSuccess(confirmedIntent);
        }

        public final PaymentMethodData collectScaPaymentMethodData() throws TerminalException {
            String strRequireOnlineOrOfflineId = OfflineAdapterKt.requireOnlineOrOfflineId(this.intent);
            setIsCurrentlyCancelable(true);
            Adapter adapter = this.this$0.adapter;
            OfflineDetails offlineDetails = this.intent.getOfflineDetails();
            TerminalSession terminalSession = this.this$0;
            PaymentIntent paymentIntent = this.intent;
            long amount = this.intent.getAmount();
            String currency = this.intent.getCurrency();
            if (currency == null) {
                currency = "";
            }
            PaymentMethodData paymentMethodDataCollectPaymentMethod = adapter.collectPaymentMethod(new PaymentMethodCollectionType.StrongCustomerAuthentication(strRequireOnlineOrOfflineId, offlineDetails, terminalSession.determineAmountToDisplayForCollection(paymentIntent, new Amount(amount, currency)), PaymentMethodCollectionType.StrongCustomerAuthentication.Requirement.GENERIC, false));
            setIsCurrentlyCancelable(false);
            return paymentMethodDataCollectPaymentMethod;
        }

        @Override // com.stripe.cancelintent.CancelableIntentOperation
        public void cancelIntent() {
            if (getCompleted()) {
                return;
            }
            startCancel$terminalsession_release(this.this$0.createLogCancelCallback("cancelPaymentIntent", "confirmPaymentIntent", OfflineAdapterKt.requireOnlineOrOfflineId(this.intent)));
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0010¢\u0006\u0002\b\u000fJ\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0015\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0016H\u0010¢\u0006\u0002\b\u0017R\u0014\u0010\u0006\u001a\u00020\u00078TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/RefundCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/RefundCallback;)V", "cannotCurrentlyBeCanceledMessage", "", "getCannotCurrentlyBeCanceledMessage", "()Ljava/lang/String;", "executeIfNotCanceled", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", FirebaseAnalytics.Event.REFUND, "Lcom/stripe/stripeterminal/external/models/Refund;", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "Lcom/stripe/stripeterminal/external/callable/Callback;", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class ConfirmRefundOperation extends CancelableOperation<RefundCallback> {
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConfirmRefundOperation(TerminalSession terminalSession, RefundCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        protected String getCannotCurrentlyBeCanceledMessage() {
            return "Cannot cancel this operation while it is waiting for a network response";
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() throws TerminalException {
            this.this$0.statusManager.processing();
            RefundParameters refundParameters = this.this$0.previousRefundParams;
            if (refundParameters == null) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, "No refund has been collected yet", null, null, 12, null);
            }
            setIsCurrentlyCancelable(false);
            ProxyResourceRepository proxyResourceRepository = this.this$0.proxyResourceRepository;
            CollectiblePayment collectiblePayment = this.this$0.adapter.getCollectiblePayment();
            final TerminalSession terminalSession = this.this$0;
            onSuccess(proxyResourceRepository.confirmRefund(refundParameters, collectiblePayment, new Function1<String, Deferred<? extends TransactionResult>>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$ConfirmRefundOperation$executeIfNotCanceled$refund$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Deferred<TransactionResult> invoke(String tlvBlob) {
                    Intrinsics.checkNotNullParameter(tlvBlob, "tlvBlob");
                    return terminalSession.adapter.handleAuthResponse(tlvBlob);
                }
            }, this.this$0.adapter));
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.confirmRefund();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            super.onFailure$terminalsession_release(e);
            this.this$0.statusManager.endPaymentFlow();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            if ((getStarted() || !getCanceled()) && !canCurrentlyBeCancelled()) {
                return;
            }
            ProxyResourceRepository proxyResourceRepository = this.this$0.proxyResourceRepository;
            final TerminalSession terminalSession = this.this$0;
            proxyResourceRepository.cancelConfirmRefund(new com.stripe.stripeterminal.external.callable.Callback() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$ConfirmRefundOperation$startCancel$1
                @Override // com.stripe.stripeterminal.external.callable.Callback
                public void onSuccess() {
                    if (terminalSession.adapter.adapterType() != AdapterType.REMOTE) {
                        terminalSession.adapter.cancelCollectPaymentMethod();
                    }
                    terminalSession.statusManager.endPaymentFlow();
                    this.onCancelSuccess();
                }

                @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                public void onFailure(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    this.onCancelFailure(e);
                }
            });
        }

        public final void onSuccess(Refund refund) {
            Intrinsics.checkNotNullParameter(refund, "refund");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(refund));
            this.this$0.statusManager.endPaymentFlow();
            ((RefundCallback) getCallback()).onSuccess(refund);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0010¢\u0006\u0002\b\u000fJ\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0015\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0016H\u0010¢\u0006\u0002\b\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReadReusableCardOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/PaymentMethodCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "params", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/external/callable/PaymentMethodCallback;)V", "paymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "executeIfNotCanceled", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "paymentMethod", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "Lcom/stripe/stripeterminal/external/callable/Callback;", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class ReadReusableCardOperation extends CancelableOperation<PaymentMethodCallback> {
        private final ReadReusableCardParameters params;
        private PaymentMethodData paymentMethodData;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReadReusableCardOperation(TerminalSession terminalSession, ReadReusableCardParameters params, PaymentMethodCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(params, "params");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.params = params;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() throws TerminalException {
            Reader connectedReader = this.this$0.statusManager.getConnectedReader();
            if (connectedReader == null || connectedReader.getDeviceType() != DeviceType.WISEPAD_3) {
                this.this$0.locationValidator.validateLocationServices();
                this.this$0.statusManager.waitForInput();
                PaymentMethodData reusableCard = this.this$0.adapter.readReusableCard();
                TerminalSession terminalSession = this.this$0;
                this.paymentMethodData = reusableCard;
                onSuccess(terminalSession.proxyResourceRepository.readReusableCard(this.params, reusableCard));
                return;
            }
            throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "This operation is not supported for this reader type", null, null, 12, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.readReusableCard();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            if (this.paymentMethodData == null) {
                this.this$0.adapter.cancelCollectPaymentMethod();
                this.this$0.statusManager.endPaymentFlow();
                onCancelSuccess();
                return;
            }
            onCancelFailure(new TerminalException(TerminalErrorCode.CANCEL_FAILED, "Too late to cancel this operation", null, null, 12, null));
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            super.onFailure$terminalsession_release(e);
            this.this$0.statusManager.endPaymentFlow();
        }

        public final void onSuccess(PaymentMethod paymentMethod) {
            Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(paymentMethod));
            ((PaymentMethodCallback) getCallback()).onSuccess(paymentMethod);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016J\r\u0010\f\u001a\u00020\u000bH\u0010¢\u0006\u0002\b\rJ\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/Callback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Cart;Lcom/stripe/stripeterminal/external/callable/Callback;)V", "getCart", "()Lcom/stripe/stripeterminal/external/models/Cart;", "execute", "", "onSuccess", "onSuccess$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class SetReaderDisplayOperation extends ExternalOperation<com.stripe.stripeterminal.external.callable.Callback> {
        private final Cart cart;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SetReaderDisplayOperation(TerminalSession terminalSession, Cart cart, com.stripe.stripeterminal.external.callable.Callback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(cart, "cart");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.cart = cart;
        }

        public final Cart getCart() {
            return this.cart;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.setReaderDisplay(this.cart);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() throws TerminalException {
            String currency = this.cart.getCurrency();
            if (CurrencyCode.INSTANCE.getByCodeIgnoreCase(currency) != null) {
                this.this$0.adapter.setReaderDisplay(this.cart);
                onSuccess$terminalsession_release();
                return;
            }
            throw new TerminalException(TerminalErrorCode.INVALID_REQUIRED_PARAMETER, "Unsupported currency " + currency, null, null, 12, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onSuccess$terminalsession_release() {
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            getCallback().onSuccess();
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\b\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderSettingsOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "params", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V", "execute", "", "onSuccess", "readerSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class SetReaderSettingsOperation extends ExternalOperation<ReaderSettingsCallback> {
        private final ReaderSettingsParameters params;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SetReaderSettingsOperation(TerminalSession terminalSession, ReaderSettingsParameters params, ReaderSettingsCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(params, "params");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.params = params;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.setReaderSettings();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() {
            onSuccess(this.this$0.adapter.setReaderSettings(this.params));
        }

        public final void onSuccess(ReaderSettings readerSettings) {
            Intrinsics.checkNotNullParameter(readerSettings, "readerSettings");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            getCallback().onSuccess(readerSettings);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$GetReaderSettingsOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;", "Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V", "execute", "", "onSuccess", "readerSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class GetReaderSettingsOperation extends ExternalOperation<ReaderSettingsCallback> {
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GetReaderSettingsOperation(TerminalSession terminalSession, ReaderSettingsCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.getReaderSettings();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public void execute() {
            onSuccess(this.this$0.adapter.getReaderSettings());
        }

        public final void onSuccess(ReaderSettings readerSettings) {
            Intrinsics.checkNotNullParameter(readerSettings, "readerSettings");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            getCallback().onSuccess(readerSettings);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0083\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0010¢\u0006\u0002\b\rJ\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0016\u0010\u0011\u001a\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0015\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0017H\u0010¢\u0006\u0002\b\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectInputsOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "collectInputsParameters", "Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;)V", "executeIfNotCanceled", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onResult", "result", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "onSuccess", "", "Lcom/stripe/stripeterminal/external/models/CollectInputsResult;", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "Lcom/stripe/stripeterminal/external/callable/Callback;", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CollectInputsOperation extends CancelableOperation<ProxyCollectInputsResultCallback> {
        private final CollectInputsParameters collectInputsParameters;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CollectInputsOperation(TerminalSession terminalSession, CollectInputsParameters collectInputsParameters, ProxyCollectInputsResultCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(collectInputsParameters, "collectInputsParameters");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.collectInputsParameters = collectInputsParameters;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.collectInputs();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() {
            ((ProxyCollectInputsResultCallback) getCallback()).onStart();
            this.this$0.statusManager.waitForInput();
            onResult(this.this$0.adapter.collectInputsBlocking(this.this$0.collectInputsParametersTransformer.transform(this.collectInputsParameters)));
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            try {
                this.this$0.adapter.cancelCollectInputs();
                this.this$0.statusManager.endPaymentFlow();
                onCancelSuccess();
            } catch (TerminalException e) {
                onCancelFailure(e);
            }
        }

        private final void onResult(KmpCollectInputsResult result) {
            if (result instanceof KmpCollectInputsResultFailure) {
                onFailure$terminalsession_release(this.this$0.terminalExceptionTransformer.transform(((KmpCollectInputsResultFailure) result).getException()));
            } else if (result instanceof KmpCollectInputsResultSuccess) {
                onSuccess(this.this$0.collectInputsExternalModelTransformer.transform((KmpCollectInputsResultSuccess) result));
            }
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.this$0.statusManager.endPaymentFlow();
            super.onFailure$terminalsession_release(e);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private final void onSuccess(List<? extends CollectInputsResult> result) {
            this.this$0.statusManager.endPaymentFlow();
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
            ((ProxyCollectInputsResultCallback) getCallback()).onSuccess(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0083\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0010¢\u0006\u0002\b\rJ\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0015\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0012H\u0010¢\u0006\u0002\b\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V", "executeIfNotCanceled", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "onSuccess", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "Lcom/stripe/stripeterminal/external/callable/Callback;", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class HandleNextActionsOperation extends CancelableOperation<PaymentIntentCallback> {
        private final PaymentIntent paymentIntent;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandleNextActionsOperation(TerminalSession terminalSession, PaymentIntent paymentIntent, PaymentIntentCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.paymentIntent = paymentIntent;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.handleNextActions();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.this$0.proxyResourceRepository.cancelPaymentIntentActionRequired();
            this.this$0.statusManager.endPaymentFlow();
            super.onFailure$terminalsession_release(e);
        }

        public final void onSuccess(PaymentIntent paymentIntent) {
            Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success(paymentIntent));
            this.this$0.statusManager.endPaymentFlow();
            ((PaymentIntentCallback) getCallback()).onSuccess(paymentIntent);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() {
            NextAction nextAction = this.paymentIntent.getNextAction();
            if (nextAction != null) {
                PaymentMethodType nonCardPaymentMethodType = this.this$0.transactionRepository.getNonCardPaymentMethodType();
                if (nonCardPaymentMethodType == null) {
                    throw new IllegalStateException("transactionRepository must have a nonCardPaymentMethodType".toString());
                }
                String nonCardPaymentMethodTypeAndImageUrl = nextAction.getNonCardPaymentMethodTypeAndImageUrl();
                if (nonCardPaymentMethodTypeAndImageUrl == null) {
                    throw new IllegalStateException("Failed to extract non-card payment method type from PaymentIntent".toString());
                }
                ErrorCallback errorCallback = new ErrorCallback() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$apiFailureCallback$1
                    @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                    public void onFailure(TerminalException e) {
                        Intrinsics.checkNotNullParameter(e, "e");
                        this.this$0.onFailure$terminalsession_release(e);
                    }
                };
                TerminalSession terminalSession = this.this$0;
                ErrorCallback errorCallback2 = errorCallback;
                BuildersKt__Builders_commonKt.launch$default(terminalSession.backgroundScope, null, null, new TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$1(errorCallback2, terminalSession, "Unknown error downloading QR image from URL", null, terminalSession, nonCardPaymentMethodTypeAndImageUrl, nonCardPaymentMethodType), 3, null);
                TerminalSession terminalSession2 = this.this$0;
                BuildersKt__Builders_commonKt.launch$default(terminalSession2.backgroundScope, null, null, new TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2(errorCallback2, terminalSession2, "Failure while polling PaymentIntent for action completion.", null, this, terminalSession2), 3, null);
                return;
            }
            throw new IllegalStateException("PaymentIntent must have a next action to handle next actions".toString());
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            try {
                this.this$0.adapter.cancelCollectPaymentMethod();
                this.this$0.proxyResourceRepository.cancelPaymentIntentActionRequired();
                this.this$0.statusManager.endPaymentFlow();
                onCancelSuccess();
            } catch (TerminalException e) {
                onCancelFailure(e);
            }
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0083\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0010¢\u0006\u0002\b\nJ\r\u0010\u000b\u001a\u00020\u0007H\u0010¢\u0006\u0002\b\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CompletePaymentIntentActionRequiredOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "paymentIntentId", "", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;)V", "onFailure", "", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "run", "run$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CompletePaymentIntentActionRequiredOperation extends InternalOperation {
        private final String paymentIntentId;
        final /* synthetic */ TerminalSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CompletePaymentIntentActionRequiredOperation(TerminalSession terminalSession, String paymentIntentId) {
            super();
            Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
            this.this$0 = terminalSession;
            this.paymentIntentId = paymentIntentId;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void run$terminalsession_release() {
            this.this$0.proxyResourceRepository.completePaymentIntentActionRequired(this.paymentIntentId, this.this$0.transactionRepository.getStripeAccountId());
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.this$0.statusManager.endPaymentFlow();
            super.onFailure$terminalsession_release(e);
        }
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0002\u0010\tJ\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0015\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0010¢\u0006\u0002\b\u0017J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0015\u0010\u001a\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u001bH\u0010¢\u0006\u0002\b\u001cR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\r¨\u0006\u001d"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "passthroughType", "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;", "enableCustomerCancellation", "", Callback.METHOD_NAME, "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;ZLcom/stripe/stripeterminal/external/callable/CollectedDataCallback;)V", "networkTimer", "Lcom/stripe/jvmcore/logging/PendingTimer;", "getNetworkTimer", "()Lcom/stripe/jvmcore/logging/PendingTimer;", "setNetworkTimer", "(Lcom/stripe/jvmcore/logging/PendingTimer;)V", "timer", "getTimer", "executeIfNotCanceled", "", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onFailure$terminalsession_release", "sdkRequest", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "startCancel", "Lcom/stripe/stripeterminal/external/callable/Callback;", "startCancel$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class CollectDataOperation extends CancelableOperation<CollectedDataCallback> {
        private final boolean enableCustomerCancellation;
        private PendingTimer networkTimer;
        private final PaymentMethodCollectionType.Passthrough.PassthroughType passthroughType;
        final /* synthetic */ TerminalSession this$0;
        private final PendingTimer timer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CollectDataOperation(TerminalSession terminalSession, PaymentMethodCollectionType.Passthrough.PassthroughType passthroughType, boolean z, CollectedDataCallback callback) {
            super(terminalSession, callback);
            Intrinsics.checkNotNullParameter(passthroughType, "passthroughType");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = terminalSession;
            this.passthroughType = passthroughType;
            this.enableCustomerCancellation = z;
            this.timer = HealthLogger.startTimer$default(terminalSession.passthroughHealthStageLogger, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$CollectDataOperation$timer$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(StageScope.Builder startTimer, Timer it) {
                    Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                    Intrinsics.checkNotNullParameter(it, "it");
                    startTimer.end_to_end_duration = it;
                }
            }, 1, null);
        }

        public final PendingTimer getTimer() {
            return this.timer;
        }

        public final PendingTimer getNetworkTimer() {
            return this.networkTimer;
        }

        public final void setNetworkTimer(PendingTimer pendingTimer) {
            this.networkTimer = pendingTimer;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void executeIfNotCanceled() throws TerminalException {
            DeviceType deviceType;
            DeviceType deviceType2;
            Reader connectedReader = this.this$0.getConnectedReader();
            if (connectedReader != null && (deviceType2 = connectedReader.getDeviceType()) != null && !DeviceTypeExtensions.INSTANCE.supportsCollectData(deviceType2)) {
                throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Collect data is not currently supported for this reader type.", null, null, 12, null);
            }
            Companion companion = TerminalSession.INSTANCE;
            boolean z = this.enableCustomerCancellation;
            Reader connectedReader2 = this.this$0.getConnectedReader();
            if (connectedReader2 == null || (deviceType = connectedReader2.getDeviceType()) == null) {
                deviceType = DeviceType.UNKNOWN;
            }
            companion.checkCustomerCancellationFeature(z, deviceType);
            PaymentMethodData paymentMethodDataCollectPaymentMethod = this.this$0.adapter.collectPaymentMethod(new PaymentMethodCollectionType.Passthrough(this.passthroughType, this.enableCustomerCancellation));
            this.networkTimer = HealthLogger.startTimer$default(this.this$0.passthroughHealthStageLogger, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$CollectDataOperation$executeIfNotCanceled$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(StageScope.Builder startTimer, Timer it) {
                    Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                    Intrinsics.checkNotNullParameter(it, "it");
                    startTimer.network_call_duration = it;
                }
            }, 1, null);
            CollectedData collectedDataCreateReaderCollectedData = this.this$0.proxyResourceRepository.createReaderCollectedData(paymentMethodDataCollectPaymentMethod);
            PendingTimer pendingTimer = this.networkTimer;
            if (pendingTimer != null) {
                HealthLogger.endTimer$default(this.this$0.passthroughHealthStageLogger, pendingTimer, Outcome.Ok.INSTANCE, null, null, 12, null);
            }
            HealthLogger healthLogger = this.this$0.passthroughHealthStageLogger;
            PendingTimer pendingTimer2 = this.timer;
            Outcome.Ok ok = Outcome.Ok.INSTANCE;
            Pair[] pairArr = new Pair[3];
            StringBuilder sb = new StringBuilder("ANDROID_SDK_");
            AdapterType adapterType = this.this$0.adapter.adapterType();
            pairArr[0] = TuplesKt.to("IntegrationType", sb.append(adapterType != null ? adapterType.name() : null).toString());
            pairArr[1] = TuplesKt.to("CollectDataType", this.passthroughType.name());
            pairArr[2] = TuplesKt.to("OperationResult", "SUCCESS");
            HealthLogger.endTimer$default(healthLogger, pendingTimer2, ok, MapsKt.mapOf(pairArr), null, 8, null);
            ((CollectedDataCallback) getCallback()).onSuccess(collectedDataCreateReaderCollectedData);
            super.onSuccess$terminalsession_release(SdkResponse.INSTANCE.success());
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation
        public SdkRequest sdkRequest() {
            return SdkRequest.INSTANCE.collectData(this.passthroughType);
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.CancelableOperation
        public void startCancel$terminalsession_release(com.stripe.stripeterminal.external.callable.Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            super.startCancel$terminalsession_release(callback);
            this.this$0.adapter.cancelCollectPaymentMethod();
            onCancelSuccess();
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.ExternalOperation, com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.Operation
        public void onFailure$terminalsession_release(TerminalException e) throws IllegalAccessException, InstantiationException {
            Intrinsics.checkNotNullParameter(e, "e");
            ApiError apiError = e.getApiError();
            if (Intrinsics.areEqual(apiError != null ? apiError.getCode() : null, "terminal_reader_collected_data_invalid")) {
                HealthLogger.incrementCounter$default(this.this$0.passthroughHealthDiscreteLogger, null, null, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$CollectDataOperation$onFailure$1
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                        invoke2(builder, counter);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                        Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                        Intrinsics.checkNotNullParameter(it, "it");
                        incrementCounter.invalid_collected_data = it;
                    }
                }, 7, null);
            } else if (!SetsKt.setOf((Object[]) new TerminalErrorCode[]{TerminalErrorCode.CANCELED, TerminalErrorCode.UNSUPPORTED_OPERATION, TerminalErrorCode.REQUEST_TIMED_OUT, TerminalErrorCode.STRIPE_API_CONNECTION_ERROR, TerminalErrorCode.CARD_READ_TIMED_OUT}).contains(e.getErrorCode())) {
                HealthLogger.incrementCounter$default(this.this$0.passthroughHealthDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to("error", e.getErrorCode().name())), null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$CollectDataOperation$onFailure$2
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                        invoke2(builder, counter);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                        Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                        Intrinsics.checkNotNullParameter(it, "it");
                        incrementCounter.unexpected_error = it;
                    }
                }, 5, null);
                Outcome.TerminalError terminalError = new Outcome.TerminalError(e.getErrorCode());
                PendingTimer pendingTimer = this.networkTimer;
                if (pendingTimer != null) {
                    HealthLogger.endTimer$default(this.this$0.passthroughHealthStageLogger, pendingTimer, terminalError, null, null, 12, null);
                }
                HealthLogger healthLogger = this.this$0.passthroughHealthStageLogger;
                PendingTimer pendingTimer2 = this.timer;
                Outcome.TerminalError terminalError2 = terminalError;
                Pair[] pairArr = new Pair[3];
                StringBuilder sb = new StringBuilder("ANDROID_SDK_");
                AdapterType adapterType = this.this$0.adapter.adapterType();
                pairArr[0] = TuplesKt.to("IntegrationType", sb.append(adapterType != null ? adapterType.name() : null).toString());
                pairArr[1] = TuplesKt.to("CollectDataType", this.passthroughType.name());
                pairArr[2] = TuplesKt.to("OperationResult", "FAILURE");
                HealthLogger.endTimer$default(healthLogger, pendingTimer2, terminalError2, MapsKt.mapOf(pairArr), null, 8, null);
            }
            super.onFailure$terminalsession_release(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Amount determineAmountToDisplayForCollection(PaymentIntent intent, Amount defaultAmount) {
        com.stripe.stripeterminal.external.models.PaymentMethodOptions paymentMethodOptions;
        CardPresentOptions cardPresent;
        DynamicCurrencyConversionOptions dynamicCurrencyConversion;
        return (!this.transactionRepository.getDynamicCurrencyConversionOfferPresented() || !Intrinsics.areEqual((Object) this.transactionRepository.getDynamicCurrencyConversionSelected(), (Object) true) || (paymentMethodOptions = intent.getPaymentMethodOptions()) == null || (cardPresent = paymentMethodOptions.getCardPresent()) == null || (dynamicCurrencyConversion = cardPresent.getDynamicCurrencyConversion()) == null) ? defaultAmount : new Amount(dynamicCurrencyConversion.getAmount(), dynamicCurrencyConversion.getCurrency());
    }

    /* JADX INFO: compiled from: TerminalSession.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001a\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;", "", "()V", "IDENTIFIER", "", "checkCustomerCancellationFeature", "", "enableCustomerCancellation", "", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "checkSurchargingFeature", "featureFlags", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkCustomerCancellationFeature(boolean enableCustomerCancellation, DeviceType deviceType) throws TerminalException {
            if (enableCustomerCancellation && !DeviceTypeExtensions.INSTANCE.supportsEnableCustomerCancellation(deviceType)) {
                throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Customer-initiated cancellation is only available on Android-based internet readers.", null, null, 12, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkSurchargingFeature(ReaderFeatureFlags featureFlags, DeviceType deviceType) throws TerminalException {
            if (!featureFlags.enable_terminal_surcharging) {
                throw new TerminalException(TerminalErrorCode.FEATURE_NOT_ENABLED_ON_ACCOUNT, "Terminal Surcharging is not enabled on this account. Contact Stripe support to enable this feature.", null, null, 12, null);
            }
            if (deviceType != null && !DeviceTypeExtensions.INSTANCE.supportsSurcharging(deviceType)) {
                throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Terminal Surcharging is only available on Android-based internet readers.", null, null, 12, null);
            }
        }
    }
}
