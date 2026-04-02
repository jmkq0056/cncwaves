package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.Message;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.jvmcore.crpcclient.CrpcServiceResolver;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsListener;
import com.stripe.jvmcore.terminal.requestfactories.JackRabbitApiRequestFactory;
import com.stripe.kmpcore.jackrabbitclient.CollectDataResultInternal;
import com.stripe.kmpcore.jackrabbitclient.GetKtorHttpClientKt;
import com.stripe.kmpcore.jackrabbitclient.JackrabbitClient;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult;
import com.stripe.kmpcore.jackrabbitclient.models.KmpTerminalException;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.sdk.ActivateTerminalResponse;
import com.stripe.proto.api.sdk.CancelCollectDataRequest;
import com.stripe.proto.api.sdk.CancelCollectInputsRequest;
import com.stripe.proto.api.sdk.CancelCollectPaymentMethodRequest;
import com.stripe.proto.api.sdk.CancelCollectPaymentMethodResponse;
import com.stripe.proto.api.sdk.CancelConfirmInteracRefundResponse;
import com.stripe.proto.api.sdk.CancelConfirmPaymentIntentResponse;
import com.stripe.proto.api.sdk.CancelConfirmSetupIntentResponse;
import com.stripe.proto.api.sdk.CancelPaymentIntentResponse;
import com.stripe.proto.api.sdk.CancelSetupIntentPaymentMethodRequest;
import com.stripe.proto.api.sdk.CancelSetupIntentPaymentMethodResponse;
import com.stripe.proto.api.sdk.CancelSetupIntentResponse;
import com.stripe.proto.api.sdk.CollectDataRequest;
import com.stripe.proto.api.sdk.ConfirmInteracRefundResponse;
import com.stripe.proto.api.sdk.ConfirmPaymentRequest;
import com.stripe.proto.api.sdk.ConfirmPaymentResponse;
import com.stripe.proto.api.sdk.ConfirmSetupIntentResponse;
import com.stripe.proto.api.sdk.CreatePaymentIntentRequest;
import com.stripe.proto.api.sdk.CreatePaymentIntentResponse;
import com.stripe.proto.api.sdk.CreateSetupIntentRequest;
import com.stripe.proto.api.sdk.CreateSetupIntentResponse;
import com.stripe.proto.api.sdk.FetchReaderEventsRequest;
import com.stripe.proto.api.sdk.FetchReaderEventsResponse;
import com.stripe.proto.api.sdk.GetReaderSettingsResponse;
import com.stripe.proto.api.sdk.HandlePaymentIntentNextActionsRequest;
import com.stripe.proto.api.sdk.JackRabbitApi;
import com.stripe.proto.api.sdk.ReaderEvent;
import com.stripe.proto.api.sdk.ReaderSettingsResponse;
import com.stripe.proto.api.sdk.SetReaderSettingsResponse;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentIntentStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSettings;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.OfflineAdapterKt;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.crpc.RemoteReaderRequestContextProvider;
import com.stripe.stripeterminal.internal.common.extensions.CancelPaymentIntentResponseExtensions;
import com.stripe.stripeterminal.internal.common.extensions.CancelSetupIntentResponseExtensions;
import com.stripe.stripeterminal.internal.common.extensions.ConfirmInteracRefundResponseExtensions;
import com.stripe.stripeterminal.internal.common.extensions.ConfirmPaymentResponseExtensions;
import com.stripe.stripeterminal.internal.common.extensions.ConfirmSetupIntentResponseExtensions;
import com.stripe.stripeterminal.internal.common.extensions.CreatePaymentIntentResponseExtensions;
import com.stripe.stripeterminal.internal.common.extensions.CreateSetupIntentResponseExtensions;
import com.stripe.stripeterminal.internal.common.extensions.OfflineBehaviorExtensionsKt;
import com.stripe.stripeterminal.internal.common.extensions.TerminalExceptionExtensionsKt;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.sun.jna.Callback;
import com.sun.jna.platform.win32.WinError;
import io.ktor.client.HttpClient;
import io.ktor.http.URLProtocol;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
import okhttp3.HttpUrl;
import org.apache.http.HttpHost;

/* JADX INFO: compiled from: IpReaderController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¦\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 ¾\u00012\u00020\u0001:\u0002¾\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001bJ!\u0010/\u001a\u0002H0\"\u0004\b\u0000\u001002\f\u00101\u001a\b\u0012\u0004\u0012\u0002H00'H\u0002¢\u0006\u0002\u00102J!\u00103\u001a\u0002H0\"\u0004\b\u0000\u001002\f\u00101\u001a\b\u0012\u0004\u0012\u0002H00'H\u0002¢\u0006\u0002\u00102J\b\u00104\u001a\u00020(H\u0016J\b\u00105\u001a\u00020(H\u0016J\b\u00106\u001a\u00020(H\u0016J\b\u00107\u001a\u00020(H\u0016J\b\u00108\u001a\u00020(H\u0016J\u0010\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010<\u001a\u00020(2\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010=\u001a\u00020(2\u0006\u0010:\u001a\u00020;H\u0016J:\u0010>\u001a\u00020(\"\u0012\b\u0000\u0010?*\f\u0012\u0004\u0012\u0002H?\u0012\u0002\b\u00030@2\u0006\u0010:\u001a\u00020;2\u0014\u0010A\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H?\u0018\u00010B0'H\u0002J\u0010\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020DH\u0016J$\u0010F\u001a\u00020(2\u001a\u0010A\u001a\u0016\u0012\u0004\u0012\u00020H\u0012\f\u0012\n\u0012\u0004\u0012\u00020I\u0018\u00010B0GH\u0002J\u0018\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020NH\u0016J$\u0010O\u001a\u00020(2\u001a\u0010A\u001a\u0016\u0012\u0004\u0012\u00020P\u0012\f\u0012\n\u0012\u0004\u0012\u00020Q\u0018\u00010B0GH\u0002J\b\u0010R\u001a\u00020(H\u0016J@\u0010S\u001a\u00020(2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020W2\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0GH\u0016J\u0010\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010`\u001a\u00020]2\u0006\u0010^\u001a\u00020_H\u0080@¢\u0006\u0004\ba\u0010bJ \u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020%H\u0016J)\u0010j\u001a\u00020D2\u0006\u0010E\u001a\u00020D2\b\u0010k\u001a\u0004\u0018\u00010l2\b\u0010m\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0002\u0010nJ\u0010\u0010o\u001a\u00020K2\u0006\u0010p\u001a\u00020KH\u0016J\u001e\u0010q\u001a\u00020(2\u0006\u0010r\u001a\u00020\u001f2\f\u0010s\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J\u0018\u0010t\u001a\u00020K2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020xH\u0016J\r\u0010y\u001a\u00020(H\u0001¢\u0006\u0002\bzJ\b\u0010{\u001a\u00020(H\u0016J*\u0010|\u001a\b\u0012\u0004\u0012\u00020\u001f0}2\u0006\u0010~\u001a\u00020%2\b\u0010\u007f\u001a\u0004\u0018\u00010%2\b\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0016J\t\u0010\u0082\u0001\u001a\u00020(H\u0016J\n\u0010\u0083\u0001\u001a\u00030\u0084\u0001H\u0016J\u001a\u0010\u0085\u0001\u001a\u00020(2\b\u0010\u0086\u0001\u001a\u00030\u0081\u0001H\u0082@¢\u0006\u0003\u0010\u0087\u0001J\u0011\u0010\u0088\u0001\u001a\u00020\u001d2\u0006\u0010r\u001a\u00020\u001fH\u0002J\t\u0010\u0089\u0001\u001a\u00020[H\u0002J$\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0006\u0010r\u001a\u00020\u001f2\u0006\u0010~\u001a\u00020%2\b\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0014J\u001b\u0010\u008e\u0001\u001a\u00020D2\b\u0010\u008f\u0001\u001a\u00030\u0090\u00012\u0006\u0010w\u001a\u00020xH\u0014J\t\u0010\u0091\u0001\u001a\u00020(H\u0016JH\u0010\u0092\u0001\u001a\u00020(2\u0007\u0010\u0093\u0001\u001a\u00020%2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u00012\u0014\u0010\u0096\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0GH\u0016J\u0013\u0010\u0098\u0001\u001a\u00020(2\b\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0016J\u0013\u0010\u009b\u0001\u001a\u00030\u0084\u00012\u0007\u0010M\u001a\u00030\u009c\u0001H\u0016J[\u0010\u009d\u0001\u001a\u00020(2\b\u0010\u009e\u0001\u001a\u00030\u009f\u00012\t\u0010 \u0001\u001a\u0004\u0018\u00010%2\t\u0010¡\u0001\u001a\u0004\u0018\u00010%2\u0006\u0010V\u001a\u00020W2\u0014\u0010\u0096\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0GH\u0016J×\u0001\u0010¢\u0001\u001a\u00020(2\b\u0010\u009e\u0001\u001a\u00030\u009f\u00012\u0014\u0010\u0096\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0G2\u0007\u0010£\u0001\u001a\u00020W2\u0007\u0010¤\u0001\u001a\u00020W2\u0007\u0010¥\u0001\u001a\u00020W2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010%2\n\u0010¦\u0001\u001a\u0005\u0018\u00010\u009f\u00012\u0010\u0010§\u0001\u001a\u000b\u0012\u0005\u0012\u00030¨\u0001\u0018\u00010}2\t\u0010©\u0001\u001a\u0004\u0018\u00010%2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u00012\u0006\u0010V\u001a\u00020W2\t\u0010E\u001a\u0005\u0018\u00010ª\u00012\u0007\u0010«\u0001\u001a\u00020W2\n\u0010¬\u0001\u001a\u0005\u0018\u00010\u00ad\u00012\t\u0010®\u0001\u001a\u0004\u0018\u00010%2\n\u0010¯\u0001\u001a\u0005\u0018\u00010°\u0001H\u0016J|\u0010±\u0001\u001a\u00020(2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010%2\u0006\u0010V\u001a\u00020W2\u0007\u0010¤\u0001\u001a\u00020W2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010²\u00012\n\u0010¬\u0001\u001a\u0005\u0018\u00010\u00ad\u00012\n\u0010¯\u0001\u001a\u0005\u0018\u00010°\u00012\u0007\u0010p\u001a\u00030³\u00012\u0014\u0010\u0096\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0GH\u0016J\t\u0010´\u0001\u001a\u00020(H\u0002J\r\u0010µ\u0001\u001a\u00020(*\u00020[H\u0002J/\u0010¶\u0001\u001a\u0002H0\"\u0012\b\u0000\u00100*\f\u0012\u0004\u0012\u0002H0\u0012\u0002\b\u00030@*\n\u0012\u0004\u0012\u0002H0\u0018\u00010BH\u0002¢\u0006\u0003\u0010·\u0001J$\u0010¸\u0001\u001a\u0018\u0012\u0005\u0012\u00030º\u0001\u0012\u0005\u0012\u00030»\u0001\u0012\u0005\u0012\u00030¼\u00010¹\u0001*\u00030½\u0001H\u0002R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010+\u001a\u00020,*\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u0006¿\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;", "apiClient", "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;", "jackrabbitApiResolver", "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;", "Lcom/stripe/proto/api/sdk/JackRabbitApi;", "requestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;", "apiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "readerActivator", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;", "offlineStatsListener", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;", "readerEventsHandler", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;", "jackrabbitClient", "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "activateJob", "Lkotlinx/coroutines/Job;", "connectedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "getConnectedReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "heartbeatJob", "jackrabbitApiClient", "lastReaderConfigHash", "", "onUnexpectedDisconnect", "Lkotlin/Function0;", "", "paymentJob", "readerEventsJob", "readerEventsApi", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;", "getReaderEventsApi", "(Lcom/stripe/proto/api/sdk/JackRabbitApi;)Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;", "assertClientSideCancellationIsSupported", "T", "block", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "assertClientSideCreationIsSupported", "cancelCollectData", "cancelCollectInputs", "cancelCollectInteracRefundMethod", "cancelCollectPaymentMethod", "cancelCollectSetupIntentPaymentMethod", "cancelConfirmInteracRefund", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "cancelConfirmPaymentIntent", "cancelConfirmSetupIntent", "cancelConfirmation", "M", "Lcom/squareup/wire/Message;", "cancelFun", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "cancelPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "cancelPaymentMethodCollect", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;", "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodResponse;", "cancelSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "intent", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "cancelSetupIntentPaymentCollect", "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;", "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodResponse;", "clearReaderDisplay", "collectData", "type", "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;", "enableCustomerCancellation", "", "onDataCollected", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "onFailure", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "collectInputs", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "kmpCollectInputsParameters", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "collectInputsSuspendUntilComplete", "collectInputsSuspendUntilComplete$common_publish", "(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmInteracRefund", "Lcom/stripe/stripeterminal/external/models/Refund;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "reason", "confirmPayment", "amountSurcharge", "", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "confirmSetupIntent", "setupIntent", "connectReader", OfflineStorageConstantsKt.READER, "disconnectCallback", "createSetupIntent", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "disableHeartbeat", "disableHeartbeat$common_publish", "disconnectReader", "discoverReaders", "", "connectionToken", FirebaseAnalytics.Param.LOCATION, "timeoutInSeconds", "", "finishConfirmPayment", "getReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "handleUnAckedReaderEvents", "count", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "maintainConnectivity", "noActiveReaderException", "onActivateReader", "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "onCreatePaymentIntent", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "onPaymentMethodCollectedForPaymentIntent", "resumeCollectPaymentMethod", "intentId", "offlineDetails", "Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "onPaymentCollected", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "startInteracRefund", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "chargeId", "paymentIntentId", "startPaymentCollection", "skipTipping", "manualEntry", "updatePaymentIntent", "tipEligibleAmount", "computedPriorities", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "stripeAccountId", "Lcom/stripe/proto/model/rest/PaymentIntent;", "requestDynamicCurrencyConversion", "offlineBehavior", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "surchargeNotice", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "startSetupIntentPaymentCollection", "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "Lcom/stripe/proto/model/rest/SetupIntent;", "tearDownConnection", "disconnectIfCommunicationError", "ensureConnectedJackrabbitResponse", "(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;", "getKmpHelpers", "Lkotlin/Triple;", "Lio/ktor/client/HttpClient;", "Lokhttp3/HttpUrl;", "Lio/ktor/http/URLProtocol;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IpReaderController extends RemoteReaderController {
    public static final long HEARTBEAT_INTERVAL_MS = 15000;
    private static final int MAX_CONNECTION_FAILURES = 2;
    private static final long MINIMUM_CLIENT_SIDE_CANCEL_SW_VERSION = 2110024;
    private static final long MINIMUM_CLIENT_SIDE_CREATE_SW_VERSION = 2100100;
    private Job activateJob;
    private final ApiClient apiClient;
    private final JackRabbitApiRequestFactory apiRequestFactory;
    private final CoroutineScope coroutineScope;
    private final FeatureFlagsRepository featureFlagsRepository;
    private Job heartbeatJob;
    private JackRabbitApi jackrabbitApiClient;
    private final CrpcServiceResolver<JackRabbitApi> jackrabbitApiResolver;
    private final JackrabbitClient jackrabbitClient;
    private String lastReaderConfigHash;
    private final LoggerFactory loggerFactory;
    private final OfflineStatusDetailsListener offlineStatsListener;
    private Function0<Unit> onUnexpectedDisconnect;
    private Job paymentJob;
    private final ReaderActivator readerActivator;
    private final ReaderEventContracts.EventsCountListener readerEventsHandler;
    private Job readerEventsJob;
    private final RemoteReaderRequestContextProvider requestContextProvider;
    private final TerminalStatusManager terminalStatusManager;
    private static final Set<TerminalErrorCode> READER_COMMUNICATION_ERROR_CODES = SetsKt.setOf((Object[]) new TerminalErrorCode[]{TerminalErrorCode.READER_COMMUNICATION_SSL_ERROR, TerminalErrorCode.READER_COMMUNICATION_ERROR});

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$handleUnAckedReaderEvents$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IpReaderController.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController", f = "IpReaderController.kt", i = {}, l = {WinError.ERROR_PAGE_FAULT_DEMAND_ZERO}, m = "handleUnAckedReaderEvents", n = {}, s = {})
    static final class C04441 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04441(Continuation<? super C04441> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return IpReaderController.this.handleUnAckedReaderEvents(0, this);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void finishConfirmPayment() {
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void onPaymentMethodCollectedForPaymentIntent() {
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void connectReader(Reader reader, final Function0<Unit> disconnectCallback) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(disconnectCallback, "disconnectCallback");
        this.onUnexpectedDisconnect = new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.connectReader.1
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
                IpReaderController.this.tearDownConnection();
                disconnectCallback.invoke();
            }
        };
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void disconnectReader() {
        tearDownConnection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tearDownConnection() {
        this.onUnexpectedDisconnect = null;
        Job job = this.heartbeatJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.heartbeatJob = null;
        Job job2 = this.paymentJob;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
        }
        this.paymentJob = null;
        Job job3 = this.activateJob;
        if (job3 != null) {
            Job.DefaultImpls.cancel$default(job3, (CancellationException) null, 1, (Object) null);
        }
        this.activateJob = null;
        Job job4 = this.readerEventsJob;
        if (job4 != null) {
            Job.DefaultImpls.cancel$default(job4, (CancellationException) null, 1, (Object) null);
        }
        this.readerEventsJob = null;
        this.jackrabbitApiClient = null;
        this.offlineStatsListener.clear();
        this.jackrabbitClient.tearDownConnection();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.stripe.stripeterminal.external.models.Reader> discoverReaders(java.lang.String r9, java.lang.String r10, int r11) {
        /*
            r8 = this;
            java.lang.String r0 = "connectionToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            com.stripe.stripeterminal.internal.common.api.ApiClient r1 = r8.apiClient
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r0 = r11
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 <= 0) goto L15
            goto L16
        L15:
            r11 = 0
        L16:
            if (r11 == 0) goto L2e
            java.lang.Number r11 = (java.lang.Number) r11
            int r11 = r11.intValue()
            com.stripe.jvmcore.restclient.RestConfig$Companion r0 = com.stripe.jvmcore.restclient.RestConfig.INSTANCE
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS
            long r3 = (long) r11
            long r2 = r2.toMillis(r3)
            com.stripe.jvmcore.restclient.RestConfig r11 = r0.withTimeoutMs(r2)
            if (r11 == 0) goto L2e
            goto L32
        L2e:
            com.stripe.jvmcore.restclient.RestConfig$Companion r11 = com.stripe.jvmcore.restclient.RestConfig.INSTANCE
            com.stripe.jvmcore.restclient.RestConfig r11 = (com.stripe.jvmcore.restclient.RestConfig) r11
        L32:
            r5 = r11
            r6 = 2
            r7 = 0
            r3 = 0
            r2 = r9
            r4 = r10
            com.stripe.stripeterminal.internal.common.api.ListAllReadersResponse r9 = com.stripe.stripeterminal.internal.common.api.ApiClient.listAllReaders$default(r1, r2, r3, r4, r5, r6, r7)
            java.util.List r9 = r9.getReaderList()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.discoverReaders(java.lang.String, java.lang.String, int):java.util.List");
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void setReaderDisplay(Cart cart) throws TerminalException {
        Intrinsics.checkNotNullParameter(cart, "cart");
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.setReaderDisplay(this.apiRequestFactory.setReaderDisplay(cart)) : null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public ReaderSettings setReaderSettings(final ReaderSettingsParameters params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return (ReaderSettings) assertReaderSettingsIsSupported(new Function0<ReaderSettings>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.setReaderSettings.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ReaderSettings invoke() {
                IpReaderController ipReaderController = IpReaderController.this;
                JackRabbitApi jackRabbitApi = ipReaderController.jackrabbitApiClient;
                ReaderSettingsResponse readerSettingsResponse = ((SetReaderSettingsResponse) ipReaderController.ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.setReaderSettings(IpReaderController.this.apiRequestFactory.setReaderSettings(params)) : null)).response;
                return ipReaderController.getOrDefault(readerSettingsResponse != null ? IpReaderController.this.getReaderSettings(readerSettingsResponse) : null);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public ReaderSettings getReaderSettings() {
        return (ReaderSettings) assertReaderSettingsIsSupported(new Function0<ReaderSettings>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.getReaderSettings.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ReaderSettings invoke() {
                IpReaderController ipReaderController = IpReaderController.this;
                JackRabbitApi jackRabbitApi = ipReaderController.jackrabbitApiClient;
                ReaderSettingsResponse readerSettingsResponse = ((GetReaderSettingsResponse) ipReaderController.ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.getReaderSettings(IpReaderController.this.apiRequestFactory.getReaderSettings()) : null)).response;
                return ipReaderController.getOrDefault(readerSettingsResponse != null ? IpReaderController.this.getReaderSettings(readerSettingsResponse) : null);
            }
        });
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectInputs$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IpReaderController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectInputs$1", f = "IpReaderController.kt", i = {}, l = {WinError.ERROR_ITERATED_DATA_EXCEEDS_64k}, m = "invokeSuspend", n = {}, s = {})
    static final class C04401 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super KmpCollectInputsResult>, Object> {
        final /* synthetic */ KmpCollectInputsParameters $kmpCollectInputsParameters;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04401(KmpCollectInputsParameters kmpCollectInputsParameters, Continuation<? super C04401> continuation) {
            super(2, continuation);
            this.$kmpCollectInputsParameters = kmpCollectInputsParameters;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IpReaderController.this.new C04401(this.$kmpCollectInputsParameters, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super KmpCollectInputsResult> continuation) {
            return ((C04401) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws TerminalException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object objCollectInputsSuspendUntilComplete$common_publish = IpReaderController.this.collectInputsSuspendUntilComplete$common_publish(this.$kmpCollectInputsParameters, this);
            return objCollectInputsSuspendUntilComplete$common_publish == coroutine_suspended ? coroutine_suspended : objCollectInputsSuspendUntilComplete$common_publish;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public KmpCollectInputsResult collectInputs(KmpCollectInputsParameters kmpCollectInputsParameters) {
        Intrinsics.checkNotNullParameter(kmpCollectInputsParameters, "kmpCollectInputsParameters");
        return (KmpCollectInputsResult) BuildersKt__BuildersKt.runBlocking$default(null, new C04401(kmpCollectInputsParameters, null), 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collectInputsSuspendUntilComplete$common_publish(com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters r14, kotlin.coroutines.Continuation<? super com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult> r15) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            r13 = this;
            boolean r0 = r15 instanceof com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectInputsSuspendUntilComplete$1
            if (r0 == 0) goto L14
            r0 = r15
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectInputsSuspendUntilComplete$1 r0 = (com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectInputsSuspendUntilComplete$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r15 = r0.label
            int r15 = r15 - r2
            r0.label = r15
            goto L19
        L14:
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectInputsSuspendUntilComplete$1 r0 = new com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectInputsSuspendUntilComplete$1
            r0.<init>(r13, r15)
        L19:
            r12 = r0
            java.lang.Object r15 = r12.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r12.label
            r2 = 1
            if (r1 == 0) goto L38
            if (r1 != r2) goto L30
            java.lang.Object r14 = r12.L$0
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController r14 = (com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController) r14
            kotlin.ResultKt.throwOnFailure(r15)
            goto L9e
        L30:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L38:
            kotlin.ResultKt.throwOnFailure(r15)
            com.stripe.proto.api.sdk.JackRabbitApi r15 = r13.jackrabbitApiClient
            if (r15 == 0) goto Lba
            com.stripe.jvmcore.crpcclient.CrpcClient r15 = r15.getClient()
            if (r15 == 0) goto Lba
            kotlin.Triple r1 = r13.getKmpHelpers(r15)
            java.lang.Object r3 = r1.component1()
            io.ktor.client.HttpClient r3 = (io.ktor.client.HttpClient) r3
            java.lang.Object r4 = r1.component2()
            okhttp3.HttpUrl r4 = (okhttp3.HttpUrl) r4
            java.lang.Object r1 = r1.component3()
            r11 = r1
            io.ktor.http.URLProtocol r11 = (io.ktor.http.URLProtocol) r11
            com.stripe.kmpcore.jackrabbitclient.JackrabbitClient r1 = r13.jackrabbitClient
            com.stripe.jvmcore.crpcclient.CrpcClient$CrpcRequestContextProvider r5 = r15.getRequestContextProvider()
            java.lang.String r5 = r5.getToken()
            com.stripe.jvmcore.crpcclient.CrpcClient$CrpcRequestContextProvider r6 = r15.getRequestContextProvider()
            java.lang.String r6 = r6.getLocalIp()
            r7 = r2
            r2 = r3
            r3 = r5
            java.lang.String r5 = r4.host()
            int r4 = r4.port()
            r8 = r7
            kotlin.jvm.functions.Function0<kotlin.Unit> r7 = r13.onUnexpectedDisconnect
            com.stripe.jvmcore.crpcclient.CrpcClient$CrpcRequestContextProvider r9 = r15.getRequestContextProvider()
            com.stripe.proto.model.common.VersionInfoPb r9 = r9.getVersionInfo()
            com.stripe.jvmcore.crpcclient.CrpcClient$CrpcRequestContextProvider r15 = r15.getRequestContextProvider()
            com.stripe.proto.model.common.DeviceInfo r15 = r15.getDeviceInfo()
            r12.L$0 = r13
            r12.label = r8
            r8 = r6
            r6 = r4
            r4 = r8
            r10 = r14
            r8 = r9
            r9 = r15
            java.lang.Object r15 = r1.collectInputsPollForResult(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            if (r15 != r0) goto L9d
            return r0
        L9d:
            r14 = r13
        L9e:
            com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult r15 = (com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult) r15
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger r14 = r14.getLogger()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "KmpCollectInputsResult: "
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r15)
            java.lang.String r0 = r0.toString()
            r1 = 0
            kotlin.Pair[] r1 = new kotlin.Pair[r1]
            r14.i(r0, r1)
            return r15
        Lba:
            com.stripe.stripeterminal.external.models.TerminalException r14 = r13.noActiveReaderException()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.collectInputsSuspendUntilComplete$common_publish(com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectInputs() throws TerminalException {
        CrpcClient client;
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        if (jackRabbitApi == null || (client = jackRabbitApi.getClient()) == null) {
            throw noActiveReaderException();
        }
        Triple<HttpClient, HttpUrl, URLProtocol> kmpHelpers = getKmpHelpers(client);
        HttpClient httpClientComponent1 = kmpHelpers.component1();
        HttpUrl httpUrlComponent2 = kmpHelpers.component2();
        this.jackrabbitClient.cancelCollectInputs(new CancelCollectInputsRequest(null, 1, 0 == true ? 1 : 0), httpClientComponent1, client.getRequestContextProvider().getToken(), client.getRequestContextProvider().getLocalIp(), httpUrlComponent2.host(), httpUrlComponent2.port(), client.getRequestContextProvider().getVersionInfo(), client.getRequestContextProvider().getDeviceInfo(), kmpHelpers.component3());
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    protected ActivateTerminalResponse onActivateReader(Reader reader, String connectionToken, ConnectionConfiguration connectionConfiguration) throws TerminalException {
        CrpcResponse<ActivateTerminalResponse> crpcResponseActivateTerminal;
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        JackRabbitApi jackRabbitApiResolve = this.jackrabbitApiResolver.resolve(reader.getIpAddress(), reader.getBaseUrl());
        this.jackrabbitApiClient = jackRabbitApiResolve;
        if (jackRabbitApiResolve == null || (crpcResponseActivateTerminal = jackRabbitApiResolve.activateTerminal(this.apiRequestFactory.activateTerminal(connectionToken, connectionConfiguration.getFailIfInUse()))) == null) {
            throw noActiveReaderException();
        }
        ActivateTerminalResponse activateTerminalResponse = (ActivateTerminalResponse) CrpcResponseExtensions.INSTANCE.withJackrabbitResponseForActivateReader(crpcResponseActivateTerminal);
        this.requestContextProvider.setToken(activateTerminalResponse.session_token);
        this.offlineStatsListener.saveStats(activateTerminalResponse.offline_stats, activateTerminalResponse.network_status);
        Job job = this.heartbeatJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.heartbeatJob = maintainConnectivity(reader);
        return activateTerminalResponse;
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    protected PaymentIntent onCreatePaymentIntent(final PaymentIntentParameters paymentIntentParameters, final CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(paymentIntentParameters, "paymentIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        return (PaymentIntent) assertClientSideCreationIsSupported(new Function0<PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.onCreatePaymentIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PaymentIntent invoke() throws TerminalException {
                CreatePaymentIntentRequest createPaymentIntentRequestCreatePaymentIntent = IpReaderController.this.apiRequestFactory.createPaymentIntent(paymentIntentParameters, createConfiguration);
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                CreatePaymentIntentResponseExtensions.CreatePaymentIntentResponseResult result = CreatePaymentIntentResponseExtensions.INSTANCE.toResult((CreatePaymentIntentResponse) IpReaderController.this.ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.createPaymentIntent(createPaymentIntentRequestCreatePaymentIntent) : null));
                if (result instanceof CreatePaymentIntentResponseExtensions.CreatePaymentIntentResponseResult.Success) {
                    return ((CreatePaymentIntentResponseExtensions.CreatePaymentIntentResponseResult.Success) result).getPaymentIntent();
                }
                if (result instanceof CreatePaymentIntentResponseExtensions.CreatePaymentIntentResponseResult.Error) {
                    throw ((CreatePaymentIntentResponseExtensions.CreatePaymentIntentResponseResult.Error) result).getException();
                }
                throw new NoWhenBranchMatchedException();
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public SetupIntent createSetupIntent(final SetupIntentParameters setupIntentParameters, final CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(setupIntentParameters, "setupIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        return (SetupIntent) assertClientSideCreationIsSupported(new Function0<SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.createSetupIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SetupIntent invoke() throws TerminalException {
                CreateSetupIntentRequest createSetupIntentRequestCreateSetupIntent = IpReaderController.this.apiRequestFactory.createSetupIntent(setupIntentParameters, createConfiguration);
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                CreateSetupIntentResponseExtensions.CreateSetupIntentResponseResult result = CreateSetupIntentResponseExtensions.INSTANCE.toResult((CreateSetupIntentResponse) IpReaderController.this.ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.createSetupIntent(createSetupIntentRequestCreateSetupIntent) : null));
                if (result instanceof CreateSetupIntentResponseExtensions.CreateSetupIntentResponseResult.Error) {
                    throw ((CreateSetupIntentResponseExtensions.CreateSetupIntentResponseResult.Error) result).getException();
                }
                if (result instanceof CreateSetupIntentResponseExtensions.CreateSetupIntentResponseResult.Success) {
                    return ((CreateSetupIntentResponseExtensions.CreateSetupIntentResponseResult.Success) result).getSetupIntent();
                }
                throw new NoWhenBranchMatchedException();
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectInteracRefundMethod() {
        cancelPaymentMethodCollect(new Function1<CancelCollectPaymentMethodRequest, CrpcResponse<CancelCollectPaymentMethodResponse>>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.cancelCollectInteracRefundMethod.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CrpcResponse<CancelCollectPaymentMethodResponse> invoke(CancelCollectPaymentMethodRequest it) {
                Intrinsics.checkNotNullParameter(it, "it");
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                if (jackRabbitApi != null) {
                    return jackRabbitApi.cancelCollectInteracRefundMethod(it);
                }
                return null;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void startPaymentCollection(Amount amount, Function1<? super PaymentMethodData, Unit> onPaymentCollected, final Function1<? super TerminalException, Unit> onFailure, boolean skipTipping, boolean manualEntry, boolean updatePaymentIntent, String intentId, Amount tipEligibleAmount, List<? extends PaymentMethodOptions.RoutingPriority> computedPriorities, String stripeAccountId, OfflineDetails offlineDetails, boolean enableCustomerCancellation, com.stripe.proto.model.rest.PaymentIntent paymentIntent, boolean requestDynamicCurrencyConversion, OfflineBehavior offlineBehavior, String surchargeNotice, AllowRedisplay allowRedisplay) throws TerminalException {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(onPaymentCollected, "onPaymentCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        if (jackRabbitApi != null) {
            this.paymentJob = new CollectPaymentJob(this.coroutineScope, this.loggerFactory, onPaymentCollected, new Function1<TerminalException, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$startPaymentCollection$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    onFailure.invoke(e);
                    this.disconnectIfCommunicationError(e);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TerminalException terminalException) {
                    invoke2(terminalException);
                    return Unit.INSTANCE;
                }
            }, this.apiRequestFactory.collectPaymentMethod(amount, skipTipping, manualEntry, updatePaymentIntent, intentId, tipEligibleAmount, computedPriorities, stripeAccountId, offlineDetails != null ? ProtoConverter.INSTANCE.toProtoOfflineDetails(offlineDetails) : null, enableCustomerCancellation, paymentIntent, requestDynamicCurrencyConversion, offlineBehavior != null ? OfflineBehaviorExtensionsKt.toOfflineBehaviorProto(offlineBehavior) : null, surchargeNotice, allowRedisplay != null ? ProtoConverter.INSTANCE.toProtoAllowRedisplay(allowRedisplay) : null), jackRabbitApi).launch();
            obj = Unit.INSTANCE;
        }
        if (obj == null) {
            throw noActiveReaderException();
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void startInteracRefund(Amount amount, String chargeId, String paymentIntentId, boolean enableCustomerCancellation, Function1<? super PaymentMethodData, Unit> onPaymentCollected, final Function1<? super TerminalException, Unit> onFailure) throws TerminalException {
        Unit unit;
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(onPaymentCollected, "onPaymentCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        if (jackRabbitApi != null) {
            this.paymentJob = new CollectRefundPaymentJob(this.coroutineScope, this.loggerFactory, onPaymentCollected, new Function1<TerminalException, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$startInteracRefund$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    onFailure.invoke(e);
                    this.disconnectIfCommunicationError(e);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TerminalException terminalException) {
                    invoke2(terminalException);
                    return Unit.INSTANCE;
                }
            }, this.apiRequestFactory.collectInteracRefundMethod(amount, paymentIntentId, chargeId, enableCustomerCancellation), jackRabbitApi).launch();
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            throw noActiveReaderException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void startSetupIntentPaymentCollection(String intentId, boolean enableCustomerCancellation, boolean manualEntry, SetupIntentOfflineDetails offlineDetails, OfflineBehavior offlineBehavior, AllowRedisplay allowRedisplay, com.stripe.proto.model.rest.SetupIntent setupIntent, Function1<? super PaymentMethodData, Unit> onPaymentCollected, final Function1<? super TerminalException, Unit> onFailure) throws TerminalException {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        Intrinsics.checkNotNullParameter(onPaymentCollected, "onPaymentCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        if (jackRabbitApi != null) {
            this.paymentJob = new CollectSetupIntentPaymentJob(this.coroutineScope, this.loggerFactory, onPaymentCollected, new Function1<TerminalException, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$startSetupIntentPaymentCollection$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    onFailure.invoke(e);
                    this.disconnectIfCommunicationError(e);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TerminalException terminalException) {
                    invoke2(terminalException);
                    return Unit.INSTANCE;
                }
            }, this.apiRequestFactory.collectSetupIntentPaymentMethod(intentId, enableCustomerCancellation, manualEntry, offlineDetails != null ? ProtoConverter.INSTANCE.toProtoOfflineDetails(offlineDetails) : null, offlineBehavior != null ? OfflineBehaviorExtensionsKt.toOfflineBehaviorProto(offlineBehavior) : null, allowRedisplay != null ? ProtoConverter.INSTANCE.toProtoAllowRedisplay(allowRedisplay) : null, com.stripe.proto.model.rest.SetupIntent.copy$default(setupIntent, intentId == null ? "" : intentId, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, CoroutineScheduler.MAX_SUPPORTED_POOL_SIZE, null)), jackRabbitApi).launch();
            obj = Unit.INSTANCE;
        }
        if (obj == null) {
            throw noActiveReaderException();
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectPaymentMethod() {
        cancelPaymentMethodCollect(new Function1<CancelCollectPaymentMethodRequest, CrpcResponse<CancelCollectPaymentMethodResponse>>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.cancelCollectPaymentMethod.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CrpcResponse<CancelCollectPaymentMethodResponse> invoke(CancelCollectPaymentMethodRequest it) {
                Intrinsics.checkNotNullParameter(it, "it");
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                if (jackRabbitApi != null) {
                    return jackRabbitApi.cancelCollectPaymentMethod(it);
                }
                return null;
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectSetupIntentPaymentMethod() {
        cancelSetupIntentPaymentCollect(new Function1<CancelSetupIntentPaymentMethodRequest, CrpcResponse<CancelSetupIntentPaymentMethodResponse>>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.cancelCollectSetupIntentPaymentMethod.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CrpcResponse<CancelSetupIntentPaymentMethodResponse> invoke(CancelSetupIntentPaymentMethodRequest it) {
                Intrinsics.checkNotNullParameter(it, "it");
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                if (jackRabbitApi != null) {
                    return jackRabbitApi.cancelSetupIntentPaymentMethod(it);
                }
                return null;
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void clearReaderDisplay() throws TerminalException {
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.clearReaderDisplay(this.apiRequestFactory.clearReaderDisplay()) : null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public Refund confirmInteracRefund(RefundParameters refundParams, PaymentMethod paymentMethod, String reason) throws TerminalException {
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        Intrinsics.checkNotNullParameter(reason, "reason");
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        ConfirmInteracRefundResponseExtensions.ConfirmInteracRefundResponseResult result = ConfirmInteracRefundResponseExtensions.INSTANCE.toResult((ConfirmInteracRefundResponse) ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.confirmInteracRefund(this.apiRequestFactory.confirmInteracRefund(refundParams, paymentMethod, reason)) : null));
        if (result instanceof ConfirmInteracRefundResponseExtensions.ConfirmInteracRefundResponseResult.Success) {
            return ((ConfirmInteracRefundResponseExtensions.ConfirmInteracRefundResponseResult.Success) result).getRefund();
        }
        if (result instanceof ConfirmInteracRefundResponseExtensions.ConfirmInteracRefundResponseResult.Error) {
            throw ((ConfirmInteracRefundResponseExtensions.ConfirmInteracRefundResponseResult.Error) result).getException();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelConfirmInteracRefund(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        cancelConfirmation(callback, new Function0<CrpcResponse<CancelConfirmInteracRefundResponse>>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.cancelConfirmInteracRefund.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CrpcResponse<CancelConfirmInteracRefundResponse> invoke() {
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                if (jackRabbitApi != null) {
                    return jackRabbitApi.cancelConfirmInteracRefund(IpReaderController.this.apiRequestFactory.cancelConfirmInteracRefund());
                }
                return null;
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public PaymentIntent confirmPayment(PaymentIntent paymentIntent, Long amountSurcharge, String returnUrl) throws TerminalException {
        PaymentMethod paymentMethod;
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        JackRabbitApiRequestFactory jackRabbitApiRequestFactory = this.apiRequestFactory;
        String id = paymentIntent.getId();
        PaymentMethodData paymentMethodData = paymentIntent.getPaymentMethodData();
        if (paymentMethodData == null || (ipPaymentMethod = paymentMethodData.getNonCardPaymentMethod()) == null) {
            PaymentMethodData paymentMethodData2 = paymentIntent.getPaymentMethodData();
            if (paymentMethodData2 != null) {
                PaymentMethod ipPaymentMethod = paymentMethodData2.getIpPaymentMethod();
                paymentMethod = ipPaymentMethod;
            } else {
                paymentMethod = null;
            }
        } else {
            paymentMethod = ipPaymentMethod;
        }
        OfflineDetails offlineDetails = paymentIntent.getOfflineDetails();
        ConfirmPaymentRequest confirmPaymentRequestConfirmPayment = jackRabbitApiRequestFactory.confirmPayment(id, paymentMethod, amountSurcharge, returnUrl, offlineDetails != null ? ProtoConverter.INSTANCE.toProtoOfflineDetails(offlineDetails) : null);
        ConfirmPaymentResponseExtensions confirmPaymentResponseExtensions = ConfirmPaymentResponseExtensions.INSTANCE;
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        ConfirmPaymentResponseExtensions.ConfirmPaymentResponseResult result = confirmPaymentResponseExtensions.toResult((ConfirmPaymentResponse) ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.confirmPayment(confirmPaymentRequestConfirmPayment) : null));
        this.offlineStatsListener.updateStats(result.getOfflineStats());
        if (result instanceof ConfirmPaymentResponseExtensions.ConfirmPaymentResponseResult.Error) {
            throw ((ConfirmPaymentResponseExtensions.ConfirmPaymentResponseResult.Error) result).getException();
        }
        if (!(result instanceof ConfirmPaymentResponseExtensions.ConfirmPaymentResponseResult.Success)) {
            throw new NoWhenBranchMatchedException();
        }
        ConfirmPaymentResponseExtensions.ConfirmPaymentResponseResult.Success success = (ConfirmPaymentResponseExtensions.ConfirmPaymentResponseResult.Success) result;
        if (success.getPaymentIntent().getStatus() == PaymentIntentStatus.REQUIRES_ACTION) {
            final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            CoroutineScope coroutineScope = this.coroutineScope;
            JackRabbitApiRequestFactory jackRabbitApiRequestFactory2 = this.apiRequestFactory;
            String id2 = success.getPaymentIntent().getId();
            Intrinsics.checkNotNull(id2);
            HandlePaymentIntentNextActionsRequest handlePaymentIntentNextActionsRequestHandlePaymentIntentNextActions = jackRabbitApiRequestFactory2.handlePaymentIntentNextActions(id2);
            JackRabbitApi jackRabbitApi2 = this.jackrabbitApiClient;
            Intrinsics.checkNotNull(jackRabbitApi2);
            this.paymentJob = new HandlePaymentIntentNextActionJob(coroutineScope, this.loggerFactory, new Function1<PaymentIntent, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$confirmPayment$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(PaymentIntent pi) {
                    Intrinsics.checkNotNullParameter(pi, "pi");
                    completableDeferredCompletableDeferred$default.complete(pi);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PaymentIntent paymentIntent2) {
                    invoke2(paymentIntent2);
                    return Unit.INSTANCE;
                }
            }, new Function1<TerminalException, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$confirmPayment$2$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    completableDeferredCompletableDeferred$default.completeExceptionally(e);
                    this.disconnectIfCommunicationError(e);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TerminalException terminalException) {
                    invoke2(terminalException);
                    return Unit.INSTANCE;
                }
            }, handlePaymentIntentNextActionsRequestHandlePaymentIntentNextActions, jackRabbitApi2).launch();
            return (PaymentIntent) BuildersKt__BuildersKt.runBlocking$default(null, new IpReaderController$confirmPayment$2$3(completableDeferredCompletableDeferred$default, null), 1, null);
        }
        return success.getPaymentIntent();
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelConfirmPaymentIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        cancelConfirmation(callback, new Function0<CrpcResponse<CancelConfirmPaymentIntentResponse>>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.cancelConfirmPaymentIntent.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CrpcResponse<CancelConfirmPaymentIntentResponse> invoke() {
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                if (jackRabbitApi != null) {
                    return jackRabbitApi.cancelConfirmPaymentIntent(IpReaderController.this.apiRequestFactory.cancelConfirmPaymentIntent());
                }
                return null;
            }
        });
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
    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void resumeCollectPaymentMethod(String intentId, OfflineDetails offlineDetails, Function1<? super PaymentMethodData, Unit> onPaymentCollected, final Function1<? super TerminalException, Unit> onFailure) throws TerminalException {
        Intrinsics.checkNotNullParameter(intentId, "intentId");
        Intrinsics.checkNotNullParameter(onPaymentCollected, "onPaymentCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        Unit unit = null;
        if (jackRabbitApi != null) {
            this.paymentJob = new ResumePaymentJob(this.coroutineScope, this.loggerFactory, onPaymentCollected, new Function1<TerminalException, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$resumeCollectPaymentMethod$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TerminalException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    onFailure.invoke(e);
                    this.disconnectIfCommunicationError(e);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TerminalException terminalException) {
                    invoke2(terminalException);
                    return Unit.INSTANCE;
                }
            }, this.apiRequestFactory.resumeCollectPaymentMethod(intentId, offlineDetails != null ? ProtoConverter.INSTANCE.toProtoOfflineDetails(offlineDetails) : null), jackRabbitApi).launch();
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            throw noActiveReaderException();
        }
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
    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public SetupIntent confirmSetupIntent(SetupIntent setupIntent) throws TerminalException {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        CrpcResponse<ConfirmSetupIntentResponse> crpcResponseConfirmSetupIntent = null;
        if (jackRabbitApi != null) {
            JackRabbitApiRequestFactory jackRabbitApiRequestFactory = this.apiRequestFactory;
            String id = setupIntent.getId();
            SetupIntentOfflineDetails offlineDetails = setupIntent.getOfflineDetails();
            crpcResponseConfirmSetupIntent = jackRabbitApi.confirmSetupIntent(jackRabbitApiRequestFactory.confirmSetupIntent(id, offlineDetails != null ? ProtoConverter.INSTANCE.toProtoOfflineDetails(offlineDetails) : null));
        }
        ConfirmSetupIntentResponseExtensions.ConfirmSetupIntentResponseResult result = ConfirmSetupIntentResponseExtensions.INSTANCE.toResult((ConfirmSetupIntentResponse) ensureConnectedJackrabbitResponse(crpcResponseConfirmSetupIntent));
        this.offlineStatsListener.updateStats(result.getOfflineStats());
        if (result instanceof ConfirmSetupIntentResponseExtensions.ConfirmSetupIntentResponseResult.Error) {
            throw ((ConfirmSetupIntentResponseExtensions.ConfirmSetupIntentResponseResult.Error) result).getException();
        }
        if (result instanceof ConfirmSetupIntentResponseExtensions.ConfirmSetupIntentResponseResult.Success) {
            return ((ConfirmSetupIntentResponseExtensions.ConfirmSetupIntentResponseResult.Success) result).getSetupIntent();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelConfirmSetupIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        cancelConfirmation(callback, new Function0<CrpcResponse<CancelConfirmSetupIntentResponse>>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.cancelConfirmSetupIntent.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CrpcResponse<CancelConfirmSetupIntentResponse> invoke() {
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                if (jackRabbitApi != null) {
                    return jackRabbitApi.cancelConfirmSetupIntent(IpReaderController.this.apiRequestFactory.cancelConfirmSetupIntent());
                }
                return null;
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public PaymentIntent cancelPaymentIntent(final PaymentIntent paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        return (PaymentIntent) assertClientSideCancellationIsSupported(new Function0<PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.cancelPaymentIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PaymentIntent invoke() throws TerminalException {
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                CancelPaymentIntentResponseExtensions.CancelPaymentIntentResponseResult result = CancelPaymentIntentResponseExtensions.INSTANCE.toResult((CancelPaymentIntentResponse) IpReaderController.this.ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.cancelPaymentIntent(IpReaderController.this.apiRequestFactory.cancelPaymentIntent(OfflineAdapterKt.requireOnlineId(paymentIntent))) : null));
                if (result instanceof CancelPaymentIntentResponseExtensions.CancelPaymentIntentResponseResult.Error) {
                    throw ((CancelPaymentIntentResponseExtensions.CancelPaymentIntentResponseResult.Error) result).getException();
                }
                if (result instanceof CancelPaymentIntentResponseExtensions.CancelPaymentIntentResponseResult.Success) {
                    return ((CancelPaymentIntentResponseExtensions.CancelPaymentIntentResponseResult.Success) result).getPaymentIntent();
                }
                throw new NoWhenBranchMatchedException();
            }
        });
    }

    public final void disableHeartbeat$common_publish() {
        Job job = this.heartbeatJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.heartbeatJob = null;
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public SetupIntent cancelSetupIntent(final SetupIntent intent, final SetupIntentCancellationParameters params) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(params, "params");
        return (SetupIntent) assertClientSideCancellationIsSupported(new Function0<SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.cancelSetupIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SetupIntent invoke() throws TerminalException {
                JackRabbitApi jackRabbitApi = IpReaderController.this.jackrabbitApiClient;
                CancelSetupIntentResponseExtensions.CancelSetupIntentResponseResult result = CancelSetupIntentResponseExtensions.INSTANCE.toResult((CancelSetupIntentResponse) IpReaderController.this.ensureConnectedJackrabbitResponse(jackRabbitApi != null ? jackRabbitApi.cancelSetupIntent(IpReaderController.this.apiRequestFactory.cancelSetupIntent(OfflineAdapterKt.requireOnlineId(intent), params)) : null));
                if (result instanceof CancelSetupIntentResponseExtensions.CancelSetupIntentResponseResult.Error) {
                    throw ((CancelSetupIntentResponseExtensions.CancelSetupIntentResponseResult.Error) result).getException();
                }
                if (result instanceof CancelSetupIntentResponseExtensions.CancelSetupIntentResponseResult.Success) {
                    return ((CancelSetupIntentResponseExtensions.CancelSetupIntentResponseResult.Success) result).getSetupIntent();
                }
                throw new NoWhenBranchMatchedException();
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public Reader getConnectedReader() {
        return this.terminalStatusManager.getConnectedReader();
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void collectData(CollectDataRequest.CollectDataType type, boolean enableCustomerCancellation, Function1<? super ReaderCollectedData, Unit> onDataCollected, Function1<? super TerminalException, Unit> onFailure) throws InterruptedException, TerminalException {
        CrpcClient client;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(onDataCollected, "onDataCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        if (jackRabbitApi == null || (client = jackRabbitApi.getClient()) == null) {
            throw noActiveReaderException();
        }
        Triple<HttpClient, HttpUrl, URLProtocol> kmpHelpers = getKmpHelpers(client);
        BuildersKt__BuildersKt.runBlocking$default(null, new C04391(kmpHelpers.component1(), client, kmpHelpers.component2(), type, enableCustomerCancellation, kmpHelpers.component3(), onDataCollected, onFailure, null), 1, null);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IpReaderController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectData$1", f = "IpReaderController.kt", i = {}, l = {WinError.ERROR_MOUNT_POINT_NOT_RESOLVED}, m = "invokeSuspend", n = {}, s = {})
    static final class C04391 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CrpcClient $crpcClient;
        final /* synthetic */ boolean $enableCustomerCancellation;
        final /* synthetic */ HttpClient $ktorHttpClient;
        final /* synthetic */ Function1<ReaderCollectedData, Unit> $onDataCollected;
        final /* synthetic */ Function1<TerminalException, Unit> $onFailure;
        final /* synthetic */ CollectDataRequest.CollectDataType $type;
        final /* synthetic */ HttpUrl $url;
        final /* synthetic */ URLProtocol $urlProtocol;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04391(HttpClient httpClient, CrpcClient crpcClient, HttpUrl httpUrl, CollectDataRequest.CollectDataType collectDataType, boolean z, URLProtocol uRLProtocol, Function1<? super ReaderCollectedData, Unit> function1, Function1<? super TerminalException, Unit> function12, Continuation<? super C04391> continuation) {
            super(2, continuation);
            this.$ktorHttpClient = httpClient;
            this.$crpcClient = crpcClient;
            this.$url = httpUrl;
            this.$type = collectDataType;
            this.$enableCustomerCancellation = z;
            this.$urlProtocol = uRLProtocol;
            this.$onDataCollected = function1;
            this.$onFailure = function12;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IpReaderController.this.new C04391(this.$ktorHttpClient, this.$crpcClient, this.$url, this.$type, this.$enableCustomerCancellation, this.$urlProtocol, this.$onDataCollected, this.$onFailure, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04391) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws KmpTerminalException {
            Object objCollectDataPollForResult;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    objCollectDataPollForResult = IpReaderController.this.jackrabbitClient.collectDataPollForResult(this.$ktorHttpClient, this.$crpcClient.getRequestContextProvider().getToken(), this.$crpcClient.getRequestContextProvider().getLocalIp(), this.$url.host(), this.$url.port(), IpReaderController.this.onUnexpectedDisconnect, this.$crpcClient.getRequestContextProvider().getVersionInfo(), this.$crpcClient.getRequestContextProvider().getDeviceInfo(), new CollectDataRequest(this.$type, this.$enableCustomerCancellation, null, 4, null), this.$urlProtocol, this);
                    if (objCollectDataPollForResult == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objCollectDataPollForResult = obj;
                }
                CollectDataResultInternal collectDataResultInternal = (CollectDataResultInternal) objCollectDataPollForResult;
                if (collectDataResultInternal instanceof CollectDataResultInternal.Success) {
                    this.$onDataCollected.invoke(((CollectDataResultInternal.Success) collectDataResultInternal).getReaderCollectedData());
                } else if (collectDataResultInternal instanceof CollectDataResultInternal.Failure.ApplicationError) {
                    this.$onFailure.invoke(TerminalExceptionExtensionsKt.convertJackRabbitErrorToTerminalException(((CollectDataResultInternal.Failure.ApplicationError) collectDataResultInternal).getErrorResponse().wrapped_error, ((CollectDataResultInternal.Failure.ApplicationError) collectDataResultInternal).getErrorResponse().error));
                } else if (collectDataResultInternal instanceof CollectDataResultInternal.Failure.UnexpectedError) {
                    this.$onFailure.invoke(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected error while collecting data", null, null, 12, null));
                }
            } catch (TerminalException e) {
                IpReaderController.this.getLogger().i("IpReaderController Collect data failed: " + e, new Pair[0]);
                this.$onFailure.invoke(e);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectData() throws TerminalException {
        CrpcClient client;
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        if (jackRabbitApi == null || (client = jackRabbitApi.getClient()) == null) {
            throw noActiveReaderException();
        }
        Triple<HttpClient, HttpUrl, URLProtocol> kmpHelpers = getKmpHelpers(client);
        HttpClient httpClientComponent1 = kmpHelpers.component1();
        HttpUrl httpUrlComponent2 = kmpHelpers.component2();
        this.jackrabbitClient.cancelCollectData(new CancelCollectDataRequest(null, 1, 0 == true ? 1 : 0), httpClientComponent1, client.getRequestContextProvider().getToken(), client.getRequestContextProvider().getLocalIp(), httpUrlComponent2.host(), httpUrlComponent2.port(), client.getRequestContextProvider().getVersionInfo(), client.getRequestContextProvider().getDeviceInfo(), kmpHelpers.component3());
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$maintainConnectivity$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IpReaderController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$maintainConnectivity$1", f = "IpReaderController.kt", i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6}, l = {WinError.ERROR_RESUME_HIBERNATION, WinError.ERROR_ELEVATION_REQUIRED, WinError.ERROR_ELEVATION_REQUIRED, WinError.ERROR_ELEVATION_REQUIRED, WinError.ERROR_ELEVATION_REQUIRED, WinError.ERROR_ELEVATION_REQUIRED, WinError.ERROR_ELEVATION_REQUIRED, WinError.ERROR_ELEVATION_REQUIRED, WinError.ERROR_ELEVATION_REQUIRED}, m = "invokeSuspend", n = {"consecutiveFailures", "connectionActive", "consecutiveFailures", "connectionActive", "consecutiveFailures", "connectionActive", "consecutiveFailures", "connectionActive", "consecutiveFailures", "connectionActive", "consecutiveFailures", "connectionActive", "consecutiveFailures", "connectionActive"}, s = {"I$0", "I$1", "I$0", "I$1", "I$0", "I$1", "I$0", "I$1", "I$0", "I$1", "I$0", "I$1", "I$0", "I$1"})
    static final class C04451 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Reader $reader;
        int I$0;
        int I$1;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04451(Reader reader, Continuation<? super C04451> continuation) {
            super(2, continuation);
            this.$reader = reader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IpReaderController.this.new C04451(this.$reader, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04451) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(11:17|(1:19)(1:20)|21|94|22|(4:24|(1:26)(1:27)|28|(1:30))|31|(1:38)|39|(2:42|(4:44|(1:46)|62|(2:89|90)(0))(2:47|(2:49|(1:(0)(0)))(2:52|(0))))|87) */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0134, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0135, code lost:
        
            r9 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0137, code lost:
        
            r9 = 0;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Path cross not found for [B:49:0x011f, B:52:0x0129], limit reached: 91 */
        /* JADX WARN: Path cross not found for [B:71:0x0181, B:74:0x018b], limit reached: 91 */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004c A[PHI: r0 r9
          0x004c: PHI (r0v24 int) = (r0v1 int), (r0v3 int), (r0v4 int), (r0v12 int), (r0v12 int), (r0v17 int), (r0v19 int), (r0v19 int), (r0v27 int) binds: [B:15:0x0047, B:9:0x0033, B:8:0x002b, B:75:0x0192, B:72:0x0188, B:62:0x0150, B:53:0x0130, B:50:0x0125, B:7:0x0023] A[DONT_GENERATE, DONT_INLINE]
          0x004c: PHI (r9v14 int) = (r9v0 int), (r9v2 int), (r9v3 int), (r9v10 int), (r9v10 int), (r9v11 int), (r9v13 int), (r9v13 int), (r9v34 int) binds: [B:15:0x0047, B:9:0x0033, B:8:0x002b, B:75:0x0192, B:72:0x0188, B:62:0x0150, B:53:0x0130, B:50:0x0125, B:7:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:17:0x004e A[Catch: all -> 0x0044, Exception -> 0x0139, TerminalException -> 0x0153, TRY_ENTER, TryCatch #0 {TerminalException -> 0x0153, blocks: (B:17:0x004e, B:19:0x0059, B:21:0x0064, B:11:0x003f), top: B:92:0x003f }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0112 A[PHI: r0 r9
          0x0112: PHI (r0v18 kotlin.jvm.functions.Function0) = (r0v16 kotlin.jvm.functions.Function0), (r0v23 kotlin.jvm.functions.Function0) binds: [B:67:0x0175, B:45:0x0110] A[DONT_GENERATE, DONT_INLINE]
          0x0112: PHI (r9v12 int) = (r9v10 int), (r9v13 int) binds: [B:67:0x0175, B:45:0x0110] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0116  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0164  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0178  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0197  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x01ae  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x01d1  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0125 -> B:16:0x004c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0130 -> B:16:0x004c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0150 -> B:16:0x004c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x0188 -> B:16:0x004c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0192 -> B:16:0x004c). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r20) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 492
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.C04451.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$maintainConnectivity$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: IpReaderController.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$maintainConnectivity$1$2", f = "IpReaderController.kt", i = {}, l = {WinError.ERROR_TIMER_RESUME_IGNORED}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Reader $reader;
            int label;
            final /* synthetic */ IpReaderController this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(IpReaderController ipReaderController, Reader reader, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.this$0 = ipReaderController;
                this.$reader = reader;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.this$0, this.$reader, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (this.this$0.readerActivator.activateReader(this.$reader, this) == coroutine_suspended) {
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
    }

    private final Job maintainConnectivity(Reader reader) {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C04451(reader, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleUnAckedReaderEvents(int r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.C04441
            if (r0 == 0) goto L14
            r0 = r6
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$handleUnAckedReaderEvents$1 r0 = (com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.C04441) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$handleUnAckedReaderEvents$1 r0 = new com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$handleUnAckedReaderEvents$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r5 = r0.L$0
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController r5 = (com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            com.stripe.proto.api.sdk.JackRabbitApi r6 = r4.jackrabbitApiClient
            if (r6 == 0) goto L54
            com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts$Api r6 = r4.getReaderEventsApi(r6)
            if (r6 == 0) goto L54
            com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts$EventsCountListener r2 = r4.readerEventsHandler
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r6 = r2.notifyUnAckedEvents(r6, r5, r0)
            if (r6 != r1) goto L50
            return r1
        L50:
            r5 = r4
        L51:
            kotlinx.coroutines.Job r6 = (kotlinx.coroutines.Job) r6
            goto L56
        L54:
            r6 = 0
            r5 = r4
        L56:
            r5.readerEventsJob = r6
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController.handleUnAckedReaderEvents(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final ReaderEventContracts.Api getReaderEventsApi(final JackRabbitApi jackRabbitApi) {
        return new ReaderEventContracts.Api() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$readerEventsApi$1
            @Override // com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts.Api
            public Object fetchReaderEvents(long j, List<Long> list, Continuation<? super List<ReaderEvent>> continuation) {
                return ((FetchReaderEventsResponse) this.this$0.ensureConnectedJackrabbitResponse(jackRabbitApi.fetchReaderEvents(new FetchReaderEventsRequest(j, list, null, 4, null)))).reader_events;
            }
        };
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$cancelPaymentMethodCollect$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IpReaderController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$cancelPaymentMethodCollect$1", f = "IpReaderController.kt", i = {}, l = {768}, m = "invokeSuspend", n = {}, s = {})
    static final class C04361 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<CancelCollectPaymentMethodRequest, CrpcResponse<CancelCollectPaymentMethodResponse>> $cancelFun;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04361(Function1<? super CancelCollectPaymentMethodRequest, ? extends CrpcResponse<CancelCollectPaymentMethodResponse>> function1, Continuation<? super C04361> continuation) {
            super(2, continuation);
            this.$cancelFun = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IpReaderController.this.new C04361(this.$cancelFun, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04361) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Job job = IpReaderController.this.paymentJob;
                    if (job != null) {
                        this.label = 1;
                        if (JobKt.cancelAndJoin(job, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            } finally {
                try {
                    IpReaderController.this.ensureConnectedJackrabbitResponse(this.$cancelFun.invoke(IpReaderController.this.apiRequestFactory.cancelCollectPaymentMethod()));
                } catch (TerminalException e) {
                    IpReaderController.this.getLogger().e(e);
                }
            }
        }
    }

    private final void cancelPaymentMethodCollect(Function1<? super CancelCollectPaymentMethodRequest, ? extends CrpcResponse<CancelCollectPaymentMethodResponse>> cancelFun) {
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C04361(cancelFun, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$cancelConfirmation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IpReaderController.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0012\b\u0000\u0010\u0002*\f\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\b\u00030\u0003*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "M", "Lcom/squareup/wire/Message;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$cancelConfirmation$1", f = "IpReaderController.kt", i = {}, l = {WinError.ERROR_LOST_WRITEBEHIND_DATA_NETWORK_SERVER_ERROR}, m = "invokeSuspend", n = {}, s = {})
    static final class C04341 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ com.stripe.stripeterminal.external.callable.Callback $callback;
        final /* synthetic */ Function0<CrpcResponse<M>> $cancelFun;
        int label;
        final /* synthetic */ IpReaderController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04341(Function0<? extends CrpcResponse<M>> function0, IpReaderController ipReaderController, com.stripe.stripeterminal.external.callable.Callback callback, Continuation<? super C04341> continuation) {
            super(2, continuation);
            this.$cancelFun = function0;
            this.this$0 = ipReaderController;
            this.$callback = callback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04341(this.$cancelFun, this.this$0, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04341) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0.ensureConnectedJackrabbitResponse((CrpcResponse) this.$cancelFun.invoke());
                    Job job = this.this$0.paymentJob;
                    if (job != null) {
                        this.label = 1;
                        if (JobKt.cancelAndJoin(job, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$callback.onSuccess();
            } catch (TerminalException e) {
                this.this$0.getLogger().e(e);
                this.$callback.onFailure(e);
            }
            return Unit.INSTANCE;
        }
    }

    private final <M extends Message<M, ?>> void cancelConfirmation(com.stripe.stripeterminal.external.callable.Callback callback, Function0<? extends CrpcResponse<M>> cancelFun) {
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C04341(cancelFun, this, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$cancelSetupIntentPaymentCollect$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IpReaderController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$cancelSetupIntentPaymentCollect$1", f = "IpReaderController.kt", i = {}, l = {803}, m = "invokeSuspend", n = {}, s = {})
    static final class C04381 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<CancelSetupIntentPaymentMethodRequest, CrpcResponse<CancelSetupIntentPaymentMethodResponse>> $cancelFun;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04381(Function1<? super CancelSetupIntentPaymentMethodRequest, ? extends CrpcResponse<CancelSetupIntentPaymentMethodResponse>> function1, Continuation<? super C04381> continuation) {
            super(2, continuation);
            this.$cancelFun = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IpReaderController.this.new C04381(this.$cancelFun, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04381) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Job job = IpReaderController.this.paymentJob;
                    if (job != null) {
                        this.label = 1;
                        if (JobKt.cancelAndJoin(job, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            } finally {
                try {
                    IpReaderController.this.ensureConnectedJackrabbitResponse(this.$cancelFun.invoke(IpReaderController.this.apiRequestFactory.cancelSetupIntentPaymentMethod()));
                } catch (TerminalException e) {
                    IpReaderController.this.getLogger().e(e);
                }
            }
        }
    }

    private final void cancelSetupIntentPaymentCollect(Function1<? super CancelSetupIntentPaymentMethodRequest, ? extends CrpcResponse<CancelSetupIntentPaymentMethodResponse>> cancelFun) {
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C04381(cancelFun, null), 3, null);
    }

    private final TerminalException noActiveReaderException() {
        return new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "No active reader", null, null, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T extends Message<T, ?>> T ensureConnectedJackrabbitResponse(CrpcResponse<T> crpcResponse) throws TerminalException {
        try {
            return (T) CrpcResponseExtensions.INSTANCE.withJackrabbitResponse(crpcResponse);
        } catch (TerminalException e) {
            disconnectIfCommunicationError(e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnectIfCommunicationError(TerminalException terminalException) {
        Function0<Unit> function0;
        if (!READER_COMMUNICATION_ERROR_CODES.contains(terminalException.getErrorCode()) || (function0 = this.onUnexpectedDisconnect) == null) {
            return;
        }
        function0.invoke();
    }

    private final <T> T assertClientSideCreationIsSupported(Function0<? extends T> block) {
        return (T) assertReaderVersionAtLeast(MINIMUM_CLIENT_SIDE_CREATE_SW_VERSION, block);
    }

    private final <T> T assertClientSideCancellationIsSupported(Function0<? extends T> block) {
        return (T) assertReaderVersionAtLeast(MINIMUM_CLIENT_SIDE_CANCEL_SW_VERSION, block);
    }

    private final Triple<HttpClient, HttpUrl, URLProtocol> getKmpHelpers(CrpcClient crpcClient) throws TerminalException {
        CrpcClient client;
        URLProtocol https;
        JackRabbitApi jackRabbitApi = this.jackrabbitApiClient;
        if (jackRabbitApi == null || (client = jackRabbitApi.getClient()) == null) {
            throw noActiveReaderException();
        }
        HttpClient ktorHttpClient = GetKtorHttpClientKt.getKtorHttpClient(client.getOkHttpClient());
        HttpUrl httpUrlBuild = HttpUrl.INSTANCE.get(crpcClient.getBaseUrlProvider().getBaseUrl()).newBuilder().build();
        String strScheme = httpUrlBuild.scheme();
        if (Intrinsics.areEqual(strScheme, HttpHost.DEFAULT_SCHEME_NAME)) {
            https = URLProtocol.INSTANCE.getHTTP();
        } else {
            https = Intrinsics.areEqual(strScheme, "https") ? URLProtocol.INSTANCE.getHTTPS() : URLProtocol.INSTANCE.getHTTPS();
        }
        return new Triple<>(ktorHttpClient, httpUrlBuild, https);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IpReaderController(ApiClient apiClient, CrpcServiceResolver<JackRabbitApi> jackrabbitApiResolver, RemoteReaderRequestContextProvider requestContextProvider, JackRabbitApiRequestFactory apiRequestFactory, FeatureFlagsRepository featureFlagsRepository, CoroutineScope coroutineScope, TerminalStatusManager terminalStatusManager, ReaderActivator readerActivator, OfflineStatusDetailsListener offlineStatsListener, ReaderEventContracts.EventsCountListener readerEventsHandler, JackrabbitClient jackrabbitClient, LoggerFactory loggerFactory) {
        super(loggerFactory.create(Reflection.getOrCreateKotlinClass(IpReaderController.class)));
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        Intrinsics.checkNotNullParameter(jackrabbitApiResolver, "jackrabbitApiResolver");
        Intrinsics.checkNotNullParameter(requestContextProvider, "requestContextProvider");
        Intrinsics.checkNotNullParameter(apiRequestFactory, "apiRequestFactory");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(readerActivator, "readerActivator");
        Intrinsics.checkNotNullParameter(offlineStatsListener, "offlineStatsListener");
        Intrinsics.checkNotNullParameter(readerEventsHandler, "readerEventsHandler");
        Intrinsics.checkNotNullParameter(jackrabbitClient, "jackrabbitClient");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.apiClient = apiClient;
        this.jackrabbitApiResolver = jackrabbitApiResolver;
        this.requestContextProvider = requestContextProvider;
        this.apiRequestFactory = apiRequestFactory;
        this.featureFlagsRepository = featureFlagsRepository;
        this.coroutineScope = coroutineScope;
        this.terminalStatusManager = terminalStatusManager;
        this.readerActivator = readerActivator;
        this.offlineStatsListener = offlineStatsListener;
        this.readerEventsHandler = readerEventsHandler;
        this.jackrabbitClient = jackrabbitClient;
        this.loggerFactory = loggerFactory;
    }
}
