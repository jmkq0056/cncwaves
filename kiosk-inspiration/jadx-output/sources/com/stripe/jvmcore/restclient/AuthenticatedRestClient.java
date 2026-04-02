package com.stripe.jvmcore.restclient;

import com.squareup.wire.Message;
import com.stripe.jvmcore.dagger.Files;
import com.stripe.jvmcore.dagger.LazyExtKt;
import com.stripe.jvmcore.dagger.Mainland;
import com.stripe.jvmcore.environment.EnvironmentKt;
import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.proto.api.rest.ActivateConnectionTokenRequest;
import com.stripe.proto.api.rest.AddEmvSecondGenerationDataRefundRequest;
import com.stripe.proto.api.rest.AddEmvSecondGenerationDataRequest;
import com.stripe.proto.api.rest.CancelPaymentIntentRequest;
import com.stripe.proto.api.rest.CancelSetupIntentRequest;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.proto.api.rest.ConfirmSetupIntentRequest;
import com.stripe.proto.api.rest.CreatePaymentIntentRequest;
import com.stripe.proto.api.rest.CreateReaderCollectedDataRequest;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import com.stripe.proto.api.rest.DetachPaymentMethodRequest;
import com.stripe.proto.api.rest.DiscoverLocationsRequest;
import com.stripe.proto.api.rest.DiscoverLocationsResponse;
import com.stripe.proto.api.rest.FilesApi;
import com.stripe.proto.api.rest.ListAllReadersRequest;
import com.stripe.proto.api.rest.ListAllReadersResponse;
import com.stripe.proto.api.rest.ListLocationsRequest;
import com.stripe.proto.api.rest.ListLocationsResponse;
import com.stripe.proto.api.rest.MainlandApi;
import com.stripe.proto.api.rest.ReadCardPaymentMethodRequest;
import com.stripe.proto.api.rest.RefundChargeRequest;
import com.stripe.proto.api.rest.RetrieveLocationRequest;
import com.stripe.proto.api.rest.RetrievePaymentIntentRequest;
import com.stripe.proto.api.rest.RetrieveSetupIntentRequest;
import com.stripe.proto.api.rest.UpdatePaymentIntentRequest;
import com.stripe.proto.api.rest.UpdateSdiActionRequest;
import com.stripe.proto.api.rest.UpdateSdiActionResponse;
import com.stripe.proto.api.rest.UploadFileRequest;
import com.stripe.proto.api.rest.UploadFileResponse;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.rest.ActivatedConnectionToken;
import com.stripe.proto.model.rest.ActivatedConnectionTokenWithExpandedLocation;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.PaymentIntentExpandedMethod;
import com.stripe.proto.model.rest.PaymentMethod;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.rest.Refund;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.proto.model.rest.TerminalUserAgent;
import com.stripe.proto.model.rest.UserAgent;
import com.stripe.restclient.CoreTransactionRepository;
import com.stripe.restclient.IntegrationType;
import com.stripe.restclient.TransactionOpType;
import dagger.Lazy;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import okhttp3.Credentials;

/* JADX INFO: compiled from: AuthenticatedRestClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000Ü\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u0089\u00012\u00020\u0001:\u0002\u0089\u0001B7\b\u0007\u0012\u000e\b\u0001\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ2\u0010!\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0\"2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+J¸\u0001\u0010,\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020$0\"\"\u0012\b\u0000\u0010-*\f\u0012\u0004\u0012\u0002H-\u0012\u0002\b\u00030.2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2n\u0010/\u001aj\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110)¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(3\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(5\u0012\u0013\u0012\u00110+¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020$0\"00¢\u0006\u0002\b6H\u0002J2\u00107\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020$0\"2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+J8\u00109\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020;2\u0014\b\u0002\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010*\u001a\u00020+J8\u0010<\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020>2\u0014\b\u0002\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010*\u001a\u00020+J\u001c\u0010?\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010@\u001a\u00020&H\u0002J$\u0010?\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010A\u001a\u00020&2\u0006\u0010B\u001a\u00020&H\u0002J\u0016\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010D\u001a\u00020&H\u0002J.\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0019\b\u0002\u0010F\u001a\u0013\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020I0G¢\u0006\u0002\b6H\u0001¢\u0006\u0002\bJJ\u001a\u0010K\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020LJ\u001a\u0010M\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020OJ6\u0010P\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020Q2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010*\u001a\u00020+J\"\u0010R\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020S2\u0006\u0010*\u001a\u00020+J\"\u0010T\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020U2\u0006\u0010*\u001a\u00020+J\u001a\u0010V\u001a\u000e\u0012\u0004\u0012\u00020W\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020XJ\"\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020Z2\u0006\u0010*\u001a\u00020+J\u0014\u0010[\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04H\u0016J\u001a\u0010\\\u001a\u000e\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020^J\"\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020$0\"2\u0006\u0010D\u001a\u00020&2\u0006\u0010(\u001a\u00020aJ\r\u0010b\u001a\u00020\u0016H\u0001¢\u0006\u0002\bcJ\u0010\u0010d\u001a\u00020\u00162\u0006\u0010e\u001a\u00020&H\u0002J*\u0010f\u001a\u000e\u0012\u0004\u0012\u00020g\u0012\u0004\u0012\u00020$0\"2\u0006\u0010D\u001a\u00020&2\u0006\u0010(\u001a\u00020h2\u0006\u0010*\u001a\u00020+J\"\u0010i\u001a\u000e\u0012\u0004\u0012\u00020j\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020k2\u0006\u0010D\u001a\u00020&J\u001a\u0010l\u001a\u000e\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020mJ.\u0010n\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020o2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04J\"\u0010p\u001a\u000e\u0012\u0004\u0012\u00020q\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020r2\u0006\u0010D\u001a\u00020&J<\u0010s\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020t2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010&2\u0014\b\u0002\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04J<\u0010u\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020v2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010&2\u0014\b\u0002\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04J\u0006\u0010w\u001a\u00020IJL\u0010x\u001a\u00020I\"\u0012\b\u0000\u0010y*\f\u0012\u0004\u0012\u0002Hy\u0012\u0002\b\u00030.\"\u0012\b\u0001\u0010z*\f\u0012\u0004\u0012\u0002Hz\u0012\u0002\b\u00030.2\u0012\u0010{\u001a\u000e\u0012\u0004\u0012\u0002Hy\u0012\u0004\u0012\u0002Hz0\"2\u0006\u0010|\u001a\u00020}H\u0002J\u000e\u0010~\u001a\u00020I2\u0006\u0010e\u001a\u00020&J0\u0010\u007f\u001a\u000f\u0012\u0005\u0012\u00030\u0080\u0001\u0012\u0004\u0012\u00020$0\"2\u0007\u0010(\u001a\u00030\u0081\u00012\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04J9\u0010\u0082\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0083\u0001\u0012\u0004\u0012\u00020$0\"2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010e\u001a\u00020&2\u0007\u0010(\u001a\u00030\u0084\u0001J%\u0010\u0085\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0086\u0001\u0012\u0004\u0012\u00020$0\"2\u0007\u0010(\u001a\u00030\u0087\u00012\u0006\u0010*\u001a\u00020+J\r\u0010\u0088\u0001\u001a\u00020H*\u00020HH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00168\u0000@\u0000X\u0081\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001d\u0010\u001e¨\u0006\u008a\u0001"}, d2 = {"Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;", "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;", "baseRestClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/restclient/RestClient;", "baseFilesRestClient", "userAgentProvider", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "transactionRepository", "Lcom/stripe/restclient/CoreTransactionRepository;", "(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/restclient/CoreTransactionRepository;)V", "filesApi", "Lcom/stripe/proto/api/rest/FilesApi;", "getFilesApi$transaction", "()Lcom/stripe/proto/api/rest/FilesApi;", "setFilesApi$transaction", "(Lcom/stripe/proto/api/rest/FilesApi;)V", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "getIntegrationType", "()Lcom/stripe/restclient/IntegrationType;", "mainlandApi", "Lcom/stripe/proto/api/rest/MainlandApi;", "getMainlandApi$transaction", "()Lcom/stripe/proto/api/rest/MainlandApi;", "setMainlandApi$transaction", "(Lcom/stripe/proto/api/rest/MainlandApi;)V", "userAgent", "Lcom/stripe/proto/model/rest/UserAgent;", "getUserAgent", "()Lcom/stripe/proto/model/rest/UserAgent;", "userAgent$delegate", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "activateTerminal", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "activationToken", "", "parentTraceId", "request", "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "activateTerminalWithActivationMethod", "T", "Lcom/squareup/wire/Message;", "activationMethod", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "message", "", "headers", "Lkotlin/ExtensionFunctionType;", "activateTerminalWithExpandedLocation", "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;", "addEmvSecondGenerationData", "Lcom/stripe/proto/model/rest/PaymentIntent;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;", "addEmvSecondGenerationRefundData", "Lcom/stripe/proto/model/rest/Refund;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;", "authHeaders", "bearerToken", "username", "password", "buildConnectionTokenClient", "connectionToken", "buildRestClient", "block", "Lkotlin/Function1;", "Lcom/stripe/jvmcore/restclient/RestClient$Builder;", "", "buildRestClient$transaction", "cancelPaymentIntent", "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;", "cancelSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;", "confirmPaymentIntent", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "confirmSetupIntent", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "createPaymentIntent", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "createReaderCollectedData", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;", "createSetupIntent", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "customHeaders", "detachPaymentMethod", "Lcom/stripe/proto/model/rest/PaymentMethod;", "Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;", "discoverLocations", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;", "Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;", "getMainlandApiForIntegrationMode", "getMainlandApiForIntegrationMode$transaction", "getServerDrivenMainlandApi", "sessionToken", "listAllReaders", "Lcom/stripe/proto/api/rest/ListAllReadersResponse;", "Lcom/stripe/proto/api/rest/ListAllReadersRequest;", "listLocations", "Lcom/stripe/proto/api/rest/ListLocationsResponse;", "Lcom/stripe/proto/api/rest/ListLocationsRequest;", "readCardPaymentMethod", "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;", "refundCharge", "Lcom/stripe/proto/api/rest/RefundChargeRequest;", "retrieveLocation", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "Lcom/stripe/proto/api/rest/RetrieveLocationRequest;", "retrievePaymentIntent", "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;", "retrieveSetupIntent", "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;", "setBlankSession", "setRequestId", "M", "E", "restResponse", "opType", "Lcom/stripe/restclient/TransactionOpType;", "setServerDrivenStripeSessionToken", "updatePaymentIntentExpandedMethod", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;", "updateSdiAction", "Lcom/stripe/proto/api/rest/UpdateSdiActionResponse;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;", "uploadFile", "Lcom/stripe/proto/api/rest/UploadFileResponse;", "Lcom/stripe/proto/api/rest/UploadFileRequest;", "addStripeCustomHeaders", "Companion", "transaction"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AuthenticatedRestClient implements CustomHeadersProvider {
    private static final String AUTHENTICATION_HEADER_KEY = "Authorization";
    private static MainlandApi serverDrivenMainlandApi;
    private final Lazy<RestClient> baseFilesRestClient;
    private final Lazy<RestClient> baseRestClient;
    private FilesApi filesApi;
    private MainlandApi mainlandApi;
    private final CoreTransactionRepository transactionRepository;

    /* JADX INFO: renamed from: userAgent$delegate, reason: from kotlin metadata */
    private final UserAgentProvider userAgent;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(AuthenticatedRestClient.class, "userAgent", "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;", 0))};

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Inject
    public AuthenticatedRestClient(@Mainland Lazy<RestClient> baseRestClient, @Files Lazy<RestClient> baseFilesRestClient, UserAgentProvider userAgentProvider, CoreTransactionRepository transactionRepository) {
        Intrinsics.checkNotNullParameter(baseRestClient, "baseRestClient");
        Intrinsics.checkNotNullParameter(baseFilesRestClient, "baseFilesRestClient");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        this.baseRestClient = baseRestClient;
        this.baseFilesRestClient = baseFilesRestClient;
        this.transactionRepository = transactionRepository;
        this.userAgent = userAgentProvider;
        this.mainlandApi = new MainlandApi(buildRestClient$transaction$default(this, null, 1, null));
        this.filesApi = new FilesApi(baseFilesRestClient);
    }

    private final UserAgent getUserAgent() {
        return this.userAgent.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: compiled from: AuthenticatedRestClient.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0000@\u0000X\u0081\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$Companion;", "", "()V", "AUTHENTICATION_HEADER_KEY", "", "serverDrivenMainlandApi", "Lcom/stripe/proto/api/rest/MainlandApi;", "getServerDrivenMainlandApi$transaction", "()Lcom/stripe/proto/api/rest/MainlandApi;", "setServerDrivenMainlandApi$transaction", "(Lcom/stripe/proto/api/rest/MainlandApi;)V", "transaction"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MainlandApi getServerDrivenMainlandApi$transaction() {
            return AuthenticatedRestClient.serverDrivenMainlandApi;
        }

        public final void setServerDrivenMainlandApi$transaction(MainlandApi mainlandApi) {
            AuthenticatedRestClient.serverDrivenMainlandApi = mainlandApi;
        }
    }

    /* JADX INFO: renamed from: getMainlandApi$transaction, reason: from getter */
    public final MainlandApi getMainlandApi() {
        return this.mainlandApi;
    }

    public final void setMainlandApi$transaction(MainlandApi mainlandApi) {
        Intrinsics.checkNotNullParameter(mainlandApi, "<set-?>");
        this.mainlandApi = mainlandApi;
    }

    /* JADX INFO: renamed from: getFilesApi$transaction, reason: from getter */
    public final FilesApi getFilesApi() {
        return this.filesApi;
    }

    public final void setFilesApi$transaction(FilesApi filesApi) {
        Intrinsics.checkNotNullParameter(filesApi, "<set-?>");
        this.filesApi = filesApi;
    }

    private final IntegrationType getIntegrationType() {
        return this.transactionRepository.getIntegrationType();
    }

    public final void setServerDrivenStripeSessionToken(final String sessionToken) {
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        serverDrivenMainlandApi = getServerDrivenMainlandApi(sessionToken);
        this.filesApi = new FilesApi(LazyExtKt.lazilyMap(this.baseFilesRestClient, new Function1<RestClient, RestClient>() { // from class: com.stripe.jvmcore.restclient.AuthenticatedRestClient.setServerDrivenStripeSessionToken.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final RestClient invoke(RestClient it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return AuthenticatedRestClient.this.addStripeCustomHeaders(it.toBuilder()).addCustomHeaders(AuthenticatedRestClient.this.authHeaders(sessionToken)).build();
            }
        }));
    }

    private final MainlandApi getServerDrivenMainlandApi(final String sessionToken) {
        return new MainlandApi(buildRestClient$transaction(new Function1<RestClient.Builder, Unit>() { // from class: com.stripe.jvmcore.restclient.AuthenticatedRestClient.getServerDrivenMainlandApi.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RestClient.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RestClient.Builder buildRestClient) {
                Intrinsics.checkNotNullParameter(buildRestClient, "$this$buildRestClient");
                buildRestClient.addCustomHeaders(AuthenticatedRestClient.this.authHeaders(sessionToken));
            }
        }));
    }

    public final void setBlankSession() {
        this.mainlandApi = new MainlandApi(buildRestClient$transaction(new Function1<RestClient.Builder, Unit>() { // from class: com.stripe.jvmcore.restclient.AuthenticatedRestClient.setBlankSession.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RestClient.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RestClient.Builder buildRestClient) {
                Intrinsics.checkNotNullParameter(buildRestClient, "$this$buildRestClient");
                buildRestClient.addCustomHeaders(AuthenticatedRestClient.this.authHeaders(""));
            }
        }));
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.restclient.AuthenticatedRestClient$activateTerminal$1, reason: invalid class name */
    /* JADX INFO: compiled from: AuthenticatedRestClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function4<MainlandApi, ActivateConnectionTokenRequest, Map<String, ? extends String>, RestConfig, RestResponse<ActivatedConnectionToken, ErrorWrapper>> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(4, MainlandApi.class, "activateConnectionToken", "activateConnectionToken(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;", 0);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final RestResponse<ActivatedConnectionToken, ErrorWrapper> invoke2(MainlandApi p0, ActivateConnectionTokenRequest p1, Map<String, String> p2, RestConfig p3) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            Intrinsics.checkNotNullParameter(p2, "p2");
            Intrinsics.checkNotNullParameter(p3, "p3");
            return p0.activateConnectionToken(p1, p2, p3);
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ RestResponse<ActivatedConnectionToken, ErrorWrapper> invoke(MainlandApi mainlandApi, ActivateConnectionTokenRequest activateConnectionTokenRequest, Map<String, ? extends String> map, RestConfig restConfig) {
            return invoke2(mainlandApi, activateConnectionTokenRequest, (Map<String, String>) map, restConfig);
        }
    }

    public final RestResponse<ActivatedConnectionToken, ErrorWrapper> activateTerminal(String activationToken, String parentTraceId, ActivateConnectionTokenRequest request, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(activationToken, "activationToken");
        Intrinsics.checkNotNullParameter(parentTraceId, "parentTraceId");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return activateTerminalWithActivationMethod(activationToken, parentTraceId, request, restConfig, AnonymousClass1.INSTANCE);
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.restclient.AuthenticatedRestClient$activateTerminalWithExpandedLocation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AuthenticatedRestClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class C02701 extends FunctionReferenceImpl implements Function4<MainlandApi, ActivateConnectionTokenRequest, Map<String, ? extends String>, RestConfig, RestResponse<ActivatedConnectionTokenWithExpandedLocation, ErrorWrapper>> {
        public static final C02701 INSTANCE = new C02701();

        C02701() {
            super(4, MainlandApi.class, "activateConnectionTokenWithExpandedLocation", "activateConnectionTokenWithExpandedLocation(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;", 0);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final RestResponse<ActivatedConnectionTokenWithExpandedLocation, ErrorWrapper> invoke2(MainlandApi p0, ActivateConnectionTokenRequest p1, Map<String, String> p2, RestConfig p3) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            Intrinsics.checkNotNullParameter(p2, "p2");
            Intrinsics.checkNotNullParameter(p3, "p3");
            return p0.activateConnectionTokenWithExpandedLocation(p1, p2, p3);
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ RestResponse<ActivatedConnectionTokenWithExpandedLocation, ErrorWrapper> invoke(MainlandApi mainlandApi, ActivateConnectionTokenRequest activateConnectionTokenRequest, Map<String, ? extends String> map, RestConfig restConfig) {
            return invoke2(mainlandApi, activateConnectionTokenRequest, (Map<String, String>) map, restConfig);
        }
    }

    public final RestResponse<ActivatedConnectionTokenWithExpandedLocation, ErrorWrapper> activateTerminalWithExpandedLocation(String activationToken, String parentTraceId, ActivateConnectionTokenRequest request, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(activationToken, "activationToken");
        Intrinsics.checkNotNullParameter(parentTraceId, "parentTraceId");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return activateTerminalWithActivationMethod(activationToken, parentTraceId, request, restConfig, C02701.INSTANCE);
    }

    private final <T extends Message<T, ?>> RestResponse<T, ErrorWrapper> activateTerminalWithActivationMethod(final String activationToken, String parentTraceId, ActivateConnectionTokenRequest request, RestConfig restConfig, Function4<? super MainlandApi, ? super ActivateConnectionTokenRequest, ? super Map<String, String>, ? super RestConfig, ? extends RestResponse<T, ErrorWrapper>> activationMethod) {
        final TerminalUserAgent terminalUserAgent = new TerminalUserAgent(request.pos_version_info, request.pos_device_info, null, request.reader_, null, 20, null);
        RestResponse<T, ErrorWrapper> restResponseInvoke = activationMethod.invoke(new MainlandApi(buildRestClient$transaction(new Function1<RestClient.Builder, Unit>() { // from class: com.stripe.jvmcore.restclient.AuthenticatedRestClient$activateTerminalWithActivationMethod$restClient$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RestClient.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RestClient.Builder buildRestClient) {
                Intrinsics.checkNotNullParameter(buildRestClient, "$this$buildRestClient");
                buildRestClient.addCustomHeaders(this.this$0.authHeaders(activationToken, ""));
                buildRestClient.addCustomHeaders(EnvironmentKt.toRequestHeaders(terminalUserAgent));
            }
        })), request, EnvironmentKt.stripeTraceHeader(parentTraceId), restConfig);
        if (restResponseInvoke instanceof RestResponse.Success) {
            this.mainlandApi = new MainlandApi(buildRestClient$transaction$default(this, null, 1, null));
        }
        setRequestId(restResponseInvoke, TransactionOpType.ACTIVATION);
        return restResponseInvoke;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse addEmvSecondGenerationData$default(AuthenticatedRestClient authenticatedRestClient, AddEmvSecondGenerationDataRequest addEmvSecondGenerationDataRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        return authenticatedRestClient.addEmvSecondGenerationData(addEmvSecondGenerationDataRequest, map, restConfig);
    }

    public final RestResponse<PaymentIntent, ErrorWrapper> addEmvSecondGenerationData(AddEmvSecondGenerationDataRequest request, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getMainlandApiForIntegrationMode$transaction().addEmvSecondGenerationData(request, headers, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse addEmvSecondGenerationRefundData$default(AuthenticatedRestClient authenticatedRestClient, AddEmvSecondGenerationDataRefundRequest addEmvSecondGenerationDataRefundRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        return authenticatedRestClient.addEmvSecondGenerationRefundData(addEmvSecondGenerationDataRefundRequest, map, restConfig);
    }

    public final RestResponse<Refund, ErrorWrapper> addEmvSecondGenerationRefundData(AddEmvSecondGenerationDataRefundRequest request, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getMainlandApiForIntegrationMode$transaction().addEmvSecondGenerationRefundData(request, headers, restConfig);
    }

    public final RestResponse<PaymentIntent, ErrorWrapper> cancelPaymentIntent(CancelPaymentIntentRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return MainlandApi.cancelPaymentIntent$default(getMainlandApiForIntegrationMode$transaction(), request, null, null, 6, null);
    }

    public final RestResponse<PaymentIntent, ErrorWrapper> confirmPaymentIntent(ConfirmPaymentIntentRequest request, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        RestResponse<PaymentIntent, ErrorWrapper> restResponseConfirmPaymentIntent = getMainlandApiForIntegrationMode$transaction().confirmPaymentIntent(request, headers, restConfig);
        setRequestId(restResponseConfirmPaymentIntent, TransactionOpType.CONFIRM_PAYMENT_INTENT);
        return restResponseConfirmPaymentIntent;
    }

    public final RestResponse<PaymentIntentExpandedMethod, ErrorWrapper> updatePaymentIntentExpandedMethod(UpdatePaymentIntentRequest request, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(headers, "headers");
        return MainlandApi.updatePaymentIntentExpandMethod$default(getMainlandApiForIntegrationMode$transaction(), request, headers, null, 4, null);
    }

    public final RestResponse<SetupIntent, ErrorWrapper> confirmSetupIntent(ConfirmSetupIntentRequest request, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        RestResponse<SetupIntent, ErrorWrapper> restResponseConfirmSetupIntent$default = MainlandApi.confirmSetupIntent$default(getMainlandApiForIntegrationMode$transaction(), request, null, restConfig, 2, null);
        setRequestId(restResponseConfirmSetupIntent$default, TransactionOpType.CONFIRM_SETUP_INTENT);
        return restResponseConfirmSetupIntent$default;
    }

    public final RestResponse<SetupIntent, ErrorWrapper> cancelSetupIntent(CancelSetupIntentRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return MainlandApi.cancelSetupIntent$default(getMainlandApiForIntegrationMode$transaction(), request, null, null, 6, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse retrieveSetupIntent$default(AuthenticatedRestClient authenticatedRestClient, RetrieveSetupIntentRequest retrieveSetupIntentRequest, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        return authenticatedRestClient.retrieveSetupIntent(retrieveSetupIntentRequest, str, map);
    }

    public final RestResponse<SetupIntent, ErrorWrapper> retrieveSetupIntent(RetrieveSetupIntentRequest request, String connectionToken, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(headers, "headers");
        if (connectionToken != null) {
            return MainlandApi.retrieveSetupIntent$default(new MainlandApi(buildConnectionTokenClient(connectionToken)), request, headers, null, 4, null);
        }
        return MainlandApi.retrieveSetupIntent$default(getMainlandApiForIntegrationMode$transaction(), RetrieveSetupIntentRequest.copy$default(request, null, null, null, null, 11, null), headers, null, 4, null);
    }

    public final RestResponse<PaymentIntent, ErrorWrapper> createPaymentIntent(CreatePaymentIntentRequest request, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return MainlandApi.createPaymentIntent$default(getMainlandApiForIntegrationMode$transaction(), request, null, restConfig, 2, null);
    }

    public final RestResponse<SetupIntent, ErrorWrapper> createSetupIntent(CreateSetupIntentRequest request, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return MainlandApi.createSetupIntent$default(getMainlandApiForIntegrationMode$transaction(), request, null, restConfig, 2, null);
    }

    public final RestResponse<PaymentMethod, ErrorWrapper> detachPaymentMethod(DetachPaymentMethodRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return MainlandApi.detachPaymentMethod$default(getMainlandApiForIntegrationMode$transaction(), request, null, null, 6, null);
    }

    public final RestResponse<DiscoverLocationsResponse, ErrorWrapper> discoverLocations(String connectionToken, DiscoverLocationsRequest request) {
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        Intrinsics.checkNotNullParameter(request, "request");
        return MainlandApi.discoverLocations$default(new MainlandApi(buildConnectionTokenClient(connectionToken)), request, null, null, 6, null);
    }

    public final RestResponse<ListAllReadersResponse, ErrorWrapper> listAllReaders(String connectionToken, ListAllReadersRequest request, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return MainlandApi.listAllReaders$default(new MainlandApi(buildConnectionTokenClient(connectionToken)), request, null, restConfig, 2, null);
    }

    public final RestResponse<PaymentMethod, ErrorWrapper> readCardPaymentMethod(ReadCardPaymentMethodRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        RestResponse<PaymentMethod, ErrorWrapper> cardPaymentMethod$default = MainlandApi.readCardPaymentMethod$default(getMainlandApiForIntegrationMode$transaction(), request, null, null, 6, null);
        setRequestId(cardPaymentMethod$default, TransactionOpType.CONFIRM_REUSABLE_CARD);
        return cardPaymentMethod$default;
    }

    public final RestResponse<Refund, ErrorWrapper> refundCharge(RefundChargeRequest request, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(headers, "headers");
        RestResponse<Refund, ErrorWrapper> restResponseRefundCharge$default = MainlandApi.refundCharge$default(getMainlandApiForIntegrationMode$transaction(), request, headers, null, 4, null);
        setRequestId(restResponseRefundCharge$default, TransactionOpType.CONFIRM_INTERAC_REFUND);
        return restResponseRefundCharge$default;
    }

    public final RestResponse<ListLocationsResponse, ErrorWrapper> listLocations(ListLocationsRequest request, String connectionToken) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        return MainlandApi.listLocations$default(new MainlandApi(buildConnectionTokenClient(connectionToken)), request, null, null, 6, null);
    }

    public final RestResponse<ApiLocationPb, ErrorWrapper> retrieveLocation(RetrieveLocationRequest request, String connectionToken) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        return MainlandApi.retrieveLocation$default(new MainlandApi(buildConnectionTokenClient(connectionToken)), request, null, null, 6, null);
    }

    public final RestResponse<UpdateSdiActionResponse, ErrorWrapper> updateSdiAction(Map<String, String> headers, String sessionToken, UpdateSdiActionRequest request) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        Intrinsics.checkNotNullParameter(request, "request");
        return MainlandApi.updateSdiAction$default(getServerDrivenMainlandApi(sessionToken), request, headers, null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse retrievePaymentIntent$default(AuthenticatedRestClient authenticatedRestClient, RetrievePaymentIntentRequest retrievePaymentIntentRequest, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        return authenticatedRestClient.retrievePaymentIntent(retrievePaymentIntentRequest, str, map);
    }

    public final RestResponse<PaymentIntent, ErrorWrapper> retrievePaymentIntent(RetrievePaymentIntentRequest request, String connectionToken, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(headers, "headers");
        if (connectionToken != null) {
            return MainlandApi.retrievePaymentIntent$default(new MainlandApi(buildConnectionTokenClient(connectionToken)), request, headers, null, 4, null);
        }
        return MainlandApi.retrievePaymentIntent$default(getMainlandApiForIntegrationMode$transaction(), RetrievePaymentIntentRequest.copy$default(request, null, null, null, null, 11, null), headers, null, 4, null);
    }

    public final RestResponse<UploadFileResponse, ErrorWrapper> uploadFile(UploadFileRequest request, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return FilesApi.uploadFile$default(this.filesApi, request, null, restConfig, 2, null);
    }

    public final RestResponse<ReaderCollectedData, ErrorWrapper> createReaderCollectedData(CreateReaderCollectedDataRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return MainlandApi.createReaderCollectedData$default(getMainlandApiForIntegrationMode$transaction(), request, null, null, 6, null);
    }

    public final MainlandApi getMainlandApiForIntegrationMode$transaction() {
        if (getIntegrationType() == IntegrationType.SERVER_DRIVEN) {
            MainlandApi mainlandApi = serverDrivenMainlandApi;
            return mainlandApi == null ? this.mainlandApi : mainlandApi;
        }
        return this.mainlandApi;
    }

    @Override // com.stripe.jvmcore.restclient.CustomHeadersProvider
    public Map<String, String> customHeaders() {
        return getMainlandApiForIntegrationMode$transaction().getClient().customHeaders();
    }

    private final Lazy<RestClient> buildConnectionTokenClient(final String connectionToken) {
        return buildRestClient$transaction(new Function1<RestClient.Builder, Unit>() { // from class: com.stripe.jvmcore.restclient.AuthenticatedRestClient.buildConnectionTokenClient.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RestClient.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RestClient.Builder buildRestClient) {
                Intrinsics.checkNotNullParameter(buildRestClient, "$this$buildRestClient");
                buildRestClient.addCustomHeaders(AuthenticatedRestClient.this.authHeaders(connectionToken));
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Lazy buildRestClient$transaction$default(AuthenticatedRestClient authenticatedRestClient, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<RestClient.Builder, Unit>() { // from class: com.stripe.jvmcore.restclient.AuthenticatedRestClient$buildRestClient$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(RestClient.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(RestClient.Builder builder) {
                    invoke2(builder);
                    return Unit.INSTANCE;
                }
            };
        }
        return authenticatedRestClient.buildRestClient$transaction(function1);
    }

    public final Lazy<RestClient> buildRestClient$transaction(final Function1<? super RestClient.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return LazyExtKt.lazilyMap(this.baseRestClient, new Function1<RestClient, RestClient>() { // from class: com.stripe.jvmcore.restclient.AuthenticatedRestClient$buildRestClient$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final RestClient invoke(RestClient it) {
                Intrinsics.checkNotNullParameter(it, "it");
                RestClient.Builder builderAddStripeCustomHeaders = this.this$0.addStripeCustomHeaders(it.toBuilder());
                block.invoke(builderAddStripeCustomHeaders);
                return builderAddStripeCustomHeaders.build();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, String> authHeaders(String bearerToken) {
        return MapsKt.mapOf(TuplesKt.to("Authorization", "Bearer " + bearerToken));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, String> authHeaders(String username, String password) {
        return MapsKt.mapOf(TuplesKt.to("Authorization", Credentials.basic$default(username, password, null, 4, null)));
    }

    private final <M extends Message<M, ?>, E extends Message<E, ?>> void setRequestId(RestResponse<M, E> restResponse, TransactionOpType opType) {
        if (restResponse instanceof RestResponse.Success) {
            CoreTransactionRepository coreTransactionRepository = this.transactionRepository;
            String str = restResponse.getHeaders().get("request-id");
            if (str == null) {
                str = "";
            }
            coreTransactionRepository.setRequestId(opType, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RestClient.Builder addStripeCustomHeaders(RestClient.Builder builder) {
        builder.addCustomHeaders(EnvironmentKt.toRequestHeaders(getUserAgent(), true));
        return builder;
    }
}
