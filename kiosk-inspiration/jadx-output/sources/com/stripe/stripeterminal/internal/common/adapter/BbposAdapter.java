package com.stripe.stripeterminal.internal.common.adapter;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.core.bbpos.hardware.DeviceListenerRegistry;
import com.stripe.core.hardware.ReaderInfoController;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.core.hardware.reactive.emv.ClientConfigData;
import com.stripe.core.hardware.reactive.emv.ClientConfigDataSource;
import com.stripe.core.hardware.reactive.emv.ClientConfigDataSourceKt;
import com.stripe.core.hardware.reactive.emv.ReactiveConfigurationListener;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.hardware.updates.ReaderUpdateException;
import com.stripe.core.readerconnection.ConnectionManager;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.readerupdate.UpdateInstaller;
import com.stripe.core.readerupdate.UpdateManager;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.discoverreaders.CancelDiscoverReadersReason;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.DomesticDebitAidsParser;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.ReaderSettings;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.status.DisconnectCause;
import com.stripe.hardware.status.ReaderBatteryStatus;
import com.stripe.hardware.status.ReaderException;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.hardware.status.ReaderPowerEvent;
import com.stripe.hardware.status.ReaderRebootAttempt;
import com.stripe.hardware.status.RebootCause;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.Outcome;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.proto.api.rest.ConnectionType;
import com.stripe.proto.model.common.BBPosHardware;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.model.common.HardwareModel;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderBatteryInfo;
import com.stripe.stripeterminal.external.models.ReaderInputOptions;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.connectandupdate.ConnectAndUpdateStateMachine;
import com.stripe.stripeterminal.internal.common.extensions.ReaderExtensionsKt;
import com.stripe.stripeterminal.internal.common.log.MposReaderDebugLogManager;
import com.stripe.stripeterminal.internal.common.log.MposReaderEventLogger;
import com.stripe.stripeterminal.internal.common.makers.TerminalExceptionMaker;
import com.stripe.stripeterminal.internal.common.p000enum.AdapterType;
import com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.PaymentMethodCollectionType;
import com.stripe.transaction.Settings;
import com.sun.jna.platform.win32.WinError;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.SerialDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.datetime.Clock;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0086\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\b'\u0018\u0000 È\u00012\u00020\u0001:\u001cÇ\u0001È\u0001É\u0001Ê\u0001Ë\u0001Ì\u0001Í\u0001Î\u0001Ï\u0001Ð\u0001Ñ\u0001Ò\u0001Ó\u0001Ô\u0001B\u009b\u0002\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0006\u0010 \u001a\u00020!\u0012\u0006\u0010\"\u001a\u00020#\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020'\u0012\u0006\u0010(\u001a\u00020)\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-\u0012\u0006\u0010.\u001a\u00020/\u0012\u0006\u00100\u001a\u000201\u0012\"\u00102\u001a\u001e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020703j\u0002`8\u0012\u0006\u00109\u001a\u00020:\u0012\u0006\u0010;\u001a\u00020<\u0012\u0016\u0010=\u001a\u0012\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020@0>j\u0002`A\u0012\u0006\u0010B\u001a\u00020C¢\u0006\u0002\u0010DJ\b\u0010[\u001a\u00020\\H\u0016J\b\u0010]\u001a\u00020RH\u0016J\u0010\u0010^\u001a\u00020R2\u0006\u0010_\u001a\u00020`H\u0016J\b\u0010a\u001a\u00020RH\u0016J\b\u0010b\u001a\u00020RH\u0016J\u001a\u0010c\u001a\u0004\u0018\u00010d2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020hH\u0016J\u0010\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020lH\u0016J\b\u0010G\u001a\u00020FH\u0016J\u0010\u0010m\u001a\u00020R2\u0006\u0010n\u001a\u00020oH\u0016J\u0018\u0010p\u001a\u00020R2\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020tH\u0016J\b\u0010u\u001a\u00020RH\u0016J>\u0010v\u001a\n\u0012\u0006\b\u0001\u0012\u0002Hx0w\"\b\b\u0000\u0010x*\u00020y2\u000e\b\b\u0010z\u001a\b\u0012\u0004\u0012\u00020R0Q2\f\u0010{\u001a\b\u0012\u0004\u0012\u0002Hx0|H\u0082H¢\u0006\u0002\u0010}J\u0012\u0010~\u001a\u00020\u007f2\b\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0004J)\u0010\u0082\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u0084\u0001\u0012\u0005\u0012\u00030\u0085\u00010\u0083\u00012\u000f\u0010\u0086\u0001\u001a\n\u0012\u0005\u0012\u00030\u0084\u00010\u0087\u0001H\u0014J\u0014\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u00012\u0006\u0010e\u001a\u00020fH\u0016J\u001b\u0010\u008a\u0001\u001a\n\u0012\u0005\u0012\u00030\u008c\u00010\u008b\u00012\b\u0010\u008d\u0001\u001a\u00030\u0084\u0001H\u0016J\t\u0010\u008e\u0001\u001a\u00020RH\u0016J\u0012\u0010\u008f\u0001\u001a\u00020R2\u0007\u0010\u0090\u0001\u001a\u00020dH\u0016J\u0016\u0010\u0091\u0001\u001a\u00070\u0092\u0001R\u00020\u00002\u0006\u0010e\u001a\u00020fH$J\u001e\u0010\u0093\u0001\u001a\u00070\u0094\u0001R\u00020\u00002\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020tH$J\u0014\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0096\u00012\u0006\u0010e\u001a\u00020fH$J\u0016\u0010\u0097\u0001\u001a\u00070\u0098\u0001R\u00020\u00002\u0006\u0010e\u001a\u00020fH$J\u0015\u0010\u0099\u0001\u001a\u00020R2\n\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u0001H\u0016J3\u0010\u009c\u0001\u001a\u00020f2\u0006\u0010e\u001a\u00020f2\b\u0010\u009d\u0001\u001a\u00030\u009e\u00012\u0016\u0010\u009f\u0001\u001a\u0011\u0012\u0004\u0012\u00020o\u0012\u0004\u0012\u00020R\u0018\u00010 \u0001H\u0014J\u0013\u0010¡\u0001\u001a\u00020R2\b\u0010¢\u0001\u001a\u00030£\u0001H\u0014J\u0013\u0010¤\u0001\u001a\u00020R2\b\u0010¥\u0001\u001a\u00030¦\u0001H\u0014J\u0013\u0010§\u0001\u001a\u00020R2\b\u0010¨\u0001\u001a\u00030©\u0001H\u0016J\t\u0010ª\u0001\u001a\u00020RH\u0016J\u0013\u0010«\u0001\u001a\u00020R2\b\u0010¬\u0001\u001a\u00030\u00ad\u0001H\u0004J\t\u0010®\u0001\u001a\u00020jH\u0016J\u0011\u0010¯\u0001\u001a\u00020R2\u0006\u0010e\u001a\u00020fH\u0016J\u0011\u0010°\u0001\u001a\u00020f2\u0006\u0010e\u001a\u00020fH\u0016J\u0011\u0010±\u0001\u001a\u00020R2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0012\u0010±\u0001\u001a\u00020R2\u0007\u0010²\u0001\u001a\u00020\u0011H\u0002J\u0011\u0010±\u0001\u001a\u00020R2\u0006\u0010s\u001a\u00020\u0013H\u0002J\u0011\u0010±\u0001\u001a\u00020R2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\t\u0010³\u0001\u001a\u00020RH\u0004J\t\u0010´\u0001\u001a\u00020RH\u0004J\u001b\u0010µ\u0001\u001a\u0005\u0018\u00010¶\u00012\r\u0010·\u0001\u001a\b\u0012\u0004\u0012\u00020R0QH\u0016J\u0012\u0010¸\u0001\u001a\u00030\u0096\u00012\u0006\u0010e\u001a\u00020fH\u0004J%\u0010¹\u0001\u001a\u00020R2\u0014\u0010\u009f\u0001\u001a\u000f\u0012\u0004\u0012\u00020o\u0012\u0004\u0012\u00020R0 \u0001H\u0001¢\u0006\u0003\bº\u0001J\t\u0010»\u0001\u001a\u00020RH\u0004J\u0011\u0010¼\u0001\u001a\u00020R2\u0006\u0010e\u001a\u00020fH\u0016J\u0014\u0010½\u0001\u001a\u00030¾\u00012\b\u0010¿\u0001\u001a\u00030À\u0001H\u0002J\t\u0010\u0090\u0001\u001a\u00020RH\u0004J1\u0010Á\u0001\u001a\u00030Â\u00012\b\u0010Ã\u0001\u001a\u00030Â\u00012\b\u0010G\u001a\u0004\u0018\u00010F2\u0007\u0010Ä\u0001\u001a\u00020h2\b\u0010Å\u0001\u001a\u00030Æ\u0001H\u0016R(\u0010G\u001a\u0004\u0018\u00010F2\b\u0010E\u001a\u0004\u0018\u00010F8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u000e\u0010L\u001a\u00020MX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010N\u001a\u0004\u0018\u00010OX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010P\u001a\b\u0012\u0004\u0012\u00020R0QX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020TX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010V\u001a\u00020U2\u0006\u0010E\u001a\u00020U8D@DX\u0084\u000e¢\u0006\f\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R*\u00102\u001a\u001e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020703j\u0002`8X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Õ\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "connectionManager", "Lcom/stripe/core/readerconnection/ConnectionManager;", "updateManager", "Lcom/stripe/core/readerupdate/UpdateManager;", "configListener", "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;", "readerStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "updateListener", "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "updateInstaller", "Lcom/stripe/core/readerupdate/UpdateInstaller;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "readerUpdateController", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "paymentCollectionWrapper", "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "connectAndUpdateStateMachine", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;", "readerInfoController", "Lcom/stripe/core/hardware/ReaderInfoController;", "resourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;", "deviceListener", "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;", "deviceListenerRegistry", "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;", "domesticDebitAidsParser", "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;", "disconnectReasonRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;", "readerInfoRepository", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "singleUpdateHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;", "mposReaderEventLogger", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;", "mposReaderDebugLogManager", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "value", "Lcom/stripe/transaction/CollectiblePayment;", "collectiblePayment", "getCollectiblePayment", "()Lcom/stripe/transaction/CollectiblePayment;", "setCollectiblePayment", "(Lcom/stripe/transaction/CollectiblePayment;)V", "compositeDisposable", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "deviceBusyJob", "Lkotlinx/coroutines/Job;", "endBatteryInfoPolling", "Lkotlin/Function0;", "", "readerDisconnectDisposable", "Lio/reactivex/rxjava3/disposables/SerialDisposable;", "Lcom/stripe/transaction/Settings;", "settings", "getSettings", "()Lcom/stripe/transaction/Settings;", "setSettings", "(Lcom/stripe/transaction/Settings;)V", "adapterType", "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;", "cancelCollectPaymentMethod", "cancelDiscoverReaders", "cancelDiscoverReadersReason", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "cancelInstallUpdate", "cancelReconnectReader", "checkForUpdate", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "failSilently", "", "collectPaymentMethod", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "paymentMethodCollectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "disconnectReader", "disconnectReason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "discoverReaders", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "dispose", "doWhenReaderIdle", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;", "T", "", "producer", "observable", "Lio/reactivex/rxjava3/core/Observable;", "(Lkotlin/jvm/functions/Function0;Lio/reactivex/rxjava3/core/Observable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emvTransactionTypeForDeviceType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "getLocationsForDiscovery", "", "", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "", "getReaderInfo", "Lcom/stripe/hardware/status/ReaderInfo;", "handleAuthResponse", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/hardware/emv/TransactionResult;", "tlvBlob", "init", "installUpdate", "update", "makeConnectReaderOperation", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;", "makeDiscoverReadersOperation", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;", "makeHardwareReader", "Lcom/stripe/core/hardware/Reader;", "makeReconnectReaderOperation", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;", "onChargeAttemptChanged", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "onConnectReader", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "requestReconnection", "Lkotlin/Function1;", "onDisconnect", "disconnectCause", "Lcom/stripe/hardware/status/DisconnectCause;", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onOnlineAuthStateChanged", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/OnlineAuthState;", "onPaymentMethodCollectedForPaymentIntent", "onUnexpectedFailure", "t", "", "readReusableCard", "rebootReader", "reconnectReader", "register", "readerListener", "registerReaderDisconnectHandler", "removeReaderDisconnectHandler", "requestReaderBatteryInfo", "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "endPolling", "requireHardwareReader", "setReconnectionRequester", "setReconnectionRequester$adapter_release", "startReconnect", "startSession", "translateReaderType", "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;", "readerType", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "updatePaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "requestDynamicCurrencyConversion", "apiPaymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "CheckForUpdateOperation", "Companion", "ConnectReaderOperation", "DisconnectReaderOperation", "DiscoverReadersOperation", "DiscoveryResult", "InstallUpdateOperation", "ReaderInteractionResult", "RebootReaderOperation", "ReconnectReaderOperation", "RequestDeviceInformationOperation", "RequestReaderBatteryInfoOperation", "StartSessionOperation", "UpdateOperation", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class BbposAdapter extends ProxiedAdapter {
    public static final String ARMADA_ENDPOINT_TAG_VALUE = "armada";
    public static final String CONNECTION_TYPE_TAG_KEY = "connection_type";
    public static final int DEFAULT_RECONNECTION_MAX_ATTEMPTS = 4;
    public static final long DEFAULT_RECONNECTION_TIMEOUT = 30000;
    public static final String ENDPOINT_TAG_KEY = "endpoint";
    public static final String FAIL_SILENTLY_TAG_KEY = "fail_silently";
    public static final String HARDWARE_VERSION_TAG_KEY = "HardwareVersion";
    public static final String RECONNECTION_OUTCOME_TAG_KEY = "reconnection_outcome";
    public static final String TMS_ENDPOINT_TAG_VALUE = "tms";
    public static final String UNKNOWN = "unknown";
    private final CompositeDisposable compositeDisposable;
    private final ReactiveConfigurationListener configListener;
    private final ConnectAndUpdateStateMachine connectAndUpdateStateMachine;
    private final ConnectionManager connectionManager;
    private Job deviceBusyJob;
    private final TerminalSdkDeviceListenerWrapper deviceListener;
    private final DeviceListenerRegistry deviceListenerRegistry;
    private final DisconnectReasonRepository disconnectReasonRepository;
    private final DomesticDebitAidsParser domesticDebitAidsParser;
    private Function0<Unit> endBatteryInfoPolling;
    private final FeatureFlagsRepository featureFlagsRepository;
    private final LoggerFactory loggerFactory;
    private final MposReaderDebugLogManager mposReaderDebugLogManager;
    private final MposReaderEventLogger mposReaderEventLogger;
    private final PaymentCollectionCoordinatorWrapper paymentCollectionWrapper;
    private final SerialDisposable readerDisconnectDisposable;
    private final ReaderInfoController readerInfoController;
    private final ReaderInfoRepository readerInfoRepository;
    private final ReactiveReaderStatusListener readerStatusListener;
    private final ReaderUpdateController readerUpdateController;
    private final ResourceRepository resourceRepository;
    private final Scheduler scheduler;
    private final CoroutineScope scope;
    private final SessionTokenRepository sessionTokenRepository;
    private final SettingsRepository settingsRepository;
    private final HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> singleUpdateHealthLogger;
    private final TerminalStatusManager statusManager;
    private final TransactionRepository transactionRepository;
    private final UpdateClient updateClient;
    private final UpdateInstaller updateInstaller;
    private final ReactiveReaderUpdateListener updateListener;
    private final UpdateManager updateManager;

    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[TerminalErrorCode.values().length];
            try {
                iArr[TerminalErrorCode.READER_BATTERY_CRITICALLY_LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TerminalErrorCode.BLUETOOTH_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TerminalErrorCode.BLUETOOTH_DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TerminalErrorCode.BLUETOOTH_RECONNECT_STARTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TerminalErrorCode.USB_DISCONNECTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TerminalErrorCode.USB_RECONNECT_STARTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DeviceType.values().length];
            try {
                iArr2[DeviceType.CHIPPER_1X.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[DeviceType.CHIPPER_2X.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[DeviceType.STRIPE_M2.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[DeviceType.WISECUBE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[DeviceType.WISEPAD_3.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[DeviceType.WISEPAD_3S.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[ReaderConfiguration.ReaderType.values().length];
            try {
                iArr3[ReaderConfiguration.ReaderType.MAGSTRIPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[ReaderConfiguration.ReaderType.ICC.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[ReaderConfiguration.ReaderType.NFC.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr3[ReaderConfiguration.ReaderType.MANUAL_ENTRY.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    protected abstract ConnectReaderOperation makeConnectReaderOperation(Reader reader);

    protected abstract DiscoverReadersOperation makeDiscoverReadersOperation(DiscoveryConfiguration config, DiscoveryListener listener);

    protected abstract com.stripe.core.hardware.Reader makeHardwareReader(Reader reader);

    protected abstract ReconnectReaderOperation makeReconnectReaderOperation(Reader reader);

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void onPaymentMethodCollectedForPaymentIntent() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BbposAdapter(UpdateClient updateClient, SessionTokenRepository sessionTokenRepository, Scheduler scheduler, CoroutineScope scope, ConnectionManager connectionManager, UpdateManager updateManager, ReactiveConfigurationListener configListener, ReactiveReaderStatusListener readerStatusListener, ReactiveReaderUpdateListener updateListener, UpdateInstaller updateInstaller, TerminalStatusManager statusManager, SettingsRepository settingsRepository, FeatureFlagsRepository featureFlagsRepository, ReaderUpdateController readerUpdateController, PaymentCollectionCoordinatorWrapper paymentCollectionWrapper, TransactionRepository transactionRepository, ConnectAndUpdateStateMachine connectAndUpdateStateMachine, ReaderInfoController readerInfoController, ResourceRepository resourceRepository, TerminalSdkDeviceListenerWrapper deviceListener, DeviceListenerRegistry deviceListenerRegistry, DomesticDebitAidsParser domesticDebitAidsParser, DisconnectReasonRepository disconnectReasonRepository, ReaderInfoRepository readerInfoRepository, HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> singleUpdateHealthLogger, MposReaderEventLogger mposReaderEventLogger, MposReaderDebugLogManager mposReaderDebugLogManager, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger, LoggerFactory loggerFactory) {
        super(logger);
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
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(readerUpdateController, "readerUpdateController");
        Intrinsics.checkNotNullParameter(paymentCollectionWrapper, "paymentCollectionWrapper");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(connectAndUpdateStateMachine, "connectAndUpdateStateMachine");
        Intrinsics.checkNotNullParameter(readerInfoController, "readerInfoController");
        Intrinsics.checkNotNullParameter(resourceRepository, "resourceRepository");
        Intrinsics.checkNotNullParameter(deviceListener, "deviceListener");
        Intrinsics.checkNotNullParameter(deviceListenerRegistry, "deviceListenerRegistry");
        Intrinsics.checkNotNullParameter(domesticDebitAidsParser, "domesticDebitAidsParser");
        Intrinsics.checkNotNullParameter(disconnectReasonRepository, "disconnectReasonRepository");
        Intrinsics.checkNotNullParameter(readerInfoRepository, "readerInfoRepository");
        Intrinsics.checkNotNullParameter(singleUpdateHealthLogger, "singleUpdateHealthLogger");
        Intrinsics.checkNotNullParameter(mposReaderEventLogger, "mposReaderEventLogger");
        Intrinsics.checkNotNullParameter(mposReaderDebugLogManager, "mposReaderDebugLogManager");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.updateClient = updateClient;
        this.sessionTokenRepository = sessionTokenRepository;
        this.scheduler = scheduler;
        this.scope = scope;
        this.connectionManager = connectionManager;
        this.updateManager = updateManager;
        this.configListener = configListener;
        this.readerStatusListener = readerStatusListener;
        this.updateListener = updateListener;
        this.updateInstaller = updateInstaller;
        this.statusManager = statusManager;
        this.settingsRepository = settingsRepository;
        this.featureFlagsRepository = featureFlagsRepository;
        this.readerUpdateController = readerUpdateController;
        this.paymentCollectionWrapper = paymentCollectionWrapper;
        this.transactionRepository = transactionRepository;
        this.connectAndUpdateStateMachine = connectAndUpdateStateMachine;
        this.readerInfoController = readerInfoController;
        this.resourceRepository = resourceRepository;
        this.deviceListener = deviceListener;
        this.deviceListenerRegistry = deviceListenerRegistry;
        this.domesticDebitAidsParser = domesticDebitAidsParser;
        this.disconnectReasonRepository = disconnectReasonRepository;
        this.readerInfoRepository = readerInfoRepository;
        this.singleUpdateHealthLogger = singleUpdateHealthLogger;
        this.mposReaderEventLogger = mposReaderEventLogger;
        this.mposReaderDebugLogManager = mposReaderDebugLogManager;
        this.loggerFactory = loggerFactory;
        this.compositeDisposable = new CompositeDisposable();
        this.readerDisconnectDisposable = new SerialDisposable();
        this.endBatteryInfoPolling = new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$endBatteryInfoPolling$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
    }

    protected final Settings getSettings() {
        return this.settingsRepository.getSettings();
    }

    protected final void setSettings(Settings value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.settingsRepository.setSettings(value);
    }

    private final CollectiblePayment getCollectiblePayment() {
        return this.transactionRepository.getCollectiblePayment();
    }

    private final void setCollectiblePayment(CollectiblePayment collectiblePayment) {
        this.transactionRepository.setCollectiblePayment(collectiblePayment);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void init() {
        dispose();
        this.deviceListenerRegistry.registerListener(this.deviceListener);
        this.paymentCollectionWrapper.setPaymentCollectionListener(new BbposAdapterPaymentCollectionListener(this.statusManager, this.transactionRepository, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposAdapterPaymentCollectionListener.class))));
        register(this.configListener);
        register(this.readerStatusListener);
        registerReaderDisconnectHandler();
        register(this.updateListener);
        register(this.updateInstaller);
        this.mposReaderEventLogger.init();
        this.mposReaderDebugLogManager.init();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void dispose() {
        this.mposReaderEventLogger.dispose();
        this.mposReaderDebugLogManager.dispose();
        this.deviceListenerRegistry.unregisterListener(this.deviceListener);
        this.disconnectReasonRepository.clearDisconnectReason();
        this.compositeDisposable.clear();
        this.readerDisconnectDisposable.set(null);
        this.paymentCollectionWrapper.setPaymentCollectionListener(null);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.transaction.ChargeAttemptChangeListener
    public void onChargeAttemptChanged(ChargeAttempt chargeAttempt) {
        this.paymentCollectionWrapper.onChargeAttemptChanged(chargeAttempt);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelCollectPaymentMethod() {
        this.paymentCollectionWrapper.cancelCollectPaymentMethod();
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void cancelReconnectReader() {
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        if (operationInProgress instanceof ReconnectReaderOperation) {
            Adapter.ReaderOperation<?> operationInProgress2 = getOperationInProgress();
            Intrinsics.checkNotNull(operationInProgress2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ReconnectReaderOperation");
            ((ReconnectReaderOperation) operationInProgress2).cancel();
        } else if (operationInProgress instanceof Adapter.NullOperation) {
            setOperationToCancel(Reflection.getOrCreateKotlinClass(ReconnectReaderOperation.class));
        } else {
            logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(ReconnectReaderOperation.class));
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelDiscoverReaders(CancelDiscoverReadersReason cancelDiscoverReadersReason) throws InterruptedException {
        Intrinsics.checkNotNullParameter(cancelDiscoverReadersReason, "cancelDiscoverReadersReason");
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        if (operationInProgress instanceof DiscoverReadersOperation) {
            Adapter.ReaderOperation<?> operationInProgress2 = getOperationInProgress();
            Intrinsics.checkNotNull(operationInProgress2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation");
            ((DiscoverReadersOperation) operationInProgress2).cancel(cancelDiscoverReadersReason);
        } else if (operationInProgress instanceof Adapter.NullOperation) {
            setOperationToCancel(Reflection.getOrCreateKotlinClass(DiscoverReadersOperation.class));
        } else {
            logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(DiscoverReadersOperation.class));
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelInstallUpdate() {
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        if (operationInProgress instanceof InstallUpdateOperation) {
            Adapter.ReaderOperation<?> operationInProgress2 = getOperationInProgress();
            Intrinsics.checkNotNull(operationInProgress2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.InstallUpdateOperation");
            ((InstallUpdateOperation) operationInProgress2).startCancel();
        } else if (operationInProgress instanceof Adapter.NullOperation) {
            setOperationToCancel(Reflection.getOrCreateKotlinClass(InstallUpdateOperation.class));
        } else {
            logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(InstallUpdateOperation.class));
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSoftwareUpdate checkForUpdate(Reader reader, boolean failSilently) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        getLogger().d("checkForUpdate", new Pair[0]);
        setOperationInProgress(new CheckForUpdateOperation(this, reader, failSilently));
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        Intrinsics.checkNotNull(operationInProgress, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.CheckForUpdateOperation");
        return ((CheckForUpdateOperation) operationInProgress).execute();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData collectPaymentMethod(PaymentMethodCollectionType paymentMethodCollectionType) {
        Intrinsics.checkNotNullParameter(paymentMethodCollectionType, "paymentMethodCollectionType");
        getLogger().d("collectPaymentMethod", TuplesKt.to(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, paymentMethodCollectionType.getAmount().toString()), TuplesKt.to("type", paymentMethodCollectionType.toString()));
        return this.paymentCollectionWrapper.collectPaymentMethod(paymentMethodCollectionType);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion, PaymentIntentUpdater apiPaymentIntentUpdater) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(apiPaymentIntentUpdater, "apiPaymentIntentUpdater");
        return apiPaymentIntentUpdater.invoke(paymentIntent, collectiblePayment, requestDynamicCurrencyConversion);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    /* JADX INFO: renamed from: collectiblePayment */
    public CollectiblePayment getCollectiblePayment() throws TerminalException {
        CollectiblePayment collectiblePayment = getCollectiblePayment();
        if (collectiblePayment != null) {
            return collectiblePayment;
        }
        throw new TerminalException(TerminalErrorCode.CARD_REMOVED, "Failed to retrieve payment method data", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    protected Reader onConnectReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function1<? super DisconnectReason, Unit> requestReconnection) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        setRequestReconnection(requestReconnection);
        setOperationInProgress(makeConnectReaderOperation(reader));
        this.paymentCollectionWrapper.updateDevicePaymentCapability(reader);
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        Intrinsics.checkNotNull(operationInProgress, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation");
        return ((ConnectReaderOperation) operationInProgress).execute();
    }

    protected final void startReconnect() {
        Function1<DisconnectReason, Unit> requestReconnection = getRequestReconnection();
        if (requestReconnection != null) {
            requestReconnection.invoke(this.disconnectReasonRepository.consumeDisconnectReason());
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public Reader reconnectReader(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        getLogger().d("reconnectReader", new Pair[0]);
        setOperationInProgress(makeReconnectReaderOperation(reader));
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        Intrinsics.checkNotNull(operationInProgress, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ReconnectReaderOperation");
        return ((ReconnectReaderOperation) operationInProgress).execute();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void rebootReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        getLogger().d("rebootReader", new Pair[0]);
        setOperationInProgress(new RebootReaderOperation(this, requireHardwareReader(reader)));
        getOperationInProgress().execute();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void disconnectReader(DisconnectReason disconnectReason) throws TerminalException {
        Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
        getLogger().d("disconnectReader. disconnectReason: " + disconnectReason, new Pair[0]);
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (connectedReader == null) {
            getLogger().w("skipping disconnectReader", new Pair[0]);
        } else {
            setOperationInProgress(new DisconnectReaderOperation(this, requireHardwareReader(connectedReader)));
            getOperationInProgress().execute();
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void discoverReaders(DiscoveryConfiguration config, DiscoveryListener listener) throws TerminalException {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        getLogger().d("discoverReaders", new Pair[0]);
        setOperationInProgress(makeDiscoverReadersOperation(config, listener));
        getOperationInProgress().execute();
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public Deferred<TransactionResult> handleAuthResponse(String tlvBlob) {
        Intrinsics.checkNotNullParameter(tlvBlob, "tlvBlob");
        return this.paymentCollectionWrapper.handleAuthResponse(tlvBlob);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void installUpdate(ReaderSoftwareUpdate update) throws TerminalException {
        Intrinsics.checkNotNullParameter(update, "update");
        getLogger().d("installUpdate", new Pair[0]);
        setOperationInProgress(new InstallUpdateOperation(this, update));
        getOperationInProgress().execute();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData readReusableCard() {
        getLogger().d("readReusableCard", new Pair[0]);
        return this.paymentCollectionWrapper.readReusableCard();
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void startSession(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        getLogger().d("startSession", new Pair[0]);
        setOperationInProgress(new StartSessionOperation(this, reader));
        getOperationInProgress().execute();
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public ReaderBatteryInfo requestReaderBatteryInfo(Function0<Unit> endPolling) {
        Intrinsics.checkNotNullParameter(endPolling, "endPolling");
        getLogger().d("requestReaderBatteryInfo", new Pair[0]);
        this.endBatteryInfoPolling = endPolling;
        setOperationInProgress(new RequestReaderBatteryInfoOperation());
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        Intrinsics.checkNotNull(operationInProgress, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.RequestReaderBatteryInfoOperation");
        return ((RequestReaderBatteryInfoOperation) operationInProgress).execute();
    }

    private final void register(ReactiveConfigurationListener configListener) {
        this.compositeDisposable.addAll(configListener.getReaderSettingsObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(ReaderSettings settings) {
                String merchantNameAndLocation;
                DeviceType deviceType;
                HardwareModel hardwareModel;
                BBPosHardware bBPosHardware;
                Intrinsics.checkNotNullParameter(settings, "settings");
                Reader connectedReader = BbposAdapter.this.statusManager.getConnectedReader();
                if (((connectedReader == null || (deviceType = connectedReader.getDeviceType()) == null || (hardwareModel = deviceType.getHardwareModel()) == null || (bBPosHardware = hardwareModel.bbpos_hardware) == null) ? null : ClientConfigDataSourceKt.getStoredConfigSource(bBPosHardware)) == ClientConfigDataSource.EMV_TAG_CONFIG_HASH) {
                    merchantNameAndLocation = settings.getConfigHash();
                } else {
                    merchantNameAndLocation = settings.getMerchantNameAndLocation();
                }
                if (merchantNameAndLocation == null) {
                    merchantNameAndLocation = "";
                }
                BbposAdapter bbposAdapter = BbposAdapter.this;
                if (bbposAdapter.getOperationInProgress() instanceof CheckForUpdateOperation) {
                    ClientConfigData clientConfigData = ClientConfigData.INSTANCE.parseClientConfigData(merchantNameAndLocation);
                    Adapter.ReaderOperation operationInProgress = bbposAdapter.getOperationInProgress();
                    Intrinsics.checkNotNull(operationInProgress, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.CheckForUpdateOperation");
                    ((CheckForUpdateOperation) operationInProgress).onReturnCurrentVersion(clientConfigData);
                }
                String domesticDebitAidList = settings.getDomesticDebitAidList();
                if (domesticDebitAidList != null) {
                    BbposAdapter bbposAdapter2 = BbposAdapter.this;
                    if (bbposAdapter2.getOperationInProgress() instanceof CheckForUpdateOperation) {
                        bbposAdapter2.transactionRepository.setDomesticDebitAids(bbposAdapter2.domesticDebitAidsParser.parse(domesticDebitAidList));
                    }
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }));
    }

    protected final void registerReaderDisconnectHandler() {
        this.readerDisconnectDisposable.set(this.readerStatusListener.getReaderDisconnectObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.registerReaderDisconnectHandler.1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(DisconnectCause it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                if (operationInProgress instanceof DisconnectReaderOperation) {
                    ((DisconnectReaderOperation) operationInProgress).onDisconnect();
                } else {
                    if (operationInProgress instanceof InstallUpdateOperation) {
                        return;
                    }
                    BbposAdapter.this.onDisconnect(it);
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.registerReaderDisconnectHandler.2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }));
    }

    protected final void removeReaderDisconnectHandler() {
        this.readerDisconnectDisposable.set(null);
    }

    private final void register(ReactiveReaderStatusListener readerListener) {
        this.compositeDisposable.addAll(readerListener.getReaderConnectObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.3
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(com.stripe.core.hardware.Reader it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (BbposAdapter.this.getOperationInProgress() instanceof ConnectReaderOperation) {
                    Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                    Intrinsics.checkNotNull(operationInProgress, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation");
                    ((ConnectReaderOperation) operationInProgress).onConnectDevice(it);
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.4
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), readerListener.getReaderInfoObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.5
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(ReaderInfo info) {
                Intrinsics.checkNotNullParameter(info, "info");
                Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                if (operationInProgress instanceof ConnectReaderOperation) {
                    ((ConnectReaderOperation) operationInProgress).onReportReaderInfo(info);
                    return;
                }
                if (operationInProgress instanceof RequestDeviceInformationOperation) {
                    return;
                }
                if (!(operationInProgress instanceof DiscoverReadersOperation)) {
                    BbposAdapter.this.logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(ConnectReaderOperation.class));
                    return;
                }
                BbposAdapter bbposAdapter = BbposAdapter.this;
                if (bbposAdapter instanceof BbposUsbAdapter) {
                    return;
                }
                bbposAdapter.logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(DiscoverReadersOperation.class));
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.6
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), readerListener.getReaderDiscoveryObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.7
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Set<? extends com.stripe.core.hardware.Reader> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (BbposAdapter.this.getOperationInProgress() instanceof DiscoverReadersOperation) {
                    Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                    Intrinsics.checkNotNull(operationInProgress, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation");
                    ((DiscoverReadersOperation) operationInProgress).onUpdateDiscoveredReaders(it);
                    return;
                }
                BbposAdapter.this.logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(DiscoverReadersOperation.class));
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.8
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), readerListener.getReaderLowBatteryObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.9
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(ReaderBatteryStatus it) {
                Intrinsics.checkNotNullParameter(it, "it");
                BbposAdapter.this.statusManager.reportLowBatteryWarning();
                if (it == ReaderBatteryStatus.CRITICALLY_LOW) {
                    BbposAdapter.this.disconnectReasonRepository.setDisconnectReason(DisconnectReason.CRITICALLY_LOW_BATTERY);
                    BbposAdapter.this.onFailure(new TerminalException(TerminalErrorCode.READER_BATTERY_CRITICALLY_LOW, "Reader battery is critically low.", null, null, 12, null));
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.10
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), readerListener.getReaderDeviceBusyObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.11
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Unit it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Job job = BbposAdapter.this.deviceBusyJob;
                if (job != null ? job.isCompleted() : true) {
                    BbposAdapter bbposAdapter = BbposAdapter.this;
                    bbposAdapter.deviceBusyJob = BuildersKt__Builders_commonKt.launch$default(bbposAdapter.scope, null, null, new AnonymousClass1(BbposAdapter.this, null), 3, null);
                }
            }

            /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$register$11$1, reason: invalid class name */
            /* JADX INFO: compiled from: BbposAdapter.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
            @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$register$11$1", f = "BbposAdapter.kt", i = {}, l = {505}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                int label;
                final /* synthetic */ BbposAdapter this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(BbposAdapter bbposAdapter, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.this$0 = bbposAdapter;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.this$0, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        Duration.Companion companion = Duration.INSTANCE;
                        this.label = 1;
                        if (DelayKt.m2320delayVtjQ1oo(DurationKt.toDuration(1, DurationUnit.SECONDS), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    try {
                        this.this$0.update();
                    } catch (Exception e) {
                        this.this$0.onUnexpectedFailure(e);
                    }
                    return Unit.INSTANCE;
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.12
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), readerListener.getReaderExceptionObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.13
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.14
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), readerListener.getReaderRebootAttemptObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.15

            /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$register$15$WhenMappings */
            /* JADX INFO: compiled from: BbposAdapter.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[RebootCause.values().length];
                    try {
                        iArr[RebootCause.SDK_REQUESTED_REBOOT.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[RebootCause.FIRMWARE_SELF_TEST.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[RebootCause.UNKNOWN.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[RebootCause.RECOVERY_ATTEMPT.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[RebootCause.WATCHDOG_TIMEOUT.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(ReaderRebootAttempt it) {
                DisconnectReason disconnectReason;
                Intrinsics.checkNotNullParameter(it, "it");
                DisconnectReasonRepository disconnectReasonRepository = BbposAdapter.this.disconnectReasonRepository;
                int i = WhenMappings.$EnumSwitchMapping$0[it.getCause().ordinal()];
                if (i == 1) {
                    disconnectReason = DisconnectReason.REBOOT_REQUESTED;
                } else if (i == 2) {
                    disconnectReason = DisconnectReason.SECURITY_REBOOT;
                } else {
                    if (i != 3 && i != 4 && i != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    disconnectReason = DisconnectReason.UNKNOWN;
                }
                disconnectReasonRepository.setDisconnectReason(disconnectReason);
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.16
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), readerListener.getReaderPowerEventObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.17
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(ReaderPowerEvent it) {
                Intrinsics.checkNotNullParameter(it, "it");
                BbposAdapter.this.disconnectReasonRepository.setDisconnectReason(DisconnectReason.POWERED_OFF);
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.18
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }));
    }

    protected void onDisconnect(DisconnectCause disconnectCause) {
        Intrinsics.checkNotNullParameter(disconnectCause, "disconnectCause");
        this.endBatteryInfoPolling.invoke();
    }

    private final void register(ReactiveReaderUpdateListener listener) {
        this.compositeDisposable.addAll(listener.getReaderUpdateExceptionObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.19
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(ReaderUpdateException it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (BbposAdapter.this.getOperationInProgress() instanceof UpdateOperation) {
                    Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                    InstallUpdateOperation installUpdateOperation = operationInProgress instanceof InstallUpdateOperation ? (InstallUpdateOperation) operationInProgress : null;
                    if (installUpdateOperation == null || !installUpdateOperation.getCancelled()) {
                        Adapter.ReaderOperation operationInProgress2 = BbposAdapter.this.getOperationInProgress();
                        Intrinsics.checkNotNull(operationInProgress2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.UpdateOperation<*>");
                        ((UpdateOperation) operationInProgress2).onUpdateException(it);
                    }
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.20
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }));
    }

    private final void register(UpdateInstaller updateInstaller) {
        this.compositeDisposable.addAll(updateInstaller.getReaderUpdateExceptionObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.21
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(ReaderUpdateException it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                UpdateOperation updateOperation = operationInProgress instanceof UpdateOperation ? (UpdateOperation) operationInProgress : null;
                if (updateOperation != null) {
                    updateOperation.onUpdateException(it);
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.22
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), updateInstaller.getReaderUpdateCompleteObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.23
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Unit it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                InstallUpdateOperation installUpdateOperation = operationInProgress instanceof InstallUpdateOperation ? (InstallUpdateOperation) operationInProgress : null;
                if (installUpdateOperation != null) {
                    installUpdateOperation.completeUpdates();
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.24
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), updateInstaller.getReaderUpdateProgressObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.25
            @Override // io.reactivex.rxjava3.functions.Consumer
            public /* bridge */ /* synthetic */ void accept(Object obj) {
                accept(((Number) obj).floatValue());
            }

            public final void accept(float f) {
                Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                InstallUpdateOperation installUpdateOperation = operationInProgress instanceof InstallUpdateOperation ? (InstallUpdateOperation) operationInProgress : null;
                if (installUpdateOperation != null) {
                    installUpdateOperation.onReportUpdateProgress(f);
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.26
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), updateInstaller.getReaderUpdateCancelledObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.27
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Unit it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                InstallUpdateOperation installUpdateOperation = operationInProgress instanceof InstallUpdateOperation ? (InstallUpdateOperation) operationInProgress : null;
                if (installUpdateOperation != null) {
                    installUpdateOperation.completeCancel();
                }
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.28
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }), updateInstaller.getReaderUpdateDownloadCompleteObservable().observeOn(this.scheduler).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.29
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Unit it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Adapter.ReaderOperation operationInProgress = BbposAdapter.this.getOperationInProgress();
                Intrinsics.checkNotNull(operationInProgress, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.InstallUpdateOperation");
                ((InstallUpdateOperation) operationInProgress).onCompleteDownload();
            }
        }, new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.register.30
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BbposAdapter.this.onUnexpectedFailure(p0);
            }
        }));
    }

    protected final synchronized void update() {
        this.connectAndUpdateStateMachine.update(this.updateManager.getSummary(), this.connectionManager.getSummary());
    }

    protected final void onUnexpectedFailure(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        getLogger().e(t);
        onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected failure", t, null, 8, null));
    }

    protected void onFailure(TerminalException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        switch (WhenMappings.$EnumSwitchMapping$0[e.getErrorCode().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                this.paymentCollectionWrapper.onReaderDisconnected();
                break;
            default:
                this.paymentCollectionWrapper.cancelCollectPaymentMethod();
                break;
        }
        this.connectionManager.endOperation();
        this.updateManager.endOperation();
        update();
        getOperationInProgress().setException(e);
    }

    protected Map<String, Location> getLocationsForDiscovery(List<String> deviceSerials) throws TerminalException {
        Intrinsics.checkNotNullParameter(deviceSerials, "deviceSerials");
        return this.resourceRepository.getReaderLocations(deviceSerials);
    }

    protected final EmvTransactionType emvTransactionTypeForDeviceType(DeviceType deviceType) throws TerminalException {
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        switch (WhenMappings.$EnumSwitchMapping$1[deviceType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return EmvTransactionType.QUICK;
            case 5:
            case 6:
                return EmvTransactionType.TRADITIONAL;
            default:
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected device type: " + deviceType, null, null, 12, null);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00050\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2", f = "BbposAdapter.kt", i = {0}, l = {WinError.ERROR_DBG_RIPEXCEPTION, WinError.ERROR_CHECKING_FILE_SYSTEM}, m = "invokeSuspend", n = {"$this$callbackFlow"}, s = {"L$0"})
    public static final class AnonymousClass2<T> extends SuspendLambda implements Function2<ProducerScope<? super ReaderInteractionResult<? extends T>>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Observable<T> $observable;
        final /* synthetic */ Function0<Unit> $producer;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Observable<T> observable, Function0<Unit> function0, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$observable = observable;
            this.$producer = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = BbposAdapter.this.new AnonymousClass2(this.$observable, this.$producer, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super ReaderInteractionResult<? extends T>> producerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x00a6, code lost:
        
            if (kotlinx.coroutines.channels.ProduceKt.awaitClose(r1, new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.AnonymousClass2.C00562(), r8) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L24
                if (r1 == r4) goto L1c
                if (r1 != r3) goto L14
                kotlin.ResultKt.throwOnFailure(r9)
                goto La9
            L14:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L1c:
                java.lang.Object r1 = r8.L$0
                kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
                kotlin.ResultKt.throwOnFailure(r9)
                goto L4d
            L24:
                kotlin.ResultKt.throwOnFailure(r9)
                java.lang.Object r9 = r8.L$0
                r1 = r9
                kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
                com.stripe.stripeterminal.internal.common.adapter.BbposAdapter r9 = com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.this
                com.stripe.core.transaction.TransactionRepository r9 = com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.access$getTransactionRepository$p(r9)
                kotlinx.coroutines.flow.StateFlow r9 = r9.getCardStatusFlow()
                kotlinx.coroutines.flow.Flow r9 = (kotlinx.coroutines.flow.Flow) r9
                com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$1 r5 = new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$1
                r5.<init>(r2)
                kotlin.jvm.functions.Function2 r5 = (kotlin.jvm.functions.Function2) r5
                r6 = r8
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r8.L$0 = r1
                r8.label = r4
                java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt.first(r9, r5, r6)
                if (r9 != r0) goto L4d
                goto La8
            L4d:
                io.reactivex.rxjava3.core.Observable<T> r9 = r8.$observable
                com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$valueSubscription$1 r4 = new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$valueSubscription$1
                r4.<init>()
                io.reactivex.rxjava3.functions.Consumer r4 = (io.reactivex.rxjava3.functions.Consumer) r4
                io.reactivex.rxjava3.disposables.Disposable r9 = r9.subscribe(r4)
                java.lang.String r4 = "subscribe(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r4)
                com.stripe.stripeterminal.internal.common.adapter.BbposAdapter r5 = com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.this
                com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener r5 = com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.access$getReaderStatusListener$p(r5)
                io.reactivex.rxjava3.core.Observable r5 = r5.getReaderExceptionObservable()
                com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$exceptionSubscription$1 r6 = new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$exceptionSubscription$1
                r6.<init>()
                io.reactivex.rxjava3.functions.Consumer r6 = (io.reactivex.rxjava3.functions.Consumer) r6
                io.reactivex.rxjava3.disposables.Disposable r5 = r5.subscribe(r6)
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
                com.stripe.stripeterminal.internal.common.adapter.BbposAdapter r6 = com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.this
                com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener r6 = com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.access$getReaderStatusListener$p(r6)
                io.reactivex.rxjava3.core.Observable r6 = r6.getReaderDeviceBusyObservable()
                com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$deviceBusySubscription$1 r7 = new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$deviceBusySubscription$1
                r7.<init>()
                io.reactivex.rxjava3.functions.Consumer r7 = (io.reactivex.rxjava3.functions.Consumer) r7
                io.reactivex.rxjava3.disposables.Disposable r6 = r6.subscribe(r7)
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r4)
                kotlin.jvm.functions.Function0<kotlin.Unit> r4 = r8.$producer
                r4.invoke()
                com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$2 r4 = new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$2
                r4.<init>()
                kotlin.jvm.functions.Function0 r4 = (kotlin.jvm.functions.Function0) r4
                r9 = r8
                kotlin.coroutines.Continuation r9 = (kotlin.coroutines.Continuation) r9
                r8.L$0 = r2
                r8.label = r3
                java.lang.Object r9 = kotlinx.coroutines.channels.ProduceKt.awaitClose(r1, r4, r9)
                if (r9 != r0) goto La9
            La8:
                return r0
            La9:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: BbposAdapter.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "T", "", "it", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2$1", f = "BbposAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<ContactCardSlotState, Continuation<? super Boolean>, Object> {
            /* synthetic */ Object L$0;
            int label;

            public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ContactCardSlotState contactCardSlotState, Continuation<? super Boolean> continuation) {
                return ((AnonymousClass1) create(contactCardSlotState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(((ContactCardSlotState) this.L$0) == ContactCardSlotState.EMPTY);
            }
        }
    }

    private final <T> Object doWhenReaderIdle(Function0<Unit> function0, Observable<T> observable, Continuation<? super ReaderInteractionResult<? extends T>> continuation) {
        return FlowKt.first(FlowKt.callbackFlow(new AnonymousClass2(observable, function0, null)), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b¢\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\f\u0012\u0004\u0012\u0002H\u00010\u0002R\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\"\u0010\u001a\u001a\u00020\u0017*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0004R'\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00068DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0016\u0010\f\u001a\u0004\u0018\u00010\rX\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001d"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;", "T", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V", "healthMetricTags", "", "", "getHealthMetricTags", "()Ljava/util/Map;", "healthMetricTags$delegate", "Lkotlin/Lazy;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "getReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "updateStageTimer", "Lcom/stripe/jvmcore/logging/PendingTimer;", "getUpdateStageTimer", "()Lcom/stripe/jvmcore/logging/PendingTimer;", "setUpdateStageTimer", "(Lcom/stripe/jvmcore/logging/PendingTimer;)V", "onUpdateException", "", "e", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "addEnumTag", "connectionType", "Lcom/stripe/proto/api/rest/ConnectionType;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    abstract class UpdateOperation<T> extends Adapter.ReaderOperation<T> {

        /* JADX INFO: renamed from: healthMetricTags$delegate, reason: from kotlin metadata */
        private final Lazy healthMetricTags;
        private final Reader reader;
        private PendingTimer updateStageTimer;

        public UpdateOperation() {
            super();
            this.reader = BbposAdapter.this.statusManager.getConnectedReader();
            this.healthMetricTags = LazyKt.lazy(new Function0<Map<String, String>>(this) { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$UpdateOperation$healthMetricTags$2
                final /* synthetic */ BbposAdapter.UpdateOperation<T> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Map<String, String> invoke() {
                    String hardwareVersion;
                    Pair[] pairArr = new Pair[1];
                    Reader reader = this.this$0.getReader();
                    if (reader == null || (hardwareVersion = reader.getHardwareVersion()) == null) {
                        hardwareVersion = "unknown";
                    }
                    pairArr[0] = TuplesKt.to("HardwareVersion", hardwareVersion);
                    Map<String, String> mapMutableMapOf = MapsKt.mutableMapOf(pairArr);
                    BbposAdapter.UpdateOperation<T> updateOperation = this.this$0;
                    Reader reader2 = updateOperation.getReader();
                    updateOperation.addEnumTag(mapMutableMapOf, reader2 != null ? ReaderExtensionsKt.getConnectionType(reader2) : null);
                    return mapMutableMapOf;
                }
            });
            getDeferred().invokeOnCompletion(new Function1<Throwable, Unit>(this) { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.UpdateOperation.1
                final /* synthetic */ UpdateOperation<T> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    Outcome.GenericError terminalError;
                    PendingTimer updateStageTimer = this.this$0.getUpdateStageTimer();
                    if (updateStageTimer != null) {
                        BbposAdapter bbposAdapter = bbposAdapter;
                        UpdateOperation<T> updateOperation = this.this$0;
                        if (th == null) {
                            terminalError = Outcome.Ok.INSTANCE;
                        } else {
                            terminalError = th instanceof TerminalException ? new Outcome.TerminalError(((TerminalException) th).getErrorCode()) : Outcome.GenericError.INSTANCE;
                        }
                        HealthLogger.endTimer$default(bbposAdapter.singleUpdateHealthLogger, updateStageTimer, terminalError, updateOperation.getHealthMetricTags(), null, 8, null);
                    }
                }
            });
        }

        protected Reader getReader() {
            return this.reader;
        }

        protected final Map<String, String> getHealthMetricTags() {
            return (Map) this.healthMetricTags.getValue();
        }

        protected final PendingTimer getUpdateStageTimer() {
            return this.updateStageTimer;
        }

        protected final void setUpdateStageTimer(PendingTimer pendingTimer) {
            this.updateStageTimer = pendingTimer;
        }

        public final void onUpdateException(ReaderUpdateException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            BbposAdapter.this.onFailure(TerminalExceptionMaker.INSTANCE.fromReaderUpdateException(e));
        }

        protected final void addEnumTag(Map<String, String> map, ConnectionType connectionType) {
            Intrinsics.checkNotNullParameter(map, "<this>");
            if (connectionType != null) {
                map.put(BbposAdapter.CONNECTION_TYPE_TAG_KEY, connectionType.name());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082@¢\u0006\u0002\u0010\rJ\n\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "failSilently", "", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/Reader;Z)V", "getReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "checkTmsTargetVersion", "Lkotlinx/coroutines/flow/Flow;", "(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "execute", "onReturnCurrentVersion", "", "data", "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class CheckForUpdateOperation extends UpdateOperation<ReaderSoftwareUpdate> {
        private final boolean failSilently;
        private final Reader reader;
        final /* synthetic */ BbposAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CheckForUpdateOperation(BbposAdapter bbposAdapter, Reader reader, boolean z) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = bbposAdapter;
            this.reader = reader;
            this.failSilently = z;
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.UpdateOperation
        protected Reader getReader() {
            return this.reader;
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public ReaderSoftwareUpdate execute() throws TerminalException {
            setUpdateStageTimer(HealthLogger.startTimer$default(this.this$0.singleUpdateHealthLogger, null, new Function2<SingleUpdateScope.Builder, Timer, Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$CheckForUpdateOperation$execute$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SingleUpdateScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SingleUpdateScope.Builder startTimer, Timer it) {
                    Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                    Intrinsics.checkNotNullParameter(it, "it");
                    startTimer.check = it;
                }
            }, 1, null));
            getHealthMetricTags().put(BbposAdapter.FAIL_SILENTLY_TAG_KEY, String.valueOf(this.failSilently));
            this.this$0.updateManager.startCheckForUpdates();
            this.this$0.update();
            return get();
        }

        public final void onReturnCurrentVersion(ClientConfigData data) {
            Intrinsics.checkNotNullParameter(data, "data");
            BuildersKt__Builders_commonKt.launch$default(this.this$0.scope, null, null, new BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1(this, data, this.this$0, null), 3, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object checkTmsTargetVersion(Reader reader, Continuation<? super Flow<ReaderSoftwareUpdate>> continuation) {
            return FlowKt.callbackFlow(new BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2(this.this$0, reader, this, null));
        }
    }

    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;", "Ljava/lang/Void;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", "update", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V", "cancelled", "", "getCancelled", "()Z", "setCancelled", "(Z)V", "completeCancel", "", "completeUpdates", "execute", "onCompleteDownload", "onReportUpdateProgress", "progress", "", "startCancel", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class InstallUpdateOperation extends UpdateOperation<Void> {
        private boolean cancelled;
        final /* synthetic */ BbposAdapter this$0;
        private final ReaderSoftwareUpdate update;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InstallUpdateOperation(BbposAdapter bbposAdapter, ReaderSoftwareUpdate update) {
            super();
            Intrinsics.checkNotNullParameter(update, "update");
            this.this$0 = bbposAdapter;
            this.update = update;
        }

        public final boolean getCancelled() {
            return this.cancelled;
        }

        public final void setCancelled(boolean z) {
            this.cancelled = z;
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public Void execute() {
            boolean z = true;
            setUpdateStageTimer(HealthLogger.startTimer$default(this.this$0.singleUpdateHealthLogger, null, new Function2<SingleUpdateScope.Builder, Timer, Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$InstallUpdateOperation$execute$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SingleUpdateScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SingleUpdateScope.Builder startTimer, Timer it) {
                    Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                    Intrinsics.checkNotNullParameter(it, "it");
                    startTimer.download = it;
                }
            }, 1, null));
            if (this.update.getRequiredAtMs() >= Clock.System.INSTANCE.now().toEpochMilliseconds() && this.update.getOnlyInstallRequiredUpdates()) {
                z = false;
            }
            ClientVersionSpecPb firmwareSpec = z ? this.update.getFirmwareSpec() : null;
            this.this$0.updateManager.startInstallUpdate(this.update.getConfig(), z ? this.update.getConfigSpec() : null, firmwareSpec, z ? this.update.getKeyProfileName() : null, this.update.getSettingsVersion(), this.update.getImageRef());
            this.this$0.update();
            return get();
        }

        public final void startCancel() {
            this.cancelled = true;
            this.this$0.updateManager.endOperation();
            this.this$0.update();
        }

        public final void completeCancel() {
            setException(new TerminalException(TerminalErrorCode.CANCELED, "Install update was cancelled", null, null, 12, null));
        }

        public final void completeUpdates() {
            this.this$0.updateManager.endOperation();
            this.this$0.update();
            set(null);
        }

        public final void onReportUpdateProgress(float progress) {
            this.this$0.statusManager.reportReaderSoftwareUpdateProgress(progress);
        }

        public final void onCompleteDownload() {
            PendingTimer updateStageTimer = getUpdateStageTimer();
            if (updateStageTimer != null) {
                HealthLogger.endTimer$default(this.this$0.singleUpdateHealthLogger, updateStageTimer, Outcome.Ok.INSTANCE, getHealthMetricTags(), null, 8, null);
            }
            setUpdateStageTimer(HealthLogger.startTimer$default(this.this$0.singleUpdateHealthLogger, null, new Function2<SingleUpdateScope.Builder, Timer, Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$InstallUpdateOperation$onCompleteDownload$2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SingleUpdateScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SingleUpdateScope.Builder startTimer, Timer it) {
                    Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                    Intrinsics.checkNotNullParameter(it, "it");
                    startTimer.install = it;
                }
            }, 1, null));
        }
    }

    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0084\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "Ljava/lang/Void;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/core/hardware/Reader;)V", "execute", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    protected final class RebootReaderOperation extends Adapter.ReaderOperation<Void> {
        private final com.stripe.core.hardware.Reader reader;
        final /* synthetic */ BbposAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RebootReaderOperation(BbposAdapter bbposAdapter, com.stripe.core.hardware.Reader reader) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = bbposAdapter;
            this.reader = reader;
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public Void execute() throws TerminalException {
            BuildersKt__Builders_commonKt.launch$default(this.this$0.scope, null, null, new BbposAdapter$RebootReaderOperation$execute$1(this.this$0, this, null), 3, null);
            return get();
        }
    }

    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0084\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DisconnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "Ljava/lang/Void;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/core/hardware/Reader;)V", "execute", "onDisconnect", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    protected final class DisconnectReaderOperation extends Adapter.ReaderOperation<Void> {
        private final com.stripe.core.hardware.Reader reader;
        final /* synthetic */ BbposAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DisconnectReaderOperation(BbposAdapter bbposAdapter, com.stripe.core.hardware.Reader reader) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = bbposAdapter;
            this.reader = reader;
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public Void execute() throws TerminalException {
            this.this$0.endBatteryInfoPolling.invoke();
            this.this$0.paymentCollectionWrapper.onReaderDisconnected();
            this.this$0.updateManager.endOperation();
            this.this$0.connectionManager.startDisconnect(this.reader);
            this.this$0.update();
            this.this$0.sessionTokenRepository.setSessionTokenListener(null);
            return get();
        }

        public final void onDisconnect() {
            this.this$0.statusManager.reportDisconnect(this.this$0.disconnectReasonRepository.consumeDisconnectReason());
            this.this$0.connectionManager.endOperation();
            this.this$0.update();
            set(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u0004\u001a\u00020\nH\u0082@¢\u0006\u0002\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "", "Lcom/stripe/stripeterminal/internal/common/Adapter;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V", "execute", "startSession", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/hardware/Reader;", "(Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class StartSessionOperation extends Adapter.ReaderOperation<Unit> {
        private final Reader reader;
        final /* synthetic */ BbposAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StartSessionOperation(BbposAdapter bbposAdapter, Reader reader) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = bbposAdapter;
            this.reader = reader;
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public /* bridge */ /* synthetic */ Unit execute() throws TerminalException {
            execute2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: execute, reason: avoid collision after fix types in other method */
        public void execute2() throws TerminalException {
            BuildersKt__Builders_commonKt.launch$default(this.this$0.scope, null, null, new BbposAdapter$StartSessionOperation$execute$1(this, this.this$0.requireHardwareReader(this.reader), this.this$0, null), 3, null);
            get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object startSession(com.stripe.core.hardware.Reader reader, Continuation<? super Flow<Unit>> continuation) {
            return FlowKt.callbackFlow(new BbposAdapter$StartSessionOperation$startSession$2(this.this$0, reader, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestReaderBatteryInfoOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V", "execute", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class RequestReaderBatteryInfoOperation extends Adapter.ReaderOperation<ReaderBatteryInfo> {
        public RequestReaderBatteryInfoOperation() {
            super();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public ReaderBatteryInfo execute() {
            BuildersKt__Builders_commonKt.launch$default(BbposAdapter.this.scope, null, null, new BbposAdapter$RequestReaderBatteryInfoOperation$execute$1(BbposAdapter.this, this, null), 3, null);
            return get();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "Lcom/stripe/hardware/status/ReaderInfo;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V", "execute", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class RequestDeviceInformationOperation extends Adapter.ReaderOperation<ReaderInfo> {
        public RequestDeviceInformationOperation() {
            super();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public ReaderInfo execute() {
            BuildersKt__Builders_commonKt.launch$default(BbposAdapter.this.scope, null, null, new BbposAdapter$RequestDeviceInformationOperation$execute$1(BbposAdapter.this, this, null), 3, null);
            return get();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0003\u0003\u0004\u0005\u0082\u0001\u0003\u0006\u0007\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;", "T", "", "ReaderBusy", "ReaderFailed", "Succeeded", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderBusy;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$Succeeded;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    interface ReaderInteractionResult<T> {

        /* JADX INFO: compiled from: BbposAdapter.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0001¢\u0006\u0002\u0010\u0005J\u000e\u0010\t\u001a\u00028\u0001HÆ\u0003¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0004\u001a\u00028\u0001HÆ\u0001¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0013\u0010\u0004\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$Succeeded;", "T", "", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;", "value", "(Ljava/lang/Object;)V", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$Succeeded;", "equals", "", "other", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Succeeded<T> implements ReaderInteractionResult<T> {
            private final T value;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Succeeded copy$default(Succeeded succeeded, Object obj, int i, Object obj2) {
                if ((i & 1) != 0) {
                    obj = succeeded.value;
                }
                return succeeded.copy(obj);
            }

            public final T component1() {
                return this.value;
            }

            public final Succeeded<T> copy(T value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return new Succeeded<>(value);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Succeeded) && Intrinsics.areEqual(this.value, ((Succeeded) other).value);
            }

            public int hashCode() {
                return this.value.hashCode();
            }

            public String toString() {
                return "Succeeded(value=" + this.value + ')';
            }

            public Succeeded(T value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this.value = value;
            }

            public final T getValue() {
                return this.value;
            }
        }

        /* JADX INFO: compiled from: BbposAdapter.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;", "", "exception", "Lcom/stripe/hardware/status/ReaderException;", "(Lcom/stripe/hardware/status/ReaderException;)V", "getException", "()Lcom/stripe/hardware/status/ReaderException;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ReaderFailed implements ReaderInteractionResult {
            private final ReaderException exception;

            public static /* synthetic */ ReaderFailed copy$default(ReaderFailed readerFailed, ReaderException readerException, int i, Object obj) {
                if ((i & 1) != 0) {
                    readerException = readerFailed.exception;
                }
                return readerFailed.copy(readerException);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final ReaderException getException() {
                return this.exception;
            }

            public final ReaderFailed copy(ReaderException exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                return new ReaderFailed(exception);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ReaderFailed) && Intrinsics.areEqual(this.exception, ((ReaderFailed) other).exception);
            }

            public int hashCode() {
                return this.exception.hashCode();
            }

            public String toString() {
                return "ReaderFailed(exception=" + this.exception + ')';
            }

            public ReaderFailed(ReaderException exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                this.exception = exception;
            }

            public final ReaderException getException() {
                return this.exception;
            }
        }

        /* JADX INFO: compiled from: BbposAdapter.kt */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderBusy;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;", "", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ReaderBusy implements ReaderInteractionResult {
            public static final ReaderBusy INSTANCE = new ReaderBusy();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ReaderBusy)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 517747759;
            }

            public String toString() {
                return "ReaderBusy";
            }

            private ReaderBusy() {
            }
        }
    }

    private final ReaderInputOptions.ReaderInputOption translateReaderType(ReaderConfiguration.ReaderType readerType) {
        int i = WhenMappings.$EnumSwitchMapping$2[readerType.ordinal()];
        if (i == 1) {
            return ReaderInputOptions.ReaderInputOption.SWIPE;
        }
        if (i == 2) {
            return ReaderInputOptions.ReaderInputOption.INSERT;
        }
        if (i == 3) {
            return ReaderInputOptions.ReaderInputOption.TAP;
        }
        if (i == 4) {
            return ReaderInputOptions.ReaderInputOption.MANUAL_ENTRY;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b¤\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "Lcom/stripe/stripeterminal/external/models/Reader;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V", "onConnectDevice", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "onReportReaderInfo", "info", "Lcom/stripe/hardware/status/ReaderInfo;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    protected abstract class ConnectReaderOperation extends Adapter.ReaderOperation<Reader> {
        public abstract void onConnectDevice(com.stripe.core.hardware.Reader reader);

        public abstract void onReportReaderInfo(ReaderInfo info);

        public ConnectReaderOperation() {
            super();
        }
    }

    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b¤\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V", "cancel", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    protected abstract class ReconnectReaderOperation extends ConnectReaderOperation {
        public abstract void cancel();

        public ReconnectReaderOperation() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;", "", "Failure", "Success", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Failure;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Success;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    interface DiscoveryResult {

        /* JADX INFO: compiled from: BbposAdapter.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Success;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;", "readers", "", "Lcom/stripe/stripeterminal/external/models/Reader;", "(Ljava/util/List;)V", "getReaders", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success implements DiscoveryResult {
            private final List<Reader> readers;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Success copy$default(Success success, List list, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = success.readers;
                }
                return success.copy(list);
            }

            public final List<Reader> component1() {
                return this.readers;
            }

            public final Success copy(List<Reader> readers) {
                Intrinsics.checkNotNullParameter(readers, "readers");
                return new Success(readers);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.readers, ((Success) other).readers);
            }

            public int hashCode() {
                return this.readers.hashCode();
            }

            public String toString() {
                return "Success(readers=" + this.readers + ')';
            }

            public Success(List<Reader> readers) {
                Intrinsics.checkNotNullParameter(readers, "readers");
                this.readers = readers;
            }

            public final List<Reader> getReaders() {
                return this.readers;
            }
        }

        /* JADX INFO: compiled from: BbposAdapter.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Failure;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;", "exception", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;)V", "getException", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Failure implements DiscoveryResult {
            private final TerminalException exception;

            public static /* synthetic */ Failure copy$default(Failure failure, TerminalException terminalException, int i, Object obj) {
                if ((i & 1) != 0) {
                    terminalException = failure.exception;
                }
                return failure.copy(terminalException);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final TerminalException getException() {
                return this.exception;
            }

            public final Failure copy(TerminalException exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                return new Failure(exception);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Failure) && Intrinsics.areEqual(this.exception, ((Failure) other).exception);
            }

            public int hashCode() {
                return this.exception.hashCode();
            }

            public String toString() {
                return "Failure(exception=" + this.exception + ')';
            }

            public Failure(TerminalException exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                this.exception = exception;
            }

            public final TerminalException getException() {
                return this.exception;
            }
        }
    }

    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\b¤\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\b\u0010+\u001a\u00020(H\u0016J\u0012\u0010,\u001a\u00020(2\b\u0010-\u001a\u0004\u0018\u00010$H\u0002J\b\u0010.\u001a\u00020#H&J\n\u0010/\u001a\u0004\u0018\u00010\u0002H\u0016J\u0014\u00100\u001a\u00020(2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ$\u00102\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002030\u00190\u0010*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\u0010H&R\u0012\u0010\u0007\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u001a0\u0019X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\u00020\u001eX¦\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\"\u001a\u00020#*\u00020$8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00064"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "Ljava/lang/Void;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", "getConnectionType", "()Lcom/stripe/core/hardware/ConnectionType;", "discoveredReaders", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "", "Lcom/stripe/core/hardware/Reader;", "discoveredReadersFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;", "getDiscoveredReadersFlow", "()Lkotlinx/coroutines/flow/Flow;", "discoveredReadersFlow$delegate", "Lkotlin/Lazy;", "discoveryJob", "Lkotlinx/coroutines/Job;", "readerClasses", "", "Lkotlin/reflect/KClass;", "getReaderClasses", "()Ljava/util/List;", "timeout", "Lkotlin/time/Duration;", "getTimeout-UwyO8pc", "()J", "timeoutFlow", "asTerminalException", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "", "getAsTerminalException", "(Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;", "cancel", "", "cancelDiscoverReadersReason", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "checkPrerequisites", "complete", "e", "createTimeoutException", "execute", "onUpdateDiscoveredReaders", "readers", "transformDiscoveredReaders", "Lcom/stripe/stripeterminal/external/models/Reader;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    protected abstract class DiscoverReadersOperation extends Adapter.ReaderOperation<Void> {
        private final MutableSharedFlow<Set<com.stripe.core.hardware.Reader>> discoveredReaders;

        /* JADX INFO: renamed from: discoveredReadersFlow$delegate, reason: from kotlin metadata */
        private final Lazy discoveredReadersFlow;
        private final Job discoveryJob;
        private final DiscoveryListener listener;
        final /* synthetic */ BbposAdapter this$0;
        private final Flow<DiscoveryResult> timeoutFlow;

        public void checkPrerequisites() throws TerminalException {
        }

        public abstract TerminalException createTimeoutException();

        public abstract com.stripe.core.hardware.ConnectionType getConnectionType();

        public abstract List<KClass<? extends com.stripe.core.hardware.Reader>> getReaderClasses();

        /* JADX INFO: renamed from: getTimeout-UwyO8pc, reason: not valid java name */
        public abstract long mo508getTimeoutUwyO8pc();

        public abstract Flow<List<Reader>> transformDiscoveredReaders(Flow<? extends Set<? extends com.stripe.core.hardware.Reader>> flow) throws TerminalException;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DiscoverReadersOperation(final BbposAdapter bbposAdapter, DiscoveryListener listener) {
            super();
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.this$0 = bbposAdapter;
            this.listener = listener;
            this.discoveredReaders = SharedFlowKt.MutableSharedFlow$default(1, 0, null, 6, null);
            this.discoveredReadersFlow = LazyKt.lazy(new Function0<Flow<? extends DiscoveryResult.Success>>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveredReadersFlow$2
                {
                    super(0);
                }

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveredReadersFlow$2$2, reason: invalid class name */
                /* JADX INFO: compiled from: BbposAdapter.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                /* synthetic */ class AnonymousClass2 extends AdaptedFunctionReference implements Function2<List<? extends Reader>, Continuation<? super BbposAdapter.DiscoveryResult.Success>, Object>, SuspendFunction {
                    public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

                    AnonymousClass2() {
                        super(2, BbposAdapter.DiscoveryResult.Success.class, "<init>", "<init>(Ljava/util/List;)V", 4);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(List<? extends Reader> list, Continuation<? super BbposAdapter.DiscoveryResult.Success> continuation) {
                        return invoke2((List<Reader>) list, continuation);
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final Object invoke2(List<Reader> list, Continuation<? super BbposAdapter.DiscoveryResult.Success> continuation) {
                        return BbposAdapter$DiscoverReadersOperation$discoveredReadersFlow$2.invoke$lambda$0(list, continuation);
                    }
                }

                @Override // kotlin.jvm.functions.Function0
                public final Flow<? extends BbposAdapter.DiscoveryResult.Success> invoke() {
                    BbposAdapter.DiscoverReadersOperation discoverReadersOperation = this.this$0;
                    return FlowKt.mapLatest(discoverReadersOperation.transformDiscoveredReaders(discoverReadersOperation.discoveredReaders), AnonymousClass2.INSTANCE);
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static final /* synthetic */ Object invoke$lambda$0(List list, Continuation continuation) {
                    return new BbposAdapter.DiscoveryResult.Success(list);
                }
            });
            this.timeoutFlow = FlowKt.flow(new BbposAdapter$DiscoverReadersOperation$timeoutFlow$1(this, null));
            Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(bbposAdapter.scope, null, CoroutineStart.LAZY, new BbposAdapter$DiscoverReadersOperation$discoveryJob$1(this, bbposAdapter, null), 1, null);
            jobLaunch$default.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    bbposAdapter.connectionManager.endOperation();
                    bbposAdapter.updateManager.endOperation();
                    bbposAdapter.update();
                    this.complete(th);
                }
            });
            this.discoveryJob = jobLaunch$default;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Flow<DiscoveryResult> getDiscoveredReadersFlow() {
            return (Flow) this.discoveredReadersFlow.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final TerminalException getAsTerminalException(Throwable th) {
            return th instanceof TerminalException ? (TerminalException) th : new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected error", th, null, 8, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void complete(Throwable e) {
            if (e == null) {
                set(null);
            } else if (e instanceof CancellationException) {
                complete(((CancellationException) e).getCause());
            } else {
                setException(getAsTerminalException(e));
            }
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public Void execute() throws TerminalException {
            if (Intrinsics.areEqual(this.this$0.getOperationToCancel(), Reflection.getOrCreateKotlinClass(DiscoverReadersOperation.class))) {
                this.this$0.setOperationToCancel(null);
                throw new TerminalException(TerminalErrorCode.CANCELED, "DiscoverReaders was canceled by the user", null, null, 12, null);
            }
            checkPrerequisites();
            this.discoveryJob.start();
            return get();
        }

        public final void onUpdateDiscoveredReaders(Set<? extends com.stripe.core.hardware.Reader> readers) {
            Intrinsics.checkNotNullParameter(readers, "readers");
            this.discoveredReaders.tryEmit(readers);
        }

        public final void cancel(CancelDiscoverReadersReason cancelDiscoverReadersReason) throws InterruptedException {
            Intrinsics.checkNotNullParameter(cancelDiscoverReadersReason, "cancelDiscoverReadersReason");
            BuildersKt__BuildersKt.runBlocking$default(null, new BbposAdapter$DiscoverReadersOperation$cancel$1(this, cancelDiscoverReadersReason, null), 1, null);
        }
    }

    protected final com.stripe.core.hardware.Reader requireHardwareReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        com.stripe.core.hardware.Reader readerMakeHardwareReader = makeHardwareReader(reader);
        if (readerMakeHardwareReader != null) {
            return readerMakeHardwareReader;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected reader", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter, com.stripe.paymentcollection.OnlineAuthStateListener
    public void onOnlineAuthStateChanged(OnlineAuthState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.paymentCollectionWrapper.onOnlineAuthStateChanged(state);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public AdapterType adapterType() {
        return AdapterType.BBPOS;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public ReaderInfo getReaderInfo(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        RequestDeviceInformationOperation requestDeviceInformationOperation = new RequestDeviceInformationOperation();
        setOperationInProgress(requestDeviceInformationOperation);
        return requestDeviceInformationOperation.execute();
    }

    public final void setReconnectionRequester$adapter_release(Function1<? super DisconnectReason, Unit> requestReconnection) {
        Intrinsics.checkNotNullParameter(requestReconnection, "requestReconnection");
        setRequestReconnection(requestReconnection);
    }
}
