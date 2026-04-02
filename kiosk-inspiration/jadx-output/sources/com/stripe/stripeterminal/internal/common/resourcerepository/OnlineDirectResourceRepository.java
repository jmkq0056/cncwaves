package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.squareup.wire.Message;
import com.stripe.core.transaction.ConfirmRefundParams;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.currency.Amount;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.InterfaceType;
import com.stripe.hardware.emv.Messages;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.restclient.AuthenticatedRestClient;
import com.stripe.jvmcore.restclient.RestConfig;
import com.stripe.jvmcore.restclient.RestRequest;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.jvmcore.transaction.Extensions;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.logwriter.LogWriter;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.log.OfflineMetricTags;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.OnlineAuthFailureReason;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.OnlineAuthStateListener;
import com.stripe.proto.api.rest.AddEmvSecondGenerationDataRefundRequest;
import com.stripe.proto.api.rest.AddEmvSecondGenerationDataRequest;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.proto.api.rest.ConfirmSetupIntentRequest;
import com.stripe.proto.api.rest.RefundChargeRequest;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.api.rest.RetrievePaymentIntentRequest;
import com.stripe.proto.model.rest.CardPresent;
import com.stripe.proto.model.rest.Charge;
import com.stripe.proto.model.rest.Charges;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.Method;
import com.stripe.proto.model.rest.PaymentMethodDetails;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.proto.model.rest.StatusCode;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.restclient.IntegrationType;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.CollectedData;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentIntentStatus;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.ReadReusableCardParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.api.ApiOperation;
import com.stripe.stripeterminal.internal.common.api.ApiRequestFactory;
import com.stripe.stripeterminal.internal.common.api.ApiResource;
import com.stripe.stripeterminal.internal.common.api.DiscoverLocationsResponse;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.makers.ReaderMaker;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.ChargeAttemptManager;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.NonCardPaymentMethodCompletedAttempt;
import com.stripe.transaction.NonCardPaymentMethodCompletionMethod;
import com.stripe.transaction.payment.ManualEntryPayment;
import com.stripe.transaction.payment.NonCardPayment;
import com.stripe.transaction.payment.Payment;
import com.sun.jna.Callback;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: OnlineDirectResourceRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000Ò\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 µ\u00012\u00020\u0001:\u0002µ\u0001B\u008d\u0001\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\"\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0011j\u0002`\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\b\b\u0001\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\u0006\u0010\u001f\u001a\u00020 ¢\u0006\u0002\u0010!JX\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032>\u00104\u001a:\u0012\u0015\u0012\u0013\u0018\u000106¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(9\u0012\u0015\u0012\u0013\u0018\u00010:¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(;\u0012\u0004\u0012\u00020<05j\u0002`=H\u0016J \u0010>\u001a\b\u0012\u0004\u0012\u00020$0?2\u0006\u0010@\u001a\u00020A2\b\u0010B\u001a\u0004\u0018\u00010AH\u0016J\u0010\u0010C\u001a\u00020<2\u0006\u0010D\u001a\u00020EH\u0016J\u0010\u0010F\u001a\u00020<2\u0006\u0010D\u001a\u00020EH\u0016J\u0010\u0010G\u001a\u00020<2\u0006\u0010D\u001a\u00020EH\u0016J\u0010\u0010H\u001a\u00020$2\u0006\u0010I\u001a\u00020$H\u0016J\b\u0010J\u001a\u00020<H\u0016J\u0018\u0010K\u001a\u00020L2\u0006\u0010I\u001a\u00020L2\u0006\u0010M\u001a\u00020NH\u0016J\u001a\u0010O\u001a\u00020+2\u0006\u0010@\u001a\u00020A2\b\u0010B\u001a\u0004\u0018\u00010AH\u0016Jq\u0010P\u001a\u00020$2\u0006\u0010Q\u001a\u00020$2\u000e\u0010R\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010T0S2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0?0V2\f\u0010X\u001a\b\u0012\u0004\u0012\u00020Y0S2\u0006\u0010Z\u001a\u00020+2\u0006\u0010[\u001a\u00020\\2\b\u0010]\u001a\u0004\u0018\u00010^2\b\u0010_\u001a\u0004\u0018\u00010AH\u0016¢\u0006\u0002\u0010`J\u0085\u0001\u0010P\u001a\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0a2\u0006\u0010Q\u001a\u00020$2\u0006\u0010d\u001a\u00020T2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0?0V2\b\u0010e\u001a\u0004\u0018\u00010f2\b\u0010g\u001a\u0004\u0018\u00010+2\b\u0010]\u001a\u0004\u0018\u00010^2\b\u0010_\u001a\u0004\u0018\u00010A2\b\u0010h\u001a\u0004\u0018\u00010i2\u0006\u0010[\u001a\u00020\\2\u0006\u0010j\u001a\u00020kH\u0002¢\u0006\u0002\u0010lJ<\u0010m\u001a\u00020n2\u0006\u0010o\u001a\u00020p2\b\u0010d\u001a\u0004\u0018\u00010T2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0?0V2\u0006\u0010[\u001a\u00020\\H\u0016JV\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020c0a2\u0006\u0010I\u001a\u00020L2\u0006\u0010s\u001a\u00020t2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0?0V2\u0006\u0010d\u001a\u00020T2\u0006\u0010[\u001a\u00020\\2\u0006\u0010j\u001a\u00020kH\u0002JR\u0010q\u001a\u00020L2\u0006\u0010I\u001a\u00020L2\b\u0010d\u001a\u0004\u0018\u00010T2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0?0V2\f\u0010X\u001a\b\u0012\u0004\u0012\u00020Y0S2\u0006\u0010Z\u001a\u00020+2\u0006\u0010[\u001a\u00020\\H\u0016J\u0018\u0010u\u001a\u00020$2\u0006\u0010v\u001a\u00020w2\u0006\u0010x\u001a\u00020yH\u0016J\u0010\u0010z\u001a\u00020{2\u0006\u0010|\u001a\u00020YH\u0016J\u0018\u0010}\u001a\u00020L2\u0006\u0010~\u001a\u00020\u007f2\u0006\u0010x\u001a\u00020yH\u0016J(\u0010\u0080\u0001\u001a\u00030\u0081\u00012\b\u0010\u0082\u0001\u001a\u00030\u0083\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010A2\u0007\u0010\u0085\u0001\u001a\u00020+H\u0002J'\u0010\u0086\u0001\u001a\u0010\u0012\u0004\u0012\u00020A\u0012\u0005\u0012\u00030\u0088\u00010\u0087\u00012\u000e\u0010\u0089\u0001\u001a\t\u0012\u0004\u0012\u00020A0\u008a\u0001H\u0016J\u0014\u0010\u008b\u0001\u001a\u00030\u008c\u00012\b\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002J>\u0010\u008d\u0001\u001a\u00020<2\u0006\u0010[\u001a\u00020\\2\b\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0?0V2\u0007\u0010\u008e\u0001\u001a\u00020AH\u0002J\u001e\u0010\u008f\u0001\u001a\u00020+2\u0013\u0010\u0090\u0001\u001a\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0aH\u0002J\u001c\u0010\u0091\u0001\u001a\u00030\u0092\u00012\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0006\u0010|\u001a\u00020YH\u0016J`\u0010\u0095\u0001\u001a\u00020+\"\u0015\b\u0000\u0010\u0096\u0001*\u000e\u0012\u0005\u0012\u0003H\u0096\u0001\u0012\u0002\b\u00030\u0097\u0001\"\u0015\b\u0001\u0010\u0098\u0001*\u000e\u0012\u0005\u0012\u0003H\u0098\u0001\u0012\u0002\b\u00030\u0097\u00012\u0015\u0010\u0090\u0001\u001a\u0010\u0012\u0005\u0012\u0003H\u0096\u0001\u0012\u0005\u0012\u0003H\u0098\u00010a2\b\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0006\u0010Z\u001a\u00020+H\u0002JS\u0010\u0099\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u009a\u0001\u0012\u0004\u0012\u00020c0a2\u0007\u0010o\u001a\u00030\u009b\u00012\u0006\u0010s\u001a\u00020t2\b\u0010\u009c\u0001\u001a\u00030\u009d\u00012\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0?0V2\u0006\u0010[\u001a\u00020\\H\u0002Jp\u0010\u009e\u0001\u001a\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0a2\u0006\u0010Q\u001a\u00020$2\u0013\u0010\u009f\u0001\u001a\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0a2\u0006\u0010d\u001a\u00020T2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0?0V2\u0006\u0010[\u001a\u00020\\2\n\u0010 \u0001\u001a\u0005\u0018\u00010¡\u00012\u0006\u0010j\u001a\u00020kH\u0002JU\u0010¢\u0001\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020c0a2\u0013\u0010£\u0001\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020c0a2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0?0V2\u0007\u0010¤\u0001\u001a\u00020+2\u0006\u0010[\u001a\u00020\\H\u0002J\u0011\u0010¥\u0001\u001a\u00020+2\u0006\u0010d\u001a\u00020TH\u0002J\u0018\u0010¦\u0001\u001a\u00020+2\u0007\u0010§\u0001\u001a\u00020$H\u0001¢\u0006\u0003\b¨\u0001J%\u0010©\u0001\u001a\u00020+2\u0006\u0010@\u001a\u00020A2\b\u0010B\u001a\u0004\u0018\u00010A2\b\u0010ª\u0001\u001a\u00030«\u0001H\u0002J$\u0010¬\u0001\u001a\u00020$2\u0006\u0010Q\u001a\u00020$2\b\u0010d\u001a\u0004\u0018\u00010T2\u0007\u0010\u00ad\u0001\u001a\u00020+H\u0016J\u001e\u0010®\u0001\u001a\u00030\u009b\u00012\u0006\u0010o\u001a\u00020p2\n\u0010¯\u0001\u001a\u0005\u0018\u00010°\u0001H\u0002J\u001d\u0010±\u0001\u001a\u00020k*\u00020\u000f2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0002J\u0016\u0010²\u0001\u001a\u00020k*\u00020\u000f2\u0007\u0010³\u0001\u001a\u00020+H\u0002J\u000e\u0010´\u0001\u001a\u00020+*\u00030\u0083\u0001H\u0002R\u0016\u0010\"\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010%\u001a\u0012\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(0&j\u0002`)X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0011j\u0002`\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020+8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006¶\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;", "apiClient", "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;", "chargeAttemptManager", "Lcom/stripe/transaction/ChargeAttemptManager;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "connectionTokenRepository", "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;", "apiRequestFactory", "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "offlineDiscreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "paymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/logwriter/LogWriter;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "actionRequiredPaymentIntentCompletion", "Lkotlinx/coroutines/CompletableDeferred;", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "shouldSendAuthResponseToDevice", "", "getShouldSendAuthResponseToDevice", "()Z", "activateReader", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "setReconnectParams", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "usbConfig", "", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "awaitActionRequiredPaymentIntentCompletion", "Lkotlinx/coroutines/Deferred;", "paymentIntentId", "", "accountId", "cancelConfirmPaymentIntent", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "cancelConfirmRefund", "cancelConfirmSetupIntent", "cancelPaymentIntent", "intent", "cancelPaymentIntentActionRequired", "cancelSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "completePaymentIntentActionRequired", "confirmPaymentIntent", "paymentIntent", "getCollectiblePayment", "Lkotlin/Function0;", "Lcom/stripe/transaction/CollectiblePayment;", "handleAuthResponse", "Lkotlin/Function1;", "Lcom/stripe/hardware/emv/TransactionResult;", "collectScaPaymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "immediateRecollectForSca", "authStateListener", "Lcom/stripe/paymentcollection/OnlineAuthStateListener;", "amountSurcharge", "", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/model/rest/PaymentIntent;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "collectiblePayment", "amountTip", "Lcom/stripe/currency/Amount;", "dynamicCurrencyConversionSelected", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;", "confirmRefund", "Lcom/stripe/stripeterminal/external/models/Refund;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "confirmSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "paymentAsRest", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "createPaymentIntent", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createReaderCollectedData", "Lcom/stripe/stripeterminal/external/models/CollectedData;", "paymentMethodData", "createSetupIntent", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "getConfirmationResponseReceived", "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "authResponse", "needSecondGenAc", "getReaderLocations", "", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "", "getSecondGenAcResponseReceived", "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;", "handleConfirmationFailed", "authResponseTlv", "isNetworkError", "response", "readReusableCard", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "readReusableCardParams", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "recollectPaymentMethodNeeded", "S", "Lcom/squareup/wire/Message;", "E", "refundCharge", "Lcom/stripe/proto/model/rest/Refund;", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;", "interfaceType", "Lcom/stripe/hardware/emv/InterfaceType;", "sendPaymentIntentAuthResponseToDevice", "confirmResponse", "authIntegrationType", "Lcom/stripe/restclient/IntegrationType;", "sendSetupIntentAuthResponseToDevice", "restResponse", "allowExtendedTransaction", "shouldFetch2ndGenAc", "shouldHandleCotsPinRequest", "pi", "shouldHandleCotsPinRequest$resourcerepository_release", "updateActionRequiredPaymentIntentChargeAttemptIfCompleted", "completionMethod", "Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;", "updatePaymentIntent", "requestDynamicCurrencyConversion", "updateRefundParams", "confirmRefundParameters", "Lcom/stripe/core/transaction/ConfirmRefundParams;", "getRestConfigForActivate", "getRestConfigForPayments", "requireOnline", "isExpectedTerminalStateForNonCardTransaction", "Companion", "resourcerepository_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlineDirectResourceRepository implements ResourceRepository {
    private static final long ACTION_REQUIRED_INITIAL_POLLING_DELAY_MS = 5000;
    private static final long ACTION_REQUIRED_POLLING_INTERVAL_MS = 2000;
    private static final long ACTION_REQUIRED_TIMEOUT_MS = 1800000;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<String> serverProcessingErrors = CollectionsKt.listOf((Object[]) new String[]{"processing_error", "card_declined", "expired_card"});
    private CompletableDeferred<PaymentIntent> actionRequiredPaymentIntentCompletion;
    private final ApiClient apiClient;
    private final ApiRequestFactory apiRequestFactory;
    private final ChargeAttemptManager chargeAttemptManager;
    private final ConnectionTokenRepository connectionTokenRepository;
    private final CoroutineDispatcher dispatcher;
    private final FeatureFlagsRepository featureFlagsRepository;
    private final LogWriter logWriter;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final OfflineConfigHelper offlineConfigHelper;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger;
    private final PaymentIntentUpdater paymentIntentUpdater;
    private final TerminalStatusManager statusManager;
    private final TransactionRepository transactionRepository;

    @Inject
    public OnlineDirectResourceRepository(ApiClient apiClient, ChargeAttemptManager chargeAttemptManager, TerminalStatusManager statusManager, TransactionRepository transactionRepository, ConnectionTokenRepository connectionTokenRepository, ApiRequestFactory apiRequestFactory, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger, LogWriter logWriter, @IO CoroutineDispatcher dispatcher, FeatureFlagsRepository featureFlagsRepository, PaymentIntentUpdater paymentIntentUpdater, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        Intrinsics.checkNotNullParameter(chargeAttemptManager, "chargeAttemptManager");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(connectionTokenRepository, "connectionTokenRepository");
        Intrinsics.checkNotNullParameter(apiRequestFactory, "apiRequestFactory");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(offlineDiscreteLogger, "offlineDiscreteLogger");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(paymentIntentUpdater, "paymentIntentUpdater");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.apiClient = apiClient;
        this.chargeAttemptManager = chargeAttemptManager;
        this.statusManager = statusManager;
        this.transactionRepository = transactionRepository;
        this.connectionTokenRepository = connectionTokenRepository;
        this.apiRequestFactory = apiRequestFactory;
        this.offlineConfigHelper = offlineConfigHelper;
        this.offlineDiscreteLogger = offlineDiscreteLogger;
        this.logWriter = logWriter;
        this.dispatcher = dispatcher;
        this.featureFlagsRepository = featureFlagsRepository;
        this.paymentIntentUpdater = paymentIntentUpdater;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(OnlineDirectResourceRepository.class));
    }

    private final boolean getShouldSendAuthResponseToDevice() {
        return this.transactionRepository.getSettings().getEmvTransactionType() == EmvTransactionType.TRADITIONAL || !ReaderMaker.INSTANCE.toHardwareReader(this.statusManager.getConnectedReader()).getQuickEmvAutoResponse();
    }

    private final boolean shouldFetch2ndGenAc(CollectiblePayment collectiblePayment) {
        return this.transactionRepository.getSettings().getEmvTransactionType() == EmvTransactionType.TRADITIONAL && collectiblePayment.getInterfaceType() == InterfaceType.CONTACT;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public ActivateReaderResponse activateReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function2<? super BluetoothAutoReconnectConfigPb, ? super UsbAutoReconnectConfigPb, Unit> setReconnectParams) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        Intrinsics.checkNotNullParameter(setReconnectParams, "setReconnectParams");
        this.logger.d("activateReader", TuplesKt.to(OfflineStorageConstantsKt.READER, reader), TuplesKt.to("connectionConfiguration", connectionConfiguration));
        return this.apiClient.activateReader(reader, this.connectionTokenRepository.getTokenAndRefresh(), connectionConfiguration, getRestConfigForActivate(this.offlineConfigHelper, reader, connectionConfiguration));
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent createPaymentIntent(PaymentIntentParameters paymentIntentParameters, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(paymentIntentParameters, "paymentIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        this.logger.d("createPaymentIntent", new Pair[0]);
        return this.apiClient.createPaymentIntent(paymentIntentParameters, getRestConfigForPayments(this.offlineConfigHelper, createConfiguration.getOfflineBehavior() == OfflineBehavior.REQUIRE_ONLINE));
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent createSetupIntent(SetupIntentParameters setupIntentParameters, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(setupIntentParameters, "setupIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        this.logger.d("createSetupIntent", new Pair[0]);
        return this.apiClient.createSetupIntent(setupIntentParameters, getRestConfigForPayments(this.offlineConfigHelper, createConfiguration.getOfflineBehavior() == OfflineBehavior.REQUIRE_ONLINE));
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Refund confirmRefund(RefundParameters refundParams, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, OnlineAuthStateListener authStateListener) throws TerminalException {
        Payment payment;
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        RequestedPaymentMethod requestedPaymentMethodAsRest = (collectiblePayment == null || (payment = collectiblePayment.getPayment()) == null) ? null : payment.asRest();
        InterfaceType interfaceType = collectiblePayment != null ? collectiblePayment.getInterfaceType() : null;
        if (requestedPaymentMethodAsRest == null || interfaceType == null) {
            throw new TerminalException(TerminalErrorCode.CARD_REMOVED, "Failed to retrieve payment method data", null, null, 12, null);
        }
        CombinedRefundParams combinedRefundParamsUpdateRefundParams = updateRefundParams(refundParams, this.transactionRepository.getRefundParams());
        authStateListener.onOnlineAuthStateChanged(OnlineAuthState.ConfirmationStarted.INSTANCE);
        final RestResponse<com.stripe.proto.model.rest.Refund, ErrorWrapper> restResponseRefundCharge = refundCharge(combinedRefundParamsUpdateRefundParams, requestedPaymentMethodAsRest, interfaceType, handleAuthResponse, authStateListener);
        this.chargeAttemptManager.setChargeAttempt(Extensions.INSTANCE.toChargeAttemptForRefund(restResponseRefundCharge, this.logWriter));
        return (Refund) ApiClient.INSTANCE.withDetailedConnectionError(ApiOperation.CONFIRM, ApiResource.REFUND, new Function0<Refund>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository.confirmRefund.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Refund invoke() {
                return ProtoConverter.INSTANCE.toSdkRefund(ApiClient.INSTANCE.decodeRefundResponseCatchingInlineFailure(restResponseRefundCharge));
            }
        });
    }

    private final CombinedRefundParams updateRefundParams(RefundParameters refundParams, ConfirmRefundParams confirmRefundParameters) {
        if (confirmRefundParameters != null) {
            return new CombinedRefundParams(refundParams.getPaymentIntentId(), refundParams.getChargeId(), refundParams.getAmount(), refundParams.getCurrency(), confirmRefundParameters.getMetadata(), confirmRefundParameters.getReverseTransfer(), confirmRefundParameters.getRefundApplicationFee(), confirmRefundParameters.getStripeAccountId());
        }
        return new CombinedRefundParams(refundParams.getPaymentIntentId(), refundParams.getChargeId(), refundParams.getAmount(), refundParams.getCurrency(), refundParams.getMetadata(), refundParams.getReverseTransfer(), refundParams.getRefundApplicationFee(), null);
    }

    private final RestResponse<com.stripe.proto.model.rest.Refund, ErrorWrapper> refundCharge(CombinedRefundParams refundParams, RequestedPaymentMethod paymentAsRest, InterfaceType interfaceType, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, OnlineAuthStateListener authStateListener) {
        TransactionResult transactionResult;
        ApiRequestFactory apiRequestFactory = this.apiRequestFactory;
        String chargeId = refundParams.getChargeId();
        long amount = refundParams.getAmount();
        boolean reverseTransfer = refundParams.getReverseTransfer();
        boolean refundApplicationFee = refundParams.getRefundApplicationFee();
        String defaultRefundReason = getDefaultRefundReason();
        Map<String, String> metadata = refundParams.getMetadata();
        if (metadata == null) {
            metadata = MapsKt.emptyMap();
        }
        RestRequest<RefundChargeRequest, RefundChargeRequest.Builder> restRequestRefundChargeRequest = apiRequestFactory.refundChargeRequest(chargeId, refundParams.getPaymentIntentId(), amount, paymentAsRest, reverseTransfer, refundApplicationFee, defaultRefundReason, metadata, refundParams.getStripeAccountId());
        IntegrationType integrationType = this.transactionRepository.getIntegrationType();
        RestResponse<com.stripe.proto.model.rest.Refund, ErrorWrapper> restResponseRefundCharge = this.apiClient.getRestClient().refundCharge((RefundChargeRequest) restRequestRefundChargeRequest.getBody(), restRequestRefundChargeRequest.getHeaders());
        ChargeAttempt chargeAttemptForRefund = Extensions.INSTANCE.toChargeAttemptForRefund(restResponseRefundCharge, this.logWriter);
        boolean z = restResponseRefundCharge instanceof RestResponse.Success;
        String str = Messages.ONLINE_AUTHORIZATION_RESPONSE_DECLINE;
        if (z) {
            RestResponse.Success success = (RestResponse.Success) restResponseRefundCharge;
            if (Extensions.INSTANCE.isSuccess((com.stripe.proto.model.rest.Refund) success.getResponse())) {
                String strAuthData = INSTANCE.authData(((com.stripe.proto.model.rest.Refund) success.getResponse()).payment_method_details, Messages.ONLINE_AUTHORIZATION_RESPONSE_APPROVE);
                boolean z2 = interfaceType == InterfaceType.CONTACT && Intrinsics.areEqual(PaymentMethodType.INTERAC_PRESENT.getTypeName(), paymentAsRest.type);
                authStateListener.onOnlineAuthStateChanged(getConfirmationResponseReceived(chargeAttemptForRefund, strAuthData, z2));
                try {
                    transactionResult = (TransactionResult) BuildersKt__BuildersKt.runBlocking$default(null, new OnlineDirectResourceRepository$refundCharge$result$1(handleAuthResponse, strAuthData, null), 1, null);
                } catch (Exception e) {
                    this.logger.e("Failed to handle auth response", e, new Pair[0]);
                    transactionResult = new TransactionResult(TransactionResult.Result.DEVICE_FAILURE, null);
                }
                TransactionResult transactionResult2 = transactionResult;
                if (z2) {
                    IntegrationType integrationType2 = this.transactionRepository.getIntegrationType();
                    if (integrationType != integrationType2) {
                        this.logger.w("Skipping Refund 2nd Gen AC: Integration type changed after refund charge", TuplesKt.to("previous", integrationType), TuplesKt.to("current", integrationType2));
                        return restResponseRefundCharge;
                    }
                    RestRequest<AddEmvSecondGenerationDataRefundRequest, AddEmvSecondGenerationDataRefundRequest.Builder> restRequestEmvSecondGenerationDataRefundRequest = this.apiRequestFactory.emvSecondGenerationDataRefundRequest(((com.stripe.proto.model.rest.Refund) success.getResponse()).id, transactionResult2, refundParams.getRefundApplicationFee(), refundParams.getReverseTransfer(), refundParams.getStripeAccountId());
                    authStateListener.onOnlineAuthStateChanged(OnlineAuthState.SecondGenAcStarted.INSTANCE);
                    RestResponse<com.stripe.proto.model.rest.Refund, ErrorWrapper> restResponseAddEmvSecondGenerationRefundData = this.apiClient.getRestClient().addEmvSecondGenerationRefundData((AddEmvSecondGenerationDataRefundRequest) restRequestEmvSecondGenerationDataRefundRequest.getBody(), restRequestEmvSecondGenerationDataRefundRequest.getHeaders(), RestConfig.INSTANCE.withMaxAttempts(3));
                    authStateListener.onOnlineAuthStateChanged(getSecondGenAcResponseReceived(Extensions.INSTANCE.toChargeAttemptForRefund(restResponseAddEmvSecondGenerationRefundData, this.logWriter)));
                    return restResponseAddEmvSecondGenerationRefundData;
                }
            } else {
                handleConfirmationFailed(authStateListener, chargeAttemptForRefund, handleAuthResponse, Messages.ONLINE_AUTHORIZATION_RESPONSE_DECLINE);
                return restResponseRefundCharge;
            }
        } else {
            if (restResponseRefundCharge instanceof RestResponse.ServerError) {
                List<String> list = serverProcessingErrors;
                ErrorResponse errorResponse = ((ErrorWrapper) ((RestResponse.ServerError) restResponseRefundCharge).getResponse()).error;
                if (!CollectionsKt.contains(list, errorResponse != null ? errorResponse.code : null)) {
                    str = Messages.UNABLE_TO_GO_ONLINE_DECLINE_OFFLINE;
                }
                handleConfirmationFailed(authStateListener, chargeAttemptForRefund, handleAuthResponse, str);
                return restResponseRefundCharge;
            }
            if (restResponseRefundCharge instanceof RestResponse.ParseError) {
                handleConfirmationFailed(authStateListener, chargeAttemptForRefund, handleAuthResponse, Messages.UNABLE_TO_GO_ONLINE_DECLINE_OFFLINE);
            }
        }
        return restResponseRefundCharge;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        return this.paymentIntentUpdater.invoke(paymentIntent, collectiblePayment, requestDynamicCurrencyConversion);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent confirmPaymentIntent(PaymentIntent paymentIntent, Function0<CollectiblePayment> getCollectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Function0<PaymentMethodData> collectScaPaymentMethodData, boolean immediateRecollectForSca, OnlineAuthStateListener authStateListener, Long amountSurcharge, String returnUrl) throws IllegalAccessException, InstantiationException, TerminalException {
        com.stripe.proto.model.rest.PaymentIntent paymentIntent2;
        PaymentIntent sdkPaymentIntent;
        PaymentIntent paymentIntentCopy$default;
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(getCollectiblePayment, "getCollectiblePayment");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(collectScaPaymentMethodData, "collectScaPaymentMethodData");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        Amount amountTip = this.transactionRepository.getAmountTip();
        Boolean dynamicCurrencyConversionSelected = this.transactionRepository.getDynamicCurrencyConversionSelected();
        RestConfig restConfigForPayments = getRestConfigForPayments(this.offlineConfigHelper, paymentIntent.getOfflineBehavior() == OfflineBehavior.REQUIRE_ONLINE);
        AllowRedisplay allowRedisplay = this.transactionRepository.getAllowRedisplay();
        CollectiblePayment collectiblePaymentInvoke = getCollectiblePayment.invoke();
        if (collectiblePaymentInvoke == null) {
            this.logger.w("Collectible payment is null in confirmPaymentIntent!", new Pair[0]);
            PaymentIntent paymentIntentConfirmPaymentIntent$default = ApiClient.confirmPaymentIntent$default(this.apiClient, paymentIntent, this.statusManager.getConnectedReader(), amountTip, dynamicCurrencyConversionSelected, null, allowRedisplay, restConfigForPayments, 16, null);
            if (!shouldHandleCotsPinRequest$resourcerepository_release(paymentIntentConfirmPaymentIntent$default)) {
                return paymentIntentConfirmPaymentIntent$default;
            }
            paymentIntent.setPaymentMethodData(collectScaPaymentMethodData.invoke());
            return ApiClient.confirmPaymentIntent$default(this.apiClient, paymentIntent, this.statusManager.getConnectedReader(), amountTip, dynamicCurrencyConversionSelected, null, allowRedisplay, restConfigForPayments, 16, null);
        }
        authStateListener.onOnlineAuthStateChanged(OnlineAuthState.ConfirmationStarted.INSTANCE);
        final RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> restResponseConfirmPaymentIntent = confirmPaymentIntent(paymentIntent, collectiblePaymentInvoke, handleAuthResponse, amountTip, dynamicCurrencyConversionSelected, amountSurcharge, returnUrl, allowRedisplay, authStateListener, restConfigForPayments);
        ChargeAttempt chargeAttemptForPaymentIntent = Extensions.INSTANCE.toChargeAttemptForPaymentIntent(restResponseConfirmPaymentIntent, collectiblePaymentInvoke.getTransactionSupportsSca(), this.logWriter);
        if (!this.offlineConfigHelper.isOfflineModeEnabled() || !isNetworkError(restResponseConfirmPaymentIntent)) {
            this.chargeAttemptManager.setChargeAttempt(chargeAttemptForPaymentIntent);
        }
        if (recollectPaymentMethodNeeded(restResponseConfirmPaymentIntent, chargeAttemptForPaymentIntent, immediateRecollectForSca)) {
            Intrinsics.checkNotNull(restResponseConfirmPaymentIntent, "null cannot be cast to non-null type com.stripe.jvmcore.restclient.RestResponse.ServerError<com.stripe.proto.model.rest.PaymentIntent, com.stripe.proto.model.rest.ErrorWrapper>");
            ErrorResponse errorResponse = ((ErrorWrapper) ((RestResponse.ServerError) restResponseConfirmPaymentIntent).getResponse()).error;
            PaymentIntent paymentIntent3 = (errorResponse == null || (paymentIntent2 = errorResponse.payment_intent) == null || (sdkPaymentIntent = ProtoConverter.INSTANCE.toSdkPaymentIntent(paymentIntent2)) == null || (paymentIntentCopy$default = PaymentIntent.copy$default(sdkPaymentIntent, null, 0L, 0L, 0L, null, 0L, 0L, null, null, null, null, null, 0L, null, null, null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, paymentIntent.getStripeAccountId(), null, null, null, -1, 14, null)) == null) ? paymentIntent : paymentIntentCopy$default;
            paymentIntent3.setPaymentMethodData(collectScaPaymentMethodData.invoke());
            paymentIntent3.setOfflineBehavior(paymentIntent.getOfflineBehavior());
            return confirmPaymentIntent(paymentIntent3, getCollectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener, amountSurcharge, returnUrl);
        }
        return (PaymentIntent) ApiClient.INSTANCE.withDetailedConnectionError(ApiOperation.CONFIRM, ApiResource.PAYMENT_INTENT, new Function0<PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository.confirmPaymentIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PaymentIntent invoke() {
                return ProtoConverter.INSTANCE.toSdkPaymentIntent(ApiClient.INSTANCE.decodeConfirmPaymentResponseCatchingLastPaymentError(restResponseConfirmPaymentIntent));
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldHandleCotsPinRequest$resourcerepository_release(com.stripe.stripeterminal.external.models.PaymentIntent r12) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            r11 = this;
            java.lang.String r0 = "pi"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            com.stripe.stripeterminal.internal.common.TerminalStatusManager r0 = r11.statusManager
            com.stripe.stripeterminal.external.models.Reader r0 = r0.getConnectedReader()
            r1 = 0
            if (r0 == 0) goto L13
            com.stripe.stripeterminal.external.models.DeviceType r0 = r0.getDeviceType()
            goto L14
        L13:
            r0 = r1
        L14:
            com.stripe.stripeterminal.external.models.DeviceType r2 = com.stripe.stripeterminal.external.models.DeviceType.TAP_TO_PAY_DEVICE
            r3 = 1
            r4 = 0
            if (r0 != r2) goto L1c
            r0 = r3
            goto L1d
        L1c:
            r0 = r4
        L1d:
            com.stripe.stripeterminal.external.models.NextAction r2 = r12.getNextAction()
            if (r2 == 0) goto L28
            java.lang.String r2 = r2.getType()
            goto L29
        L28:
            r2 = r1
        L29:
            java.lang.String r5 = "use_stripe_sdk"
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r5)
            if (r2 == 0) goto L4b
            com.stripe.stripeterminal.external.models.NextAction r12 = r12.getNextAction()
            if (r12 == 0) goto L41
            com.stripe.stripeterminal.external.models.UseStripeSdk r12 = r12.getUseStripeSdk()
            if (r12 == 0) goto L41
            java.lang.String r1 = r12.getType()
        L41:
            java.lang.String r12 = "android_tap_to_pay_pin_capture"
            boolean r12 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r12)
            if (r12 == 0) goto L4b
            r12 = r3
            goto L4c
        L4b:
            r12 = r4
        L4c:
            if (r0 == 0) goto L51
            if (r12 == 0) goto L51
            goto L52
        L51:
            r3 = r4
        L52:
            com.stripe.jvmcore.featureflag.FeatureFlagsRepository r12 = r11.featureFlagsRepository
            boolean r12 = r12.getTtpaPinEntryEnabled()
            if (r3 == 0) goto L6c
            if (r12 == 0) goto L5d
            goto L6c
        L5d:
            com.stripe.stripeterminal.external.models.TerminalException r4 = new com.stripe.stripeterminal.external.models.TerminalException
            com.stripe.stripeterminal.external.models.TerminalErrorCode r5 = com.stripe.stripeterminal.external.models.TerminalErrorCode.FEATURE_NOT_ENABLED_ON_ACCOUNT
            r9 = 12
            r10 = 0
            java.lang.String r6 = "Tap to Pay PIN entry is not enabled. Contact Stripe support to enable this feature."
            r7 = 0
            r8 = 0
            r4.<init>(r5, r6, r7, r8, r9, r10)
            throw r4
        L6c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository.shouldHandleCotsPinRequest$resourcerepository_release(com.stripe.stripeterminal.external.models.PaymentIntent):boolean");
    }

    private final <S extends Message<S, ?>, E extends Message<E, ?>> boolean recollectPaymentMethodNeeded(RestResponse<S, E> response, ChargeAttempt chargeAttempt, boolean immediateRecollectForSca) {
        return (response instanceof RestResponse.ServerError) && (chargeAttempt instanceof ChargeAttempt.ExtendedAttempt) && immediateRecollectForSca;
    }

    private final RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> confirmPaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Amount amountTip, Boolean dynamicCurrencyConversionSelected, Long amountSurcharge, String returnUrl, AllowRedisplay allowRedisplay, OnlineAuthStateListener authStateListener, RestConfig restConfig) throws IllegalAccessException, InstantiationException, TerminalException {
        RestRequest<ConfirmPaymentIntentRequest, ConfirmPaymentIntentRequest.Builder> restRequestConfirmCollectiblePayment;
        Payment payment = collectiblePayment.getPayment();
        if (payment != null) {
            boolean z = payment instanceof ManualEntryPayment;
            if (z) {
                restRequestConfirmCollectiblePayment = this.apiRequestFactory.confirmManualEntryPaymentIntent(paymentIntent, (ManualEntryPayment) payment);
            } else if (payment instanceof NonCardPayment) {
                restRequestConfirmCollectiblePayment = this.apiRequestFactory.confirmNonCardPaymentMethodPaymentIntent(paymentIntent, (NonCardPayment) payment, amountTip, amountSurcharge, returnUrl);
            } else {
                restRequestConfirmCollectiblePayment = this.apiRequestFactory.confirmCollectiblePayment(paymentIntent, payment.asRest(), amountTip, dynamicCurrencyConversionSelected, amountSurcharge, allowRedisplay);
            }
            if (paymentIntent.getId() != null) {
                IntegrationType integrationType = this.transactionRepository.getIntegrationType();
                RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> restResponseConfirmPaymentIntent = this.apiClient.getRestClient().confirmPaymentIntent((ConfirmPaymentIntentRequest) restRequestConfirmCollectiblePayment.getBody(), restRequestConfirmCollectiblePayment.getHeaders(), restConfig);
                if (getShouldSendAuthResponseToDevice() && !z && !(payment instanceof NonCardPayment)) {
                    restResponseConfirmPaymentIntent = sendPaymentIntentAuthResponseToDevice(paymentIntent, restResponseConfirmPaymentIntent, collectiblePayment, handleAuthResponse, authStateListener, integrationType, restConfig);
                } else {
                    authStateListener.onOnlineAuthStateChanged(getConfirmationResponseReceived(Extensions.INSTANCE.toChargeAttemptForPaymentIntent(restResponseConfirmPaymentIntent, collectiblePayment.getTransactionSupportsSca(), this.logWriter), null, false));
                }
                if (restResponseConfirmPaymentIntent != null) {
                    return restResponseConfirmPaymentIntent;
                }
            } else {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Payment intent ID cannot be null.", null, null, 12, null);
            }
        }
        String id = paymentIntent.getId();
        if (id != null) {
            RestRequest<RetrievePaymentIntentRequest, RetrievePaymentIntentRequest.Builder> restRequestRetrievePaymentIntentWithPaymentIntentId = this.apiRequestFactory.retrievePaymentIntentWithPaymentIntentId(id, paymentIntent.getStripeAccountId());
            RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> restResponseRetrievePaymentIntent$default = AuthenticatedRestClient.retrievePaymentIntent$default(this.apiClient.getRestClient(), (RetrievePaymentIntentRequest) restRequestRetrievePaymentIntentWithPaymentIntentId.getBody(), null, restRequestRetrievePaymentIntentWithPaymentIntentId.getHeaders(), 2, null);
            if (restResponseRetrievePaymentIntent$default != null) {
                return restResponseRetrievePaymentIntent$default;
            }
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Payment intent ID cannot be null.", null, null, 12, null);
    }

    private final RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> sendPaymentIntentAuthResponseToDevice(PaymentIntent paymentIntent, RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> confirmResponse, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, OnlineAuthStateListener authStateListener, IntegrationType authIntegrationType, RestConfig restConfig) throws IllegalAccessException, InstantiationException, TerminalException {
        com.stripe.proto.model.rest.PaymentIntent paymentIntent2;
        TransactionResult transactionResult;
        String lowerCase;
        boolean transactionSupportsSca = collectiblePayment.getTransactionSupportsSca();
        ChargeAttempt chargeAttemptForPaymentIntent = Extensions.INSTANCE.toChargeAttemptForPaymentIntent(confirmResponse, transactionSupportsSca, this.logWriter);
        Charges charges = null;
        if (confirmResponse instanceof RestResponse.Success) {
            RestResponse.Success success = (RestResponse.Success) confirmResponse;
            String strAuthData = INSTANCE.authData(((com.stripe.proto.model.rest.PaymentIntent) success.getResponse()).charges, Messages.ONLINE_AUTHORIZATION_RESPONSE_APPROVE);
            authStateListener.onOnlineAuthStateChanged(getConfirmationResponseReceived(chargeAttemptForPaymentIntent, strAuthData, shouldFetch2ndGenAc(collectiblePayment)));
            try {
                transactionResult = (TransactionResult) BuildersKt__BuildersKt.runBlocking$default(null, new OnlineDirectResourceRepository$sendPaymentIntentAuthResponseToDevice$result$1(handleAuthResponse, strAuthData, null), 1, null);
            } catch (Exception e) {
                this.logger.e("Failed to handle auth response", e, new Pair[0]);
                transactionResult = new TransactionResult(TransactionResult.Result.DEVICE_FAILURE, null);
            }
            if (shouldFetch2ndGenAc(collectiblePayment)) {
                IntegrationType integrationType = this.transactionRepository.getIntegrationType();
                if (authIntegrationType != integrationType) {
                    this.logger.w("Skipping Payment 2nd Gen AC: Integration type changed after payment confirm", TuplesKt.to("previous", authIntegrationType), TuplesKt.to("current", integrationType));
                    return confirmResponse;
                }
                RestRequest<AddEmvSecondGenerationDataRequest, AddEmvSecondGenerationDataRequest.Builder> restRequestAddEmvSecondGenerationData = this.apiRequestFactory.addEmvSecondGenerationData(paymentIntent, transactionResult);
                authStateListener.onOnlineAuthStateChanged(OnlineAuthState.SecondGenAcStarted.INSTANCE);
                RestResponse.Success successAddEmvSecondGenerationData = this.apiClient.getRestClient().addEmvSecondGenerationData((AddEmvSecondGenerationDataRequest) restRequestAddEmvSecondGenerationData.getBody(), restRequestAddEmvSecondGenerationData.getHeaders(), restConfig);
                com.stripe.proto.model.rest.PaymentIntent paymentIntentAlreadyCompletedPaymentIntent = Extensions.INSTANCE.alreadyCompletedPaymentIntent(successAddEmvSecondGenerationData);
                if (paymentIntentAlreadyCompletedPaymentIntent != null) {
                    this.logger.w("Failed to forward 2nd gen data due to payment intent already " + paymentIntentAlreadyCompletedPaymentIntent.status, new Pair[0]);
                    successAddEmvSecondGenerationData = RestResponse.Success.copy$default(success, paymentIntentAlreadyCompletedPaymentIntent, null, null, null, null, null, null, 126, null);
                } else if (isNetworkError(successAddEmvSecondGenerationData)) {
                    boolean z = transactionResult.getResult() == TransactionResult.Result.APPROVED;
                    HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.CARD_APPROVED_TRANSACTION, String.valueOf(z))), null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository$sendPaymentIntentAuthResponseToDevice$paymentConfirmationResponse$1
                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                            invoke2(builder, counter);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                            Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                            Intrinsics.checkNotNullParameter(it, "it");
                            incrementCounter.emv_second_gen_network_error = it;
                        }
                    }, 5, null);
                    this.logger.w("Failed to forward 2nd gen data due to network error. ", new Pair<>("cardApprovedTransaction", Boolean.valueOf(z)));
                    if (((com.stripe.proto.model.rest.PaymentIntent) success.getResponse()).capture_method == Method.automatic) {
                        lowerCase = PaymentIntentStatus.SUCCEEDED.toString().toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    } else {
                        lowerCase = PaymentIntentStatus.REQUIRES_CAPTURE.toString().toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    }
                    successAddEmvSecondGenerationData = RestResponse.Success.copy$default(success, com.stripe.proto.model.rest.PaymentIntent.copy$default((com.stripe.proto.model.rest.PaymentIntent) success.getResponse(), null, null, lowerCase, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -5, 3, null), null, null, null, null, null, null, 126, null);
                }
                authStateListener.onOnlineAuthStateChanged(getSecondGenAcResponseReceived(Extensions.INSTANCE.toChargeAttemptForPaymentIntent(successAddEmvSecondGenerationData, transactionSupportsSca, this.logWriter)));
                return successAddEmvSecondGenerationData;
            }
        } else {
            boolean z2 = confirmResponse instanceof RestResponse.ServerError;
            String strAuthData2 = Messages.UNABLE_TO_GO_ONLINE_DECLINE_OFFLINE;
            if (z2) {
                if (!isNetworkError(confirmResponse) || !this.offlineConfigHelper.isOfflineModeEnabled()) {
                    List<String> list = serverProcessingErrors;
                    RestResponse.ServerError serverError = (RestResponse.ServerError) confirmResponse;
                    ErrorResponse errorResponse = ((ErrorWrapper) serverError.getResponse()).error;
                    if (CollectionsKt.contains(list, errorResponse != null ? errorResponse.code : null) || Extensions.INSTANCE.requiresExtendedActionForPaymentIntent(confirmResponse)) {
                        Companion companion = INSTANCE;
                        ErrorResponse errorResponse2 = ((ErrorWrapper) serverError.getResponse()).error;
                        if (errorResponse2 != null && (paymentIntent2 = errorResponse2.payment_intent) != null) {
                            charges = paymentIntent2.charges;
                        }
                        strAuthData2 = companion.authData(charges, Messages.ONLINE_AUTHORIZATION_RESPONSE_DECLINE);
                    }
                    handleConfirmationFailed(authStateListener, chargeAttemptForPaymentIntent, handleAuthResponse, strAuthData2);
                    return confirmResponse;
                }
            } else if (confirmResponse instanceof RestResponse.ParseError) {
                handleConfirmationFailed(authStateListener, chargeAttemptForPaymentIntent, handleAuthResponse, Messages.UNABLE_TO_GO_ONLINE_DECLINE_OFFLINE);
            }
        }
        return confirmResponse;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent confirmSetupIntent(SetupIntent intent, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Function0<PaymentMethodData> collectScaPaymentMethodData, boolean immediateRecollectForSca, OnlineAuthStateListener authStateListener) throws TerminalException {
        RequestedPaymentMethod requestedPaymentMethodAsRest;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(collectScaPaymentMethodData, "collectScaPaymentMethodData");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        RestConfig restConfigForPayments = getRestConfigForPayments(this.offlineConfigHelper, intent.getOfflineBehavior() == OfflineBehavior.REQUIRE_ONLINE);
        AllowRedisplay allowRedisplay = this.transactionRepository.getAllowRedisplay();
        if (collectiblePayment == null) {
            return this.apiClient.confirmSetupIntent(intent, allowRedisplay, restConfigForPayments);
        }
        Payment payment = collectiblePayment.getPayment();
        if (payment != null && (requestedPaymentMethodAsRest = payment.asRest()) != null) {
            RequestedPaymentMethod requestedPaymentMethodCopy$default = RequestedPaymentMethod.copy$default(requestedPaymentMethodAsRest, null, null, null, null, null, allowRedisplay != null ? allowRedisplay.getValue() : null, null, 95, null);
            if (requestedPaymentMethodCopy$default != null) {
                authStateListener.onOnlineAuthStateChanged(OnlineAuthState.ConfirmationStarted.INSTANCE);
                final RestResponse<com.stripe.proto.model.rest.SetupIntent, ErrorWrapper> restResponseConfirmSetupIntent = confirmSetupIntent(intent, requestedPaymentMethodCopy$default, handleAuthResponse, collectiblePayment, authStateListener, restConfigForPayments);
                this.chargeAttemptManager.setChargeAttempt(Extensions.INSTANCE.toChargeAttemptForSetupIntent(restResponseConfirmSetupIntent, collectiblePayment.getTransactionSupportsSca()));
                return (SetupIntent) ApiClient.INSTANCE.withDetailedConnectionError(ApiOperation.CONFIRM, ApiResource.SETUP_INTENT, new Function0<SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository.confirmSetupIntent.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final SetupIntent invoke() {
                        return ProtoConverter.INSTANCE.toSdkSetupIntent((com.stripe.proto.model.rest.SetupIntent) ApiClient.Companion.decodeResponse$default(ApiClient.INSTANCE, restResponseConfirmSetupIntent, null, null, 6, null));
                    }
                });
            }
        }
        throw new TerminalException(TerminalErrorCode.STRIPE_API_ERROR, "Failed to confirm SetupIntent. Payment object is malformed.", null, null, 12, null);
    }

    private final RestResponse<com.stripe.proto.model.rest.SetupIntent, ErrorWrapper> confirmSetupIntent(SetupIntent intent, RequestedPaymentMethod paymentAsRest, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, CollectiblePayment collectiblePayment, OnlineAuthStateListener authStateListener, RestConfig restConfig) throws TerminalException {
        ConfirmSetupIntentRequest confirmSetupIntentRequest;
        boolean transactionSupportsSca = collectiblePayment.getTransactionSupportsSca();
        Payment payment = collectiblePayment.getPayment();
        if (payment instanceof ManualEntryPayment) {
            confirmSetupIntentRequest = this.apiRequestFactory.confirmManualEntrySetupIntent(intent, (ManualEntryPayment) payment);
        } else {
            confirmSetupIntentRequest = new ConfirmSetupIntentRequest(CollectionsKt.listOf("latest_attempt"), paymentAsRest, null, null, null, intent.getId(), null, 92, null);
        }
        this.logger.d("confirmSetupIntent: Performing API call with setup intent ID(" + intent + ".id)", new Pair[0]);
        RestResponse<com.stripe.proto.model.rest.SetupIntent, ErrorWrapper> restResponseConfirmSetupIntent = this.apiClient.getRestClient().confirmSetupIntent(confirmSetupIntentRequest, restConfig);
        if (getShouldSendAuthResponseToDevice()) {
            return sendSetupIntentAuthResponseToDevice(restResponseConfirmSetupIntent, handleAuthResponse, transactionSupportsSca, authStateListener);
        }
        authStateListener.onOnlineAuthStateChanged(getConfirmationResponseReceived(Extensions.INSTANCE.toChargeAttemptForSetupIntent(restResponseConfirmSetupIntent, transactionSupportsSca), null, false));
        return restResponseConfirmSetupIntent;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final RestResponse<com.stripe.proto.model.rest.SetupIntent, ErrorWrapper> sendSetupIntentAuthResponseToDevice(RestResponse<com.stripe.proto.model.rest.SetupIntent, ErrorWrapper> restResponse, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, boolean allowExtendedTransaction, OnlineAuthStateListener authStateListener) {
        com.stripe.proto.model.rest.PaymentIntent paymentIntent;
        ChargeAttempt chargeAttemptForSetupIntent = Extensions.INSTANCE.toChargeAttemptForSetupIntent(restResponse, allowExtendedTransaction);
        Charges charges = null;
        charges = null;
        if (restResponse instanceof RestResponse.Success) {
            this.logger.d("confirmSetupIntent: card approved", new Pair[0]);
            Companion companion = INSTANCE;
            SetupIntent.SetupAttempt setupAttempt = ((com.stripe.proto.model.rest.SetupIntent) ((RestResponse.Success) restResponse).getResponse()).latest_attempt;
            String strAuthData = companion.authData(setupAttempt != null ? setupAttempt.payment_method_details : null, Messages.ONLINE_AUTHORIZATION_RESPONSE_APPROVE);
            authStateListener.onOnlineAuthStateChanged(getConfirmationResponseReceived(chargeAttemptForSetupIntent, strAuthData, false));
            try {
                this.logger.d("confirmSetupIntent: passing data back to card", new Pair[0]);
                handleAuthResponse.invoke(strAuthData);
                return restResponse;
            } catch (Exception unused) {
                this.logger.d("confirmSetupIntent: card declined the data", new Pair[0]);
                return restResponse;
            }
        }
        boolean z = restResponse instanceof RestResponse.ServerError;
        String strAuthData2 = Messages.UNABLE_TO_GO_ONLINE_DECLINE_OFFLINE;
        if (!z) {
            if (restResponse instanceof RestResponse.ParseError) {
                this.logger.d("confirmSetupIntent: unknown parse error", new Pair[0]);
                handleConfirmationFailed(authStateListener, chargeAttemptForSetupIntent, handleAuthResponse, Messages.UNABLE_TO_GO_ONLINE_DECLINE_OFFLINE);
            }
            return restResponse;
        }
        List<String> list = serverProcessingErrors;
        RestResponse.ServerError serverError = (RestResponse.ServerError) restResponse;
        ErrorResponse errorResponse = ((ErrorWrapper) serverError.getResponse()).error;
        if (CollectionsKt.contains(list, errorResponse != null ? errorResponse.code : null) || Extensions.INSTANCE.requiresExtendedActionForSetupIntent(restResponse)) {
            this.logger.d("confirmSetupIntent: card decline or SCA", new Pair[0]);
            Companion companion2 = INSTANCE;
            ErrorResponse errorResponse2 = ((ErrorWrapper) serverError.getResponse()).error;
            if (errorResponse2 != null && (paymentIntent = errorResponse2.payment_intent) != null) {
                charges = paymentIntent.charges;
            }
            strAuthData2 = companion2.authData(charges, Messages.ONLINE_AUTHORIZATION_RESPONSE_DECLINE);
        } else {
            SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.logger;
            StringBuilder sbAppend = new StringBuilder("confirmSetupIntent: unknown server error response ").append(restResponse.getStatusCode()).append(": ");
            ErrorResponse errorResponse3 = ((ErrorWrapper) serverError.getResponse()).error;
            simpleLogger.d(sbAppend.append(errorResponse3 != null ? errorResponse3.message : null).toString(), new Pair[0]);
        }
        handleConfirmationFailed(authStateListener, chargeAttemptForSetupIntent, handleAuthResponse, strAuthData2);
        return restResponse;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentMethod readReusableCard(ReadReusableCardParameters readReusableCardParams, PaymentMethodData paymentMethodData) throws TerminalException {
        Intrinsics.checkNotNullParameter(readReusableCardParams, "readReusableCardParams");
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        try {
            PaymentMethod paymentMethodCreateCardPaymentMethod = this.apiClient.createCardPaymentMethod(readReusableCardParams, paymentMethodData, this.statusManager.getConnectedReader());
            this.chargeAttemptManager.setChargeAttempt(ChargeAttempt.CompletedAttempt.SuccessfulReusableCard.INSTANCE);
            return paymentMethodCreateCardPaymentMethod;
        } catch (TerminalException e) {
            this.chargeAttemptManager.setChargeAttempt(ChargeAttempt.CompletedAttempt.UnknownReusableCardResult.INSTANCE);
            throw e;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent cancelPaymentIntent(PaymentIntent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        return this.apiClient.cancelPaymentIntent(intent);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public com.stripe.stripeterminal.external.models.SetupIntent cancelSetupIntent(com.stripe.stripeterminal.external.models.SetupIntent intent, SetupIntentCancellationParameters params) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(params, "params");
        return this.apiClient.cancelSetupIntent(intent, params);
    }

    private final boolean isNetworkError(RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> response) {
        if (response instanceof RestResponse.ServerError) {
            return response.getStatusCode() == StatusCode.HTTP_ERROR || response.getStatusCode() == StatusCode.HTTP_ERROR_UNKNOWN_STATE;
        }
        return false;
    }

    private final void handleConfirmationFailed(OnlineAuthStateListener authStateListener, ChargeAttempt chargeAttempt, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, String authResponseTlv) {
        authStateListener.onOnlineAuthStateChanged(getConfirmationResponseReceived(chargeAttempt, authResponseTlv, false));
        try {
            handleAuthResponse.invoke(authResponseTlv);
        } catch (Exception unused) {
        }
    }

    private final OnlineAuthState.ConfirmationResponseReceived getConfirmationResponseReceived(ChargeAttempt chargeAttempt, String authResponse, boolean needSecondGenAc) {
        if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedRefund ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.AlreadyRefunded ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.InvalidCollectedData) {
            return new OnlineAuthState.ConfirmationResponseReceived.Failed(OnlineAuthFailureReason.DECLINED, authResponse, chargeAttempt);
        }
        if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulRefund ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulReusableCard.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulSetupIntent.INSTANCE) ? true : chargeAttempt instanceof ChargeAttempt.PendingNextActionAttempt ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulNonCardCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCollectedData ? true : chargeAttempt instanceof ChargeAttempt.IncompleteAttempt) {
            if (needSecondGenAc) {
                return new OnlineAuthState.ConfirmationResponseReceived.NeedSecondGenAc(authResponse, chargeAttempt);
            }
            return new OnlineAuthState.ConfirmationResponseReceived.Success(authResponse, chargeAttempt);
        }
        if (Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownRefundResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownReusableCardResult.INSTANCE)) {
            return new OnlineAuthState.ConfirmationResponseReceived.Failed(OnlineAuthFailureReason.UNKNOWN_NETWORK_FAILURE, authResponse, chargeAttempt);
        }
        if (chargeAttempt instanceof ChargeAttempt.ExtendedAttempt) {
            return new OnlineAuthState.ConfirmationResponseReceived.Failed(OnlineAuthFailureReason.SCA_NEEDED, authResponse, chargeAttempt);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final OnlineAuthState.SecondGenAcResponseReceived getSecondGenAcResponseReceived(ChargeAttempt chargeAttempt) throws TerminalException {
        if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedRefund ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.AlreadyRefunded ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.InvalidCollectedData) {
            return new OnlineAuthState.SecondGenAcResponseReceived.Failed(OnlineAuthFailureReason.DECLINED, chargeAttempt);
        }
        if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulRefund ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulReusableCard.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulSetupIntent.INSTANCE)) {
            return new OnlineAuthState.SecondGenAcResponseReceived.Success(chargeAttempt);
        }
        if (Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownRefundResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownReusableCardResult.INSTANCE)) {
            return new OnlineAuthState.SecondGenAcResponseReceived.Failed(OnlineAuthFailureReason.UNKNOWN_NETWORK_FAILURE, chargeAttempt);
        }
        if (chargeAttempt instanceof ChargeAttempt.ExtendedAttempt) {
            return new OnlineAuthState.SecondGenAcResponseReceived.Failed(OnlineAuthFailureReason.SCA_NEEDED, chargeAttempt);
        }
        if (chargeAttempt instanceof ChargeAttempt.PendingNextActionAttempt ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulNonCardCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCollectedData ? true : chargeAttempt instanceof ChargeAttempt.IncompleteAttempt) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Attempted to send 2nd gen AC response for non-card payment method.", null, null, 12, null);
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Map<String, Location> getReaderLocations(List<String> deviceSerials) {
        Intrinsics.checkNotNullParameter(deviceSerials, "deviceSerials");
        List<DiscoverLocationsResponse.ReaderLocationPair> readers = this.apiClient.discoverLocations(deviceSerials, this.connectionTokenRepository.getToken()).getReaders();
        ArrayList<DiscoverLocationsResponse.ReaderLocationPair> arrayList = new ArrayList();
        for (Object obj : readers) {
            if (((DiscoverLocationsResponse.ReaderLocationPair) obj).getLocation() != null) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (DiscoverLocationsResponse.ReaderLocationPair readerLocationPair : arrayList) {
            List<String> serialNumbers = readerLocationPair.getSerialNumbers();
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(serialNumbers, 10));
            for (String str : serialNumbers) {
                Location location = readerLocationPair.getLocation();
                if (location == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                arrayList3.add(TuplesKt.to(str, location));
            }
            CollectionsKt.addAll(arrayList2, arrayList3);
        }
        ArrayList<Pair> arrayList4 = arrayList2;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList4, 10)), 16));
        for (Pair pair : arrayList4) {
            Pair pair2 = TuplesKt.to((String) pair.component1(), (Location) pair.component2());
            linkedHashMap.put(pair2.getFirst(), pair2.getSecond());
        }
        return linkedHashMap;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Deferred<PaymentIntent> awaitActionRequiredPaymentIntentCompletion(String paymentIntentId, String accountId) {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        CompletableDeferred<PaymentIntent> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        this.actionRequiredPaymentIntentCompletion = completableDeferredCompletableDeferred$default;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.dispatcher), null, null, new AnonymousClass1(paymentIntentId, accountId, null), 3, null);
        return completableDeferredCompletableDeferred$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void awaitActionRequiredPaymentIntentCompletion$completeExceptionally(OnlineDirectResourceRepository onlineDirectResourceRepository, String str) {
        CompletableDeferred<PaymentIntent> completableDeferred = onlineDirectResourceRepository.actionRequiredPaymentIntentCompletion;
        if (completableDeferred != null) {
            completableDeferred.completeExceptionally(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, str, null, null, 12, null));
        }
        onlineDirectResourceRepository.actionRequiredPaymentIntentCompletion = null;
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository$awaitActionRequiredPaymentIntentCompletion$1, reason: invalid class name */
    /* JADX INFO: compiled from: OnlineDirectResourceRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository$awaitActionRequiredPaymentIntentCompletion$1", f = "OnlineDirectResourceRepository.kt", i = {}, l = {1047}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $accountId;
        final /* synthetic */ String $paymentIntentId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$paymentIntentId = str;
            this.$accountId = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OnlineDirectResourceRepository.this.new AnonymousClass1(this.$paymentIntentId, this.$accountId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (TimeoutKt.withTimeout(OnlineDirectResourceRepository.ACTION_REQUIRED_TIMEOUT_MS, new C00611(OnlineDirectResourceRepository.this, this.$paymentIntentId, this.$accountId, null), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (TimeoutCancellationException unused) {
                OnlineDirectResourceRepository.this.chargeAttemptManager.setChargeAttempt(new ChargeAttempt.IncompleteAttempt("failure"));
                OnlineDirectResourceRepository.awaitActionRequiredPaymentIntentCompletion$completeExceptionally(OnlineDirectResourceRepository.this, "Polling timed out while waiting for PaymentIntent completion");
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository$awaitActionRequiredPaymentIntentCompletion$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: OnlineDirectResourceRepository.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository$awaitActionRequiredPaymentIntentCompletion$1$1", f = "OnlineDirectResourceRepository.kt", i = {0, 1}, l = {1048, WinError.ERROR_INVALID_SERVICE_ACCOUNT}, m = "invokeSuspend", n = {"$this$withTimeout", "$this$withTimeout"}, s = {"L$0", "L$0"})
        static final class C00611 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $accountId;
            final /* synthetic */ String $paymentIntentId;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ OnlineDirectResourceRepository this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00611(OnlineDirectResourceRepository onlineDirectResourceRepository, String str, String str2, Continuation<? super C00611> continuation) {
                super(2, continuation);
                this.this$0 = onlineDirectResourceRepository;
                this.$paymentIntentId = str;
                this.$accountId = str2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00611 c00611 = new C00611(this.this$0, this.$paymentIntentId, this.$accountId, continuation);
                c00611.L$0 = obj;
                return c00611;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00611) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineScope coroutineScope;
                CompletableDeferred completableDeferred;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    coroutineScope = (CoroutineScope) this.L$0;
                    this.L$0 = coroutineScope;
                    this.label = 1;
                    if (DelayKt.delay(5000L, this) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                if (i != 1 && i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                while (CoroutineScopeKt.isActive(coroutineScope) && (completableDeferred = this.this$0.actionRequiredPaymentIntentCompletion) != null && completableDeferred.isActive()) {
                    if (this.this$0.updateActionRequiredPaymentIntentChargeAttemptIfCompleted(this.$paymentIntentId, this.$accountId, NonCardPaymentMethodCompletionMethod.POLLING)) {
                        return Unit.INSTANCE;
                    }
                    this.L$0 = coroutineScope;
                    this.label = 2;
                    if (DelayKt.delay(OnlineDirectResourceRepository.ACTION_REQUIRED_POLLING_INTERVAL_MS, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                OnlineDirectResourceRepository.awaitActionRequiredPaymentIntentCompletion$completeExceptionally(this.this$0, "Polling cancelled while waiting for PaymentIntent completion");
                return Unit.INSTANCE;
            }
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public boolean completePaymentIntentActionRequired(String paymentIntentId, String accountId) {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        CompletableDeferred<PaymentIntent> completableDeferred = this.actionRequiredPaymentIntentCompletion;
        if (completableDeferred == null || !completableDeferred.isActive()) {
            return false;
        }
        return updateActionRequiredPaymentIntentChargeAttemptIfCompleted(paymentIntentId, accountId, NonCardPaymentMethodCompletionMethod.IOT_MESSAGE);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelPaymentIntentActionRequired() {
        CompletableDeferred<PaymentIntent> completableDeferred = this.actionRequiredPaymentIntentCompletion;
        if (completableDeferred != null) {
            Job.DefaultImpls.cancel$default((Job) completableDeferred, (CancellationException) null, 1, (Object) null);
        }
        this.actionRequiredPaymentIntentCompletion = null;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public CollectedData createReaderCollectedData(PaymentMethodData paymentMethodData) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        try {
            CollectedData collectedDataCreateReaderCollectedData = this.apiClient.createReaderCollectedData(paymentMethodData);
            this.chargeAttemptManager.setChargeAttempt(ChargeAttempt.CompletedAttempt.SuccessfulCollectedData.INSTANCE);
            return collectedDataCreateReaderCollectedData;
        } catch (TerminalException e) {
            this.chargeAttemptManager.setChargeAttempt(ChargeAttempt.CompletedAttempt.InvalidCollectedData.INSTANCE);
            throw e;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmPaymentIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onSuccess();
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmSetupIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onSuccess();
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmRefund(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onSuccess();
    }

    private final RestConfig getRestConfigForActivate(OfflineConfigHelper offlineConfigHelper, Reader reader, ConnectionConfiguration connectionConfiguration) {
        String serialNumber = reader.getSerialNumber();
        if (Intrinsics.areEqual((Object) (serialNumber != null ? Boolean.valueOf(offlineConfigHelper.isOfflineEnabledForLocationAndReader(connectionConfiguration.getLocationId(), serialNumber)) : null), (Object) true)) {
            Long httpLowTimeoutMs = offlineConfigHelper.getHttpLowTimeoutMs();
            if (httpLowTimeoutMs != null) {
                RestConfig restConfigWithTimeoutMs = RestConfig.INSTANCE.withTimeoutMs(httpLowTimeoutMs.longValue());
                if (restConfigWithTimeoutMs != null) {
                    return restConfigWithTimeoutMs;
                }
            }
            return RestConfig.INSTANCE;
        }
        return RestConfig.INSTANCE;
    }

    private final RestConfig getRestConfigForPayments(OfflineConfigHelper offlineConfigHelper, boolean z) {
        RestConfig restConfigWithTimeoutMs;
        if (!offlineConfigHelper.isOfflineModeEnabled()) {
            return RestConfig.INSTANCE.withMaxAttempts(3);
        }
        if (z) {
            RestConfig restConfigWithMaxAttempts = RestConfig.INSTANCE.withMaxAttempts(3);
            Long httpHighTimeoutMs = offlineConfigHelper.getHttpHighTimeoutMs();
            return (httpHighTimeoutMs == null || (restConfigWithTimeoutMs = restConfigWithMaxAttempts.withTimeoutMs(httpHighTimeoutMs.longValue())) == null) ? restConfigWithMaxAttempts : restConfigWithTimeoutMs;
        }
        Long httpLowTimeoutMs = offlineConfigHelper.getHttpLowTimeoutMs();
        if (httpLowTimeoutMs != null) {
            RestConfig restConfigWithTimeoutMs2 = RestConfig.INSTANCE.withTimeoutMs(httpLowTimeoutMs.longValue());
            if (restConfigWithTimeoutMs2 != null) {
                return restConfigWithTimeoutMs2;
            }
        }
        return RestConfig.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean updateActionRequiredPaymentIntentChargeAttemptIfCompleted(String paymentIntentId, String accountId, NonCardPaymentMethodCompletionMethod completionMethod) throws TerminalException {
        RestRequest<RetrievePaymentIntentRequest, RetrievePaymentIntentRequest.Builder> restRequestRetrievePaymentIntentWithPaymentIntentId = this.apiRequestFactory.retrievePaymentIntentWithPaymentIntentId(paymentIntentId, accountId);
        RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> restResponseRetrievePaymentIntent$default = AuthenticatedRestClient.retrievePaymentIntent$default(this.apiClient.getRestClient(), (RetrievePaymentIntentRequest) restRequestRetrievePaymentIntentWithPaymentIntentId.getBody(), null, restRequestRetrievePaymentIntentWithPaymentIntentId.getHeaders(), 2, null);
        ChargeAttempt chargeAttemptForPaymentIntent = Extensions.INSTANCE.toChargeAttemptForPaymentIntent(restResponseRetrievePaymentIntent$default, false, this.logWriter);
        if (chargeAttemptForPaymentIntent instanceof NonCardPaymentMethodCompletedAttempt) {
            ((NonCardPaymentMethodCompletedAttempt) chargeAttemptForPaymentIntent).setCompletionMethod(completionMethod);
        }
        if (!(chargeAttemptForPaymentIntent instanceof ChargeAttempt.CompletedAttempt)) {
            return false;
        }
        try {
            try {
                this.chargeAttemptManager.setChargeAttempt(chargeAttemptForPaymentIntent);
            } catch (Exception e) {
                CompletableDeferred<PaymentIntent> completableDeferred = this.actionRequiredPaymentIntentCompletion;
                if (completableDeferred != null) {
                    completableDeferred.completeExceptionally(e);
                }
            }
            if (!isExpectedTerminalStateForNonCardTransaction(chargeAttemptForPaymentIntent)) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected charge attempt type for non-card PaymentIntent: " + chargeAttemptForPaymentIntent + ". This should never happen.", null, null, 12, null);
            }
            PaymentIntent sdkPaymentIntent = ProtoConverter.INSTANCE.toSdkPaymentIntent(ApiClient.INSTANCE.decodeConfirmPaymentResponseCatchingLastPaymentError(restResponseRetrievePaymentIntent$default));
            CompletableDeferred<PaymentIntent> completableDeferred2 = this.actionRequiredPaymentIntentCompletion;
            if (completableDeferred2 != null) {
                completableDeferred2.complete(sdkPaymentIntent);
            }
            this.actionRequiredPaymentIntentCompletion = null;
            return true;
        } catch (Throwable th) {
            this.actionRequiredPaymentIntentCompletion = null;
            throw th;
        }
    }

    private final boolean isExpectedTerminalStateForNonCardTransaction(ChargeAttempt chargeAttempt) {
        if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulNonCardCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedCharge) {
            return true;
        }
        return chargeAttempt instanceof ChargeAttempt.CompletedAttempt.UnknownChargeResult;
    }

    /* JADX INFO: compiled from: OnlineDirectResourceRepository.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\n\u001a\u00020\t*\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\tJ\u0014\u0010\n\u001a\u00020\t*\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\tJ\u0014\u0010\n\u001a\u00020\t*\u0004\u0018\u00010\u000e2\u0006\u0010\f\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;", "", "()V", "ACTION_REQUIRED_INITIAL_POLLING_DELAY_MS", "", "ACTION_REQUIRED_POLLING_INTERVAL_MS", "ACTION_REQUIRED_TIMEOUT_MS", "serverProcessingErrors", "", "", "authData", "Lcom/stripe/proto/model/rest/Charges;", "defaultValue", "Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;", "resourcerepository_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String authData(Charges charges, String defaultValue) {
            List<Charge> list;
            PaymentMethodDetails paymentMethodDetails;
            String strAuthData;
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            return (charges == null || (list = charges.data_) == null || !(list.isEmpty() ^ true) || (paymentMethodDetails = ((Charge) CollectionsKt.last((List) charges.data_)).payment_method_details) == null || (strAuthData = authData(paymentMethodDetails, defaultValue)) == null) ? defaultValue : strAuthData;
        }

        public final String authData(PaymentMethodDetails paymentMethodDetails, String defaultValue) {
            CardPresent cardPresent;
            CardPresent cardPresent2;
            String str;
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            if (paymentMethodDetails != null && (cardPresent2 = paymentMethodDetails.card_present) != null && (str = cardPresent2.emv_auth_data) != null) {
                return str;
            }
            String str2 = (paymentMethodDetails == null || (cardPresent = paymentMethodDetails.interac_present) == null) ? null : cardPresent.emv_auth_data;
            return str2 == null ? defaultValue : str2;
        }

        public final String authData(SetupIntent.SetupAttempt.PaymentMethodDetails paymentMethodDetails, String defaultValue) {
            SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent cardPresent;
            SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent cardPresent2;
            String str;
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            if (paymentMethodDetails != null && (cardPresent2 = paymentMethodDetails.card_present) != null && (str = cardPresent2.emv_auth_data) != null) {
                return str;
            }
            String str2 = (paymentMethodDetails == null || (cardPresent = paymentMethodDetails.interac_present) == null) ? null : cardPresent.emv_auth_data;
            return str2 == null ? defaultValue : str2;
        }
    }
}
