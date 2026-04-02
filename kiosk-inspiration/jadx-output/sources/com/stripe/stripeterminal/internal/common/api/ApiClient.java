package com.stripe.stripeterminal.internal.common.api;

import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.squareup.wire.Message;
import com.stripe.currency.Amount;
import com.stripe.jvmcore.client.OkHttpClientProvider;
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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.ActivateConnectionTokenRequest;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.proto.api.rest.UpdatePaymentIntentRequest;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.rest.ActivatedConnectionToken;
import com.stripe.proto.model.rest.ActivatedConnectionTokenWithExpandedLocation;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.PaymentIntentExpandedMethod;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.rest.Refund;
import com.stripe.proto.model.rest.StatusCode;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.CollectedData;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.ListLocationsParameters;
import com.stripe.stripeterminal.external.models.NextAction;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.ReadReusableCardParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.external.models.UseStripeSdk;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.sun.jna.platform.win32.WinError;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: ApiClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\b\u0007\u0018\u0000 Z2\u00020\u0001:\u0001ZB'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dJ\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020 2\u0006\u0010!\u001a\u00020\"JU\u0010#\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010$\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010\u001a\u001a\u00020\u001b¢\u0006\u0002\u0010-J \u0010.\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020 2\b\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010\u001a\u001a\u00020\u001bJ \u0010/\u001a\u0002002\u0006\u0010!\u001a\u0002012\u0006\u00102\u001a\u0002032\b\u0010$\u001a\u0004\u0018\u00010\u0015J\u0016\u00104\u001a\u00020\u001d2\u0006\u0010!\u001a\u0002052\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u00106\u001a\u0002072\u0006\u00102\u001a\u000203J\u0016\u00108\u001a\u00020 2\u0006\u0010!\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010:\u001a\u0002002\u0006\u0010;\u001a\u000200H\u0007J\u001c\u0010<\u001a\u00020=2\f\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00170?2\u0006\u0010\u0016\u001a\u00020\u0017J!\u0010@\u001a\b\u0012\u0004\u0012\u00020B0A2\u0006\u0010C\u001a\u00020\u0017ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bD\u0010EJ.\u0010F\u001a\u00020G2\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010H\u001a\u0004\u0018\u00010I2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020N2\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010O\u001a\u00020\u001d2\u0006\u0010P\u001a\u00020\u00172\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\u0017J\u001a\u0010R\u001a\u00020 2\u0006\u0010P\u001a\u00020\u00172\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\u0017J4\u0010S\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010$\u001a\u0004\u0018\u00010\u00152\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010T\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010,J\"\u0010U\u001a\u00020\u001d2\u0006\u0010V\u001a\u00020W2\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170YR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006["}, d2 = {"Lcom/stripe/stripeterminal/internal/common/api/ApiClient;", "", "apiRequestFactory", "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;", "restClient", "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;", "unauthenticatedRestClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "getRestClient", "()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;", "activateReader", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "token", "", "connectionConfig", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "cancelPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "intent", "cancelSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "confirmPaymentIntent", "connectedReader", "amountTip", "Lcom/stripe/currency/Amount;", "dynamicCurrencyConversionSelected", "", "amountSurcharge", "", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "confirmSetupIntent", "createCardPaymentMethod", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "paymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "createPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createReaderCollectedData", "Lcom/stripe/stripeterminal/external/models/CollectedData;", "createSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "detachPaymentMethod", FirebaseAnalytics.Param.METHOD, "discoverLocations", "Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse;", "devices", "", "downloadImageAsset", "Lkotlin/Result;", "", ImagesContract.URL, "downloadImageAsset-IoAF18A", "(Ljava/lang/String;)Ljava/lang/Object;", "listAllReaders", "Lcom/stripe/stripeterminal/internal/common/api/ListAllReadersResponse;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", FirebaseAnalytics.Param.LOCATION, "listLocations", "Lcom/stripe/stripeterminal/internal/common/api/ListLocationsResponse;", "parameters", "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "retrievePaymentIntent", "clientSecret", "connectionToken", "retrieveSetupIntent", "updatePaymentIntentExpandMethod", "requestDynamicCurrencyConversion", "updatePaymentIntentExpandedMethod", "request", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;", "headers", "", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiClient {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final ApiRequestFactory apiRequestFactory;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final AuthenticatedRestClient restClient;
    private final OkHttpClientProvider unauthenticatedRestClientProvider;

    @Inject
    public ApiClient(ApiRequestFactory apiRequestFactory, AuthenticatedRestClient restClient, OkHttpClientProvider unauthenticatedRestClientProvider, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(apiRequestFactory, "apiRequestFactory");
        Intrinsics.checkNotNullParameter(restClient, "restClient");
        Intrinsics.checkNotNullParameter(unauthenticatedRestClientProvider, "unauthenticatedRestClientProvider");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.apiRequestFactory = apiRequestFactory;
        this.restClient = restClient;
        this.unauthenticatedRestClientProvider = unauthenticatedRestClientProvider;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(ApiClient.class));
    }

    public final AuthenticatedRestClient getRestClient() {
        return this.restClient;
    }

    public final ActivateReaderResponse activateReader(Reader reader, String token, ConnectionConfiguration connectionConfig, RestConfig restConfig) throws TerminalException {
        ActivatedConnectionTokenWithExpandedLocation activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator;
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(connectionConfig, "connectionConfig");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        this.logger.d("activateReader", TuplesKt.to(OfflineStorageConstantsKt.READER, reader), TuplesKt.to("connectionConfig", connectionConfig));
        boolean z = !reader.getIsSimulated() && ConnectionConfigurationKtxKt.shouldActivateWithExpandedLocation(connectionConfig);
        ActivateConnectionTokenRequest activateConnectionTokenRequestActivateReader = this.apiRequestFactory.activateReader(reader, connectionConfig, z);
        if (z) {
            activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator = (ActivatedConnectionTokenWithExpandedLocation) Companion.decodeResponse$default(INSTANCE, this.restClient.activateTerminalWithExpandedLocation(token, "", activateConnectionTokenRequestActivateReader, restConfig), TerminalErrorCode.STRIPE_API_ERROR, null, 4, null);
        } else {
            Companion companion = INSTANCE;
            activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator = companion.transformConnectionTokenResponseForSimulator((ActivatedConnectionToken) Companion.decodeResponse$default(companion, this.restClient.activateTerminal(token, "", activateConnectionTokenRequestActivateReader, restConfig), null, null, 6, null));
        }
        String str = activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator.account_id;
        Boolean bool = activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator.livemode;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        String str2 = activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator.reader_id;
        String str3 = activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator.stripe_session_token;
        String str4 = activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator.offline_stripe_session_token;
        String str5 = activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator.sdk_rpc_session_token;
        String str6 = activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator.connection_context_id;
        ActivatedConnectionTokenWithExpandedLocation.AccountRef accountRef = activatedConnectionTokenWithExpandedLocationTransformConnectionTokenResponseForSimulator.account_ref;
        return new ActivateReaderResponse(str, zBooleanValue, str2, str3, str4, str5, str6, null, accountRef != null ? accountRef.store_id : null);
    }

    public final PaymentIntent cancelPaymentIntent(PaymentIntent intent) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        this.logger.d("cancelPaymentIntent", new Pair[0]);
        final RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> restResponseCancelPaymentIntent = this.restClient.cancelPaymentIntent(this.apiRequestFactory.cancelPaymentIntent(intent));
        return (PaymentIntent) INSTANCE.withDetailedConnectionError(ApiOperation.CANCEL, ApiResource.PAYMENT_INTENT, new Function0<PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.api.ApiClient.cancelPaymentIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PaymentIntent invoke() {
                return ProtoConverter.INSTANCE.toSdkPaymentIntent((com.stripe.proto.model.rest.PaymentIntent) Companion.decodeResponse$default(ApiClient.INSTANCE, restResponseCancelPaymentIntent, null, null, 6, null));
            }
        });
    }

    public static /* synthetic */ PaymentIntent confirmPaymentIntent$default(ApiClient apiClient, PaymentIntent paymentIntent, Reader reader, Amount amount, Boolean bool, Long l, AllowRedisplay allowRedisplay, RestConfig restConfig, int i, Object obj) throws TerminalException {
        if ((i & 4) != 0) {
            amount = null;
        }
        if ((i & 8) != 0) {
            bool = null;
        }
        if ((i & 16) != 0) {
            l = null;
        }
        if ((i & 32) != 0) {
            allowRedisplay = null;
        }
        return apiClient.confirmPaymentIntent(paymentIntent, reader, amount, bool, l, allowRedisplay, restConfig);
    }

    public final PaymentIntent confirmPaymentIntent(PaymentIntent intent, Reader connectedReader, Amount amountTip, Boolean dynamicCurrencyConversionSelected, Long amountSurcharge, AllowRedisplay allowRedisplay, RestConfig restConfig) throws Exception {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        this.logger.d("confirmPaymentIntent", new Pair[0]);
        RestRequest<ConfirmPaymentIntentRequest, ConfirmPaymentIntentRequest.Builder> restRequestConfirmPaymentIntent = this.apiRequestFactory.confirmPaymentIntent(intent, connectedReader != null ? connectedReader.getId() : null, amountTip, dynamicCurrencyConversionSelected, amountSurcharge, allowRedisplay);
        final RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> restResponseConfirmPaymentIntent = this.restClient.confirmPaymentIntent((ConfirmPaymentIntentRequest) restRequestConfirmPaymentIntent.getBody(), restRequestConfirmPaymentIntent.getHeaders(), restConfig);
        return (PaymentIntent) INSTANCE.withDetailedConnectionError(ApiOperation.CONFIRM, ApiResource.PAYMENT_INTENT, new Function0<PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.api.ApiClient.confirmPaymentIntent.1
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

    public final PaymentIntent updatePaymentIntentExpandMethod(PaymentIntent intent, Reader connectedReader, Amount amountTip, boolean requestDynamicCurrencyConversion, AllowRedisplay allowRedisplay) throws Exception {
        Intrinsics.checkNotNullParameter(intent, "intent");
        this.logger.d("updatePaymentIntentExpandMethod", new Pair[0]);
        RestRequest<UpdatePaymentIntentRequest, UpdatePaymentIntentRequest.Builder> restRequestUpdatePaymentIntent = this.apiRequestFactory.updatePaymentIntent(intent, connectedReader != null ? connectedReader.getId() : null, amountTip, requestDynamicCurrencyConversion, allowRedisplay);
        return updatePaymentIntentExpandedMethod((UpdatePaymentIntentRequest) restRequestUpdatePaymentIntent.getBody(), restRequestUpdatePaymentIntent.getHeaders());
    }

    public final PaymentIntent updatePaymentIntentExpandedMethod(UpdatePaymentIntentRequest request, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(headers, "headers");
        final RestResponse<PaymentIntentExpandedMethod, ErrorWrapper> restResponseUpdatePaymentIntentExpandedMethod = this.restClient.updatePaymentIntentExpandedMethod(request, headers);
        return (PaymentIntent) INSTANCE.withDetailedConnectionError(ApiOperation.UPDATE, ApiResource.PAYMENT_INTENT, new Function0<PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.api.ApiClient.updatePaymentIntentExpandedMethod.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PaymentIntent invoke() {
                return ProtoConverter.INSTANCE.toSdkPaymentIntent((PaymentIntentExpandedMethod) Companion.decodeResponse$default(ApiClient.INSTANCE, restResponseUpdatePaymentIntentExpandedMethod, null, null, 6, null));
            }
        });
    }

    public final PaymentMethod createCardPaymentMethod(ReadReusableCardParameters params, PaymentMethodData paymentMethodData, Reader connectedReader) throws TerminalException {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        this.logger.d("createCardPaymentMethod", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkPaymentMethod((com.stripe.proto.model.rest.PaymentMethod) Companion.decodeResponse$default(INSTANCE, this.restClient.readCardPaymentMethod(this.apiRequestFactory.createPaymentMethod(params, paymentMethodData, connectedReader != null ? connectedReader.getId() : null)), null, null, 6, null));
    }

    public final PaymentIntent createPaymentIntent(PaymentIntentParameters params, RestConfig restConfig) throws TerminalException {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        this.logger.d("createPaymentIntent", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkPaymentIntent((com.stripe.proto.model.rest.PaymentIntent) Companion.decodeResponse$default(INSTANCE, this.restClient.createPaymentIntent(this.apiRequestFactory.createPaymentIntent(params), restConfig), null, null, 6, null));
    }

    public static /* synthetic */ SetupIntent retrieveSetupIntent$default(ApiClient apiClient, String str, String str2, int i, Object obj) throws TerminalException {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return apiClient.retrieveSetupIntent(str, str2);
    }

    public final SetupIntent retrieveSetupIntent(String clientSecret, String connectionToken) throws TerminalException {
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        this.logger.d("retrieveSetupIntent", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkSetupIntent((com.stripe.proto.model.rest.SetupIntent) Companion.decodeResponse$default(INSTANCE, AuthenticatedRestClient.retrieveSetupIntent$default(this.restClient, this.apiRequestFactory.retrieveSetupIntent(clientSecret), connectionToken, null, 4, null), null, null, 6, null));
    }

    public final SetupIntent confirmSetupIntent(SetupIntent intent, AllowRedisplay allowRedisplay, RestConfig restConfig) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        this.logger.d("confirmSetupIntent", new Pair[0]);
        final RestResponse<com.stripe.proto.model.rest.SetupIntent, ErrorWrapper> restResponseConfirmSetupIntent = this.restClient.confirmSetupIntent(this.apiRequestFactory.confirmSetupIntent(intent, allowRedisplay), restConfig);
        return (SetupIntent) INSTANCE.withDetailedConnectionError(ApiOperation.CONFIRM, ApiResource.SETUP_INTENT, new Function0<SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.api.ApiClient.confirmSetupIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SetupIntent invoke() {
                return ProtoConverter.INSTANCE.toSdkSetupIntent((com.stripe.proto.model.rest.SetupIntent) Companion.decodeResponse$default(ApiClient.INSTANCE, restResponseConfirmSetupIntent, null, null, 6, null));
            }
        });
    }

    public final SetupIntent createSetupIntent(SetupIntentParameters params, RestConfig restConfig) throws TerminalException {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        this.logger.d("createSetupIntent", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkSetupIntent((com.stripe.proto.model.rest.SetupIntent) Companion.decodeResponse$default(INSTANCE, this.restClient.createSetupIntent(this.apiRequestFactory.createSetupIntent(params), restConfig), null, null, 6, null));
    }

    public final SetupIntent cancelSetupIntent(SetupIntent intent, SetupIntentCancellationParameters params) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(params, "params");
        this.logger.d("cancelSetupIntent", new Pair[0]);
        final RestResponse<com.stripe.proto.model.rest.SetupIntent, ErrorWrapper> restResponseCancelSetupIntent = this.restClient.cancelSetupIntent(this.apiRequestFactory.cancelSetupIntent(intent, params));
        return (SetupIntent) INSTANCE.withDetailedConnectionError(ApiOperation.CANCEL, ApiResource.SETUP_INTENT, new Function0<SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.api.ApiClient.cancelSetupIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SetupIntent invoke() {
                return ProtoConverter.INSTANCE.toSdkSetupIntent((com.stripe.proto.model.rest.SetupIntent) Companion.decodeResponse$default(ApiClient.INSTANCE, restResponseCancelSetupIntent, null, null, 6, null));
            }
        });
    }

    public final PaymentMethod detachPaymentMethod(PaymentMethod method) throws TerminalException {
        Intrinsics.checkNotNullParameter(method, "method");
        this.logger.d("detachPaymentMethod", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkPaymentMethod((com.stripe.proto.model.rest.PaymentMethod) Companion.decodeResponse$default(INSTANCE, this.restClient.detachPaymentMethod(this.apiRequestFactory.detachPaymentMethod(method)), null, null, 6, null));
    }

    public final DiscoverLocationsResponse discoverLocations(List<String> devices, String token) throws TerminalException {
        Intrinsics.checkNotNullParameter(devices, "devices");
        Intrinsics.checkNotNullParameter(token, "token");
        this.logger.d("discoverLocations", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkDiscoverLocationsResponse((com.stripe.proto.api.rest.DiscoverLocationsResponse) Companion.decodeResponse$default(INSTANCE, this.restClient.discoverLocations(token, this.apiRequestFactory.discoverLocations(devices)), null, null, 6, null));
    }

    public static /* synthetic */ ListAllReadersResponse listAllReaders$default(ApiClient apiClient, String str, DeviceType deviceType, String str2, RestConfig restConfig, int i, Object obj) throws TerminalException {
        if ((i & 2) != 0) {
            deviceType = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        return apiClient.listAllReaders(str, deviceType, str2, restConfig);
    }

    public final ListAllReadersResponse listAllReaders(String token, DeviceType deviceType, String location, RestConfig restConfig) throws TerminalException {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        this.logger.d("listAllReaders", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkListAllReadersResponse((com.stripe.proto.api.rest.ListAllReadersResponse) Companion.decodeResponse$default(INSTANCE, this.restClient.listAllReaders(token, this.apiRequestFactory.listAllReaders(deviceType, location), restConfig), null, null, 6, null));
    }

    public static /* synthetic */ PaymentIntent retrievePaymentIntent$default(ApiClient apiClient, String str, String str2, int i, Object obj) throws TerminalException {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return apiClient.retrievePaymentIntent(str, str2);
    }

    public final PaymentIntent retrievePaymentIntent(String clientSecret, String connectionToken) throws TerminalException {
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        this.logger.d("retrievePaymentIntent", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkPaymentIntent((com.stripe.proto.model.rest.PaymentIntent) Companion.decodeResponse$default(INSTANCE, AuthenticatedRestClient.retrievePaymentIntent$default(this.restClient, this.apiRequestFactory.retrievePaymentIntent(clientSecret), connectionToken, null, 4, null), null, null, 6, null));
    }

    public final ListLocationsResponse listLocations(ListLocationsParameters parameters, String token) throws TerminalException {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(token, "token");
        this.logger.d("listLocations", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkListLocationsResponse((com.stripe.proto.api.rest.ListLocationsResponse) Companion.decodeResponse$default(INSTANCE, this.restClient.listLocations(this.apiRequestFactory.listLocations(parameters), token), null, null, 6, null));
    }

    public final CollectedData createReaderCollectedData(PaymentMethodData paymentMethodData) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        this.logger.d("createReaderCollectedData", new Pair[0]);
        return ProtoConverter.INSTANCE.toSdkCollectedData((ReaderCollectedData) Companion.decodeResponse$default(INSTANCE, this.restClient.createReaderCollectedData(this.apiRequestFactory.createReaderCollectedData(paymentMethodData)), null, null, 6, null));
    }

    /* JADX INFO: renamed from: downloadImageAsset-IoAF18A, reason: not valid java name */
    public final Object m512downloadImageAssetIoAF18A(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            Result.Companion companion = Result.INSTANCE;
            ApiClient apiClient = this;
            ResponseBody responseBodyBody = FirebasePerfOkHttpClient.execute(this.unauthenticatedRestClientProvider.get().newCall(new Request.Builder().url(url).build())).body();
            Intrinsics.checkNotNull(responseBodyBody);
            return Result.m817constructorimpl(responseBodyBody.bytes());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m817constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX INFO: compiled from: ApiClient.kt */
    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006J\u001a\u0010\b\u001a\u00020\t2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0006JY\u0010\n\u001a\u0002H\u000b\"\u0012\b\u0000\u0010\u000b*\f\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\b\u00030\f2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00070\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0018\b\u0002\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u0002H\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u0010¢\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0015H\u0002J/\u0010\u0016\u001a\u0002H\u000b\"\u0004\b\u0000\u0010\u000b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u001c¢\u0006\u0002\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;", "", "()V", "decodeConfirmPaymentResponseCatchingLastPaymentError", "Lcom/stripe/proto/model/rest/PaymentIntent;", "response", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "decodeRefundResponseCatchingInlineFailure", "Lcom/stripe/proto/model/rest/Refund;", "decodeResponse", "T", "Lcom/squareup/wire/Message;", "fallbackTerminalErrorCode", "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "getInlineError", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ErrorResponse;", "(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;)Lcom/squareup/wire/Message;", "transformConnectionTokenResponseForSimulator", "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;", "withDetailedConnectionError", "operation", "Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;", "apiResource", "Lcom/stripe/stripeterminal/internal/common/api/ApiResource;", "provider", "Lkotlin/Function0;", "(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ Message decodeResponse$default(Companion companion, RestResponse restResponse, TerminalErrorCode terminalErrorCode, Function1 function1, int i, Object obj) throws TerminalException {
            if ((i & 2) != 0) {
                terminalErrorCode = null;
            }
            if ((i & 4) != 0) {
                function1 = null;
            }
            return companion.decodeResponse(restResponse, terminalErrorCode, function1);
        }

        public final <T extends Message<T, ?>> T decodeResponse(RestResponse<T, ErrorWrapper> response, TerminalErrorCode fallbackTerminalErrorCode, Function1<? super T, ErrorResponse> getInlineError) throws TerminalException {
            ErrorResponse errorResponseInvoke;
            Intrinsics.checkNotNullParameter(response, "response");
            if (response instanceof RestResponse.Success) {
                if (getInlineError != null && (errorResponseInvoke = getInlineError.invoke(((RestResponse.Success) response).getResponse())) != null) {
                    throw ProtoConverter.toTerminalException$default(ProtoConverter.INSTANCE, errorResponseInvoke, null, 1, null);
                }
                return (T) ((RestResponse.Success) response).getResponse();
            }
            if (response instanceof RestResponse.ServerError) {
                if (response.getStatusCode() == StatusCode.HTTP_ERROR || response.getStatusCode() == StatusCode.HTTP_ERROR_UNKNOWN_STATE || response.getStatusCode() == StatusCode.CONFLICT) {
                    throw new TerminalException(TerminalErrorCode.STRIPE_API_CONNECTION_ERROR, "Could not connect to Stripe. Please retry.", null, null, 12, null);
                }
                throw ProtoConverter.INSTANCE.toTerminalException(((ErrorWrapper) ((RestResponse.ServerError) response).getResponse()).error, fallbackTerminalErrorCode);
            }
            if (response instanceof RestResponse.ParseError) {
                throw new TerminalException(TerminalErrorCode.STRIPE_API_RESPONSE_DECODING_ERROR, response.toLogString(), null, null, 12, null);
            }
            throw new NoWhenBranchMatchedException();
        }

        public final Refund decodeRefundResponseCatchingInlineFailure(RestResponse<Refund, ErrorWrapper> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            return (Refund) decodeResponse$default(this, response, null, new Function1<Refund, ErrorResponse>() { // from class: com.stripe.stripeterminal.internal.common.api.ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1
                @Override // kotlin.jvm.functions.Function1
                public final ErrorResponse invoke(Refund it) {
                    String str;
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (!Intrinsics.areEqual(it.status, "failed")) {
                        return null;
                    }
                    String str2 = it.failure_reason;
                    if (str2 == null || str2.length() == 0) {
                        str = "Refund failed";
                    } else {
                        str = it.failure_reason;
                    }
                    return new ErrorResponse(null, null, null, null, null, str, null, null, null, null, null, WinError.ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE, null);
                }
            }, 2, null);
        }

        public final com.stripe.proto.model.rest.PaymentIntent decodeConfirmPaymentResponseCatchingLastPaymentError(RestResponse<com.stripe.proto.model.rest.PaymentIntent, ErrorWrapper> response) throws TerminalException {
            Intrinsics.checkNotNullParameter(response, "response");
            com.stripe.proto.model.rest.PaymentIntent paymentIntentAlreadyCompletedPaymentIntent = Extensions.INSTANCE.alreadyCompletedPaymentIntent(response);
            return paymentIntentAlreadyCompletedPaymentIntent == null ? (com.stripe.proto.model.rest.PaymentIntent) decodeResponse$default(this, response, null, new Function1<com.stripe.proto.model.rest.PaymentIntent, ErrorResponse>() { // from class: com.stripe.stripeterminal.internal.common.api.ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1
                @Override // kotlin.jvm.functions.Function1
                public final ErrorResponse invoke(com.stripe.proto.model.rest.PaymentIntent it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    PaymentIntent.NextAction nextAction = it.next_action;
                    NextAction sdkNextAction = nextAction != null ? ProtoConverter.INSTANCE.toSdkNextAction(nextAction) : null;
                    if (Intrinsics.areEqual(sdkNextAction != null ? sdkNextAction.getType() : null, NextAction.USE_STRIPE_SDK)) {
                        UseStripeSdk useStripeSdk = sdkNextAction.getUseStripeSdk();
                        if (Intrinsics.areEqual(useStripeSdk != null ? useStripeSdk.getType() : null, UseStripeSdk.ANDROID_TAP_TO_PAY_PIN_CAPTURE)) {
                            return null;
                        }
                    }
                    return it.last_payment_error;
                }
            }, 2, null) : paymentIntentAlreadyCompletedPaymentIntent;
        }

        public final <T> T withDetailedConnectionError(ApiOperation operation, ApiResource apiResource, Function0<? extends T> provider) throws Throwable {
            T t;
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(apiResource, "apiResource");
            Intrinsics.checkNotNullParameter(provider, "provider");
            try {
                Result.Companion companion = Result.INSTANCE;
                Companion companion2 = this;
                t = (T) Result.m817constructorimpl(provider.invoke());
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                t = (T) Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(t);
            if (thM820exceptionOrNullimpl == null) {
                return t;
            }
            if (!(thM820exceptionOrNullimpl instanceof TerminalException)) {
                throw thM820exceptionOrNullimpl;
            }
            TerminalException terminalException = (TerminalException) thM820exceptionOrNullimpl;
            if (terminalException.getErrorCode() != TerminalErrorCode.STRIPE_API_CONNECTION_ERROR) {
                throw thM820exceptionOrNullimpl;
            }
            String strOperationVerb = operation.operationVerb();
            String strResourceName = apiResource.resourceName();
            throw new TerminalException(terminalException.getErrorCode(), "There was an error " + strOperationVerb + " this " + strResourceName + ", which may have left it in an unknown state. Please retrieve the latest " + strResourceName + " status or try again.", thM820exceptionOrNullimpl, terminalException.getApiError());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final ActivatedConnectionTokenWithExpandedLocation transformConnectionTokenResponseForSimulator(ActivatedConnectionToken response) {
            ActivatedConnectionToken.AccountRef accountRef = response.account_ref;
            Object[] objArr = 0;
            return new ActivatedConnectionTokenWithExpandedLocation(new ActivatedConnectionTokenWithExpandedLocation.AccountRef(new ApiLocationPb(accountRef != null ? accountRef.store_id : null, null, null, null, null, null, null, null, response.livemode, false, null, null, null, null, null, null, null, 130814, null), null, 2, objArr == true ? 1 : 0), response.sdk_rpc_session_token, response.reader_rpc_session_token, response.stripe_session_token, response.reader_id, response.livemode, response.account_id, response.connection_context_id, response.offline_stripe_session_token, 0 == true ? 1 : 0, 512, null);
        }
    }
}
