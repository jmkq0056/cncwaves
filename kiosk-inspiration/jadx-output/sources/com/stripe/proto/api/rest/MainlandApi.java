package com.stripe.proto.api.rest;

import com.squareup.wire.AnyMessage;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestConfig;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.jvmcore.restclient.StringRestResponse;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.rest.ActivatedConnectionToken;
import com.stripe.proto.model.rest.ActivatedConnectionTokenWithExpandedLocation;
import com.stripe.proto.model.rest.ConnectionToken;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.PaymentIntentExpandedMethod;
import com.stripe.proto.model.rest.PaymentMethod;
import com.stripe.proto.model.rest.Reader;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.rest.Refund;
import com.stripe.proto.model.rest.SetupIntent;
import dagger.Lazy;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: MainlandApi.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J:\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u00182\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u001b2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u001d2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020 2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J4\u0010!\u001a\b\u0012\u0004\u0012\u00020\f0\"2\u0006\u0010\r\u001a\u00020#2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020%2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020'2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010(\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020*2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020,2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010-\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020/2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u00100\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u0002022\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u0002042\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u00105\u001a\u000e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u0002072\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u00108\u001a\u000e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020:2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010;\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020=2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010>\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020@2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010A\u001a\u000e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020B2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020D2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010E\u001a\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020G2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010H\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020I2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020K2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010L\u001a\u000e\u0012\u0004\u0012\u00020M\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020N2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010O\u001a\u000e\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020Q2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006R"}, d2 = {"Lcom/stripe/proto/api/rest/MainlandApi;", "", "lazyClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/restclient/RestClient;", "(Ldagger/Lazy;)V", "client", "getClient", "()Lcom/stripe/jvmcore/restclient/RestClient;", "activateConnectionToken", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "message", "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;", "headers", "", "", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "activateConnectionTokenWithExpandedLocation", "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;", "addEmvSecondGenerationData", "Lcom/stripe/proto/model/rest/PaymentIntent;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;", "addEmvSecondGenerationRefundData", "Lcom/stripe/proto/model/rest/Refund;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;", "cancelPaymentIntent", "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;", "cancelSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;", "checkHealth", "Lcom/stripe/jvmcore/restclient/StringRestResponse;", "Lcom/stripe/proto/api/rest/CheckHealthRequest;", "confirmPaymentIntent", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "confirmSetupIntent", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "createConnectionToken", "Lcom/stripe/proto/model/rest/ConnectionToken;", "Lcom/stripe/proto/api/rest/CreateConnectionTokenRequest;", "createPaymentIntent", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "createReader", "Lcom/stripe/proto/model/rest/Reader;", "Lcom/stripe/proto/api/rest/CreateReaderRequest;", "createReaderCollectedData", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;", "createSetupIntent", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "detachPaymentMethod", "Lcom/stripe/proto/model/rest/PaymentMethod;", "Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;", "discoverLocations", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;", "Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;", "listAllReaders", "Lcom/stripe/proto/api/rest/ListAllReadersResponse;", "Lcom/stripe/proto/api/rest/ListAllReadersRequest;", "listLocations", "Lcom/stripe/proto/api/rest/ListLocationsResponse;", "Lcom/stripe/proto/api/rest/ListLocationsRequest;", "readCardPaymentMethod", "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;", "refundCharge", "Lcom/stripe/proto/api/rest/RefundChargeRequest;", "retrieveLocation", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "Lcom/stripe/proto/api/rest/RetrieveLocationRequest;", "retrievePaymentIntent", "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;", "retrieveSetupIntent", "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;", "updatePaymentIntentExpandMethod", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;", "updateSdiAction", "Lcom/stripe/proto/api/rest/UpdateSdiActionResponse;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MainlandApi {
    private final Lazy<? extends RestClient> lazyClient;

    public MainlandApi(Lazy<? extends RestClient> lazyClient) {
        Intrinsics.checkNotNullParameter(lazyClient, "lazyClient");
        this.lazyClient = lazyClient;
    }

    public final RestClient getClient() {
        RestClient restClient = this.lazyClient.get();
        Intrinsics.checkNotNullExpressionValue(restClient, "get(...)");
        return restClient;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse activateConnectionToken$default(MainlandApi mainlandApi, ActivateConnectionTokenRequest activateConnectionTokenRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.activateConnectionToken(activateConnectionTokenRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<ActivatedConnectionToken, ErrorWrapper> activateConnectionToken(ActivateConnectionTokenRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "activateConnectionToken", ActivateConnectionTokenRequestExt.INSTANCE.addActivateConnectionTokenRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "v1/terminal/connection_tokens/activate", headers, message, ActivatedConnectionToken.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse activateConnectionTokenWithExpandedLocation$default(MainlandApi mainlandApi, ActivateConnectionTokenRequest activateConnectionTokenRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.activateConnectionTokenWithExpandedLocation(activateConnectionTokenRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<ActivatedConnectionTokenWithExpandedLocation, ErrorWrapper> activateConnectionTokenWithExpandedLocation(ActivateConnectionTokenRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "activateConnectionTokenWithExpandedLocation", ActivateConnectionTokenRequestExt.INSTANCE.addActivateConnectionTokenRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "v1/terminal/connection_tokens/activate", headers, message, ActivatedConnectionTokenWithExpandedLocation.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse cancelPaymentIntent$default(MainlandApi mainlandApi, CancelPaymentIntentRequest cancelPaymentIntentRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.cancelPaymentIntent(cancelPaymentIntentRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<PaymentIntent, ErrorWrapper> cancelPaymentIntent(CancelPaymentIntentRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/payment_intents/" + message.id + "/cancel";
        CancelPaymentIntentRequest cancelPaymentIntentRequestCopy$default = CancelPaymentIntentRequest.copy$default(message, null, null, null, null, 13, null);
        return getClient().blockingPost("MainlandService", "cancelPaymentIntent", CancelPaymentIntentRequestExt.INSTANCE.addCancelPaymentIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), cancelPaymentIntentRequestCopy$default, ""), str, headers, cancelPaymentIntentRequestCopy$default, PaymentIntent.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse createConnectionToken$default(MainlandApi mainlandApi, CreateConnectionTokenRequest createConnectionTokenRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.createConnectionToken(createConnectionTokenRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<ConnectionToken, ErrorWrapper> createConnectionToken(CreateConnectionTokenRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "createConnectionToken", CreateConnectionTokenRequestExt.INSTANCE.addCreateConnectionTokenRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "v1/terminal/connection_tokens", headers, message, ConnectionToken.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StringRestResponse checkHealth$default(MainlandApi mainlandApi, CheckHealthRequest checkHealthRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.checkHealth(checkHealthRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final StringRestResponse<ErrorWrapper> checkHealth(CheckHealthRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        RestResponse restResponseBlockingGet = getClient().blockingGet("MainlandService", "checkHealth", CheckHealthRequestExt.INSTANCE.addCheckHealthRequest(new HttpUrl.Builder(), message, ""), "healthcheck", headers, message, AnyMessage.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
        if (restResponseBlockingGet instanceof RestResponse.ParseError) {
            return new StringRestResponse.ParseError((RestResponse.ParseError) restResponseBlockingGet);
        }
        if (restResponseBlockingGet instanceof RestResponse.ServerError) {
            return new StringRestResponse.ServerError((RestResponse.ServerError) restResponseBlockingGet, null, 2, 0 == true ? 1 : 0);
        }
        if (!(restResponseBlockingGet instanceof RestResponse.Success)) {
            throw new NoWhenBranchMatchedException();
        }
        return new StringRestResponse.Success((RestResponse.Success) restResponseBlockingGet, null, null, 6, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse createPaymentIntent$default(MainlandApi mainlandApi, CreatePaymentIntentRequest createPaymentIntentRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.createPaymentIntent(createPaymentIntentRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<PaymentIntent, ErrorWrapper> createPaymentIntent(CreatePaymentIntentRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "createPaymentIntent", CreatePaymentIntentRequestExt.INSTANCE.addCreatePaymentIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "v1/payment_intents", headers, message, PaymentIntent.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse confirmPaymentIntent$default(MainlandApi mainlandApi, ConfirmPaymentIntentRequest confirmPaymentIntentRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.confirmPaymentIntent(confirmPaymentIntentRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<PaymentIntent, ErrorWrapper> confirmPaymentIntent(ConfirmPaymentIntentRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/payment_intents/" + message.id + "/confirm";
        ConfirmPaymentIntentRequest confirmPaymentIntentRequestCopy$default = ConfirmPaymentIntentRequest.copy$default(message, null, null, null, null, null, null, null, null, null, null, null, 2031, null);
        return getClient().blockingPost("MainlandService", "confirmPaymentIntent", ConfirmPaymentIntentRequestExt.INSTANCE.addConfirmPaymentIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), confirmPaymentIntentRequestCopy$default, ""), str, headers, confirmPaymentIntentRequestCopy$default, PaymentIntent.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse createSetupIntent$default(MainlandApi mainlandApi, CreateSetupIntentRequest createSetupIntentRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.createSetupIntent(createSetupIntentRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<SetupIntent, ErrorWrapper> createSetupIntent(CreateSetupIntentRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "createSetupIntent", CreateSetupIntentRequestExt.INSTANCE.addCreateSetupIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "v1/setup_intents", headers, message, SetupIntent.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse listLocations$default(MainlandApi mainlandApi, ListLocationsRequest listLocationsRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.listLocations(listLocationsRequest, map, restConfig);
    }

    public final RestResponse<ListLocationsResponse, ErrorWrapper> listLocations(ListLocationsRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingGet("MainlandService", "listLocations", ListLocationsRequestExt.INSTANCE.addListLocationsRequest(new HttpUrl.Builder(), message, ""), "v1/terminal/locations", headers, message, ListLocationsResponse.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse retrieveLocation$default(MainlandApi mainlandApi, RetrieveLocationRequest retrieveLocationRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.retrieveLocation(retrieveLocationRequest, map, restConfig);
    }

    public final RestResponse<ApiLocationPb, ErrorWrapper> retrieveLocation(RetrieveLocationRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/terminal/locations/" + message.id;
        RetrieveLocationRequest retrieveLocationRequestCopy$default = RetrieveLocationRequest.copy$default(message, null, null, 2, null);
        return getClient().blockingGet("MainlandService", "retrieveLocation", RetrieveLocationRequestExt.INSTANCE.addRetrieveLocationRequest(new HttpUrl.Builder(), retrieveLocationRequestCopy$default, ""), str, headers, retrieveLocationRequestCopy$default, ApiLocationPb.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse detachPaymentMethod$default(MainlandApi mainlandApi, DetachPaymentMethodRequest detachPaymentMethodRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.detachPaymentMethod(detachPaymentMethodRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<PaymentMethod, ErrorWrapper> detachPaymentMethod(DetachPaymentMethodRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/payment_methods/" + message.id + "/detach";
        DetachPaymentMethodRequest detachPaymentMethodRequestCopy$default = DetachPaymentMethodRequest.copy$default(message, null, null, 2, null);
        return getClient().blockingPost("MainlandService", "detachPaymentMethod", DetachPaymentMethodRequestExt.INSTANCE.addDetachPaymentMethodRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), detachPaymentMethodRequestCopy$default, ""), str, headers, detachPaymentMethodRequestCopy$default, PaymentMethod.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse discoverLocations$default(MainlandApi mainlandApi, DiscoverLocationsRequest discoverLocationsRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.discoverLocations(discoverLocationsRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<DiscoverLocationsResponse, ErrorWrapper> discoverLocations(DiscoverLocationsRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "discoverLocations", DiscoverLocationsRequestExt.INSTANCE.addDiscoverLocationsRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "/v1/terminal/readers/discover", headers, message, DiscoverLocationsResponse.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse listAllReaders$default(MainlandApi mainlandApi, ListAllReadersRequest listAllReadersRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.listAllReaders(listAllReadersRequest, map, restConfig);
    }

    public final RestResponse<ListAllReadersResponse, ErrorWrapper> listAllReaders(ListAllReadersRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingGet("MainlandService", "listAllReaders", ListAllReadersRequestExt.INSTANCE.addListAllReadersRequest(new HttpUrl.Builder(), message, ""), "/v1/terminal/readers", headers, message, ListAllReadersResponse.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse createReader$default(MainlandApi mainlandApi, CreateReaderRequest createReaderRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.createReader(createReaderRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<Reader, ErrorWrapper> createReader(CreateReaderRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "createReader", CreateReaderRequestExt.INSTANCE.addCreateReaderRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "v1/terminal/readers", headers, message, Reader.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse retrievePaymentIntent$default(MainlandApi mainlandApi, RetrievePaymentIntentRequest retrievePaymentIntentRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.retrievePaymentIntent(retrievePaymentIntentRequest, map, restConfig);
    }

    public final RestResponse<PaymentIntent, ErrorWrapper> retrievePaymentIntent(RetrievePaymentIntentRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/payment_intents/" + message.id;
        RetrievePaymentIntentRequest retrievePaymentIntentRequestCopy$default = RetrievePaymentIntentRequest.copy$default(message, null, null, null, null, 13, null);
        return getClient().blockingGet("MainlandService", "retrievePaymentIntent", RetrievePaymentIntentRequestExt.INSTANCE.addRetrievePaymentIntentRequest(new HttpUrl.Builder(), retrievePaymentIntentRequestCopy$default, ""), str, headers, retrievePaymentIntentRequestCopy$default, PaymentIntent.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse updatePaymentIntentExpandMethod$default(MainlandApi mainlandApi, UpdatePaymentIntentRequest updatePaymentIntentRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.updatePaymentIntentExpandMethod(updatePaymentIntentRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<PaymentIntentExpandedMethod, ErrorWrapper> updatePaymentIntentExpandMethod(UpdatePaymentIntentRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/payment_intents/" + message.id;
        UpdatePaymentIntentRequest updatePaymentIntentRequestCopy$default = UpdatePaymentIntentRequest.copy$default(message, null, null, null, null, null, null, null, 123, null);
        return getClient().blockingPost("MainlandService", "updatePaymentIntentExpandMethod", UpdatePaymentIntentRequestExt.INSTANCE.addUpdatePaymentIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), updatePaymentIntentRequestCopy$default, ""), str, headers, updatePaymentIntentRequestCopy$default, PaymentIntentExpandedMethod.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse addEmvSecondGenerationData$default(MainlandApi mainlandApi, AddEmvSecondGenerationDataRequest addEmvSecondGenerationDataRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.addEmvSecondGenerationData(addEmvSecondGenerationDataRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<PaymentIntent, ErrorWrapper> addEmvSecondGenerationData(AddEmvSecondGenerationDataRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/payment_intents/" + message.id + "/add_emv_second_generation_data";
        AddEmvSecondGenerationDataRequest addEmvSecondGenerationDataRequestCopy$default = AddEmvSecondGenerationDataRequest.copy$default(message, null, null, null, null, null, null, 47, null);
        return getClient().blockingPost("MainlandService", "addEmvSecondGenerationData", AddEmvSecondGenerationDataRequestExt.INSTANCE.addAddEmvSecondGenerationDataRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), addEmvSecondGenerationDataRequestCopy$default, ""), str, headers, addEmvSecondGenerationDataRequestCopy$default, PaymentIntent.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse refundCharge$default(MainlandApi mainlandApi, RefundChargeRequest refundChargeRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.refundCharge(refundChargeRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<Refund, ErrorWrapper> refundCharge(RefundChargeRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "refundCharge", RefundChargeRequestExt.INSTANCE.addRefundChargeRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "v1/refunds", headers, message, Refund.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse addEmvSecondGenerationRefundData$default(MainlandApi mainlandApi, AddEmvSecondGenerationDataRefundRequest addEmvSecondGenerationDataRefundRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.addEmvSecondGenerationRefundData(addEmvSecondGenerationDataRefundRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<Refund, ErrorWrapper> addEmvSecondGenerationRefundData(AddEmvSecondGenerationDataRefundRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/refunds/" + message.id + "/add_emv_second_generation_data";
        AddEmvSecondGenerationDataRefundRequest addEmvSecondGenerationDataRefundRequestCopy$default = AddEmvSecondGenerationDataRefundRequest.copy$default(message, null, null, null, null, null, null, null, null, 239, null);
        return getClient().blockingPost("MainlandService", "addEmvSecondGenerationRefundData", AddEmvSecondGenerationDataRefundRequestExt.INSTANCE.addAddEmvSecondGenerationDataRefundRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), addEmvSecondGenerationDataRefundRequestCopy$default, ""), str, headers, addEmvSecondGenerationDataRefundRequestCopy$default, Refund.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse readCardPaymentMethod$default(MainlandApi mainlandApi, ReadCardPaymentMethodRequest readCardPaymentMethodRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.readCardPaymentMethod(readCardPaymentMethodRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<PaymentMethod, ErrorWrapper> readCardPaymentMethod(ReadCardPaymentMethodRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "readCardPaymentMethod", ReadCardPaymentMethodRequestExt.INSTANCE.addReadCardPaymentMethodRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "v1/terminal/read_card_payment_method", headers, message, PaymentMethod.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse confirmSetupIntent$default(MainlandApi mainlandApi, ConfirmSetupIntentRequest confirmSetupIntentRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.confirmSetupIntent(confirmSetupIntentRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<SetupIntent, ErrorWrapper> confirmSetupIntent(ConfirmSetupIntentRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/setup_intents/" + message.id + "/confirm";
        ConfirmSetupIntentRequest confirmSetupIntentRequestCopy$default = ConfirmSetupIntentRequest.copy$default(message, null, null, null, null, null, null, null, 95, null);
        return getClient().blockingPost("MainlandService", "confirmSetupIntent", ConfirmSetupIntentRequestExt.INSTANCE.addConfirmSetupIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), confirmSetupIntentRequestCopy$default, ""), str, headers, confirmSetupIntentRequestCopy$default, SetupIntent.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse updateSdiAction$default(MainlandApi mainlandApi, UpdateSdiActionRequest updateSdiActionRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.updateSdiAction(updateSdiActionRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<UpdateSdiActionResponse, ErrorWrapper> updateSdiAction(UpdateSdiActionRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "/v1/terminal/readers/" + message.id + "/update_action";
        UpdateSdiActionRequest updateSdiActionRequestCopy$default = UpdateSdiActionRequest.copy$default(message, null, null, null, null, null, null, null, null, null, null, null, 2046, null);
        return getClient().blockingPost("MainlandService", "updateSdiAction", UpdateSdiActionRequestExt.INSTANCE.addUpdateSdiActionRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), updateSdiActionRequestCopy$default, ""), str, headers, updateSdiActionRequestCopy$default, UpdateSdiActionResponse.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse cancelSetupIntent$default(MainlandApi mainlandApi, CancelSetupIntentRequest cancelSetupIntentRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.cancelSetupIntent(cancelSetupIntentRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<SetupIntent, ErrorWrapper> cancelSetupIntent(CancelSetupIntentRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/setup_intents/" + message.id + "/cancel";
        CancelSetupIntentRequest cancelSetupIntentRequestCopy$default = CancelSetupIntentRequest.copy$default(message, null, null, null, 6, null);
        return getClient().blockingPost("MainlandService", "cancelSetupIntent", CancelSetupIntentRequestExt.INSTANCE.addCancelSetupIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), cancelSetupIntentRequestCopy$default, ""), str, headers, cancelSetupIntentRequestCopy$default, SetupIntent.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse retrieveSetupIntent$default(MainlandApi mainlandApi, RetrieveSetupIntentRequest retrieveSetupIntentRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.retrieveSetupIntent(retrieveSetupIntentRequest, map, restConfig);
    }

    public final RestResponse<SetupIntent, ErrorWrapper> retrieveSetupIntent(RetrieveSetupIntentRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/setup_intents/" + message.id;
        RetrieveSetupIntentRequest retrieveSetupIntentRequestCopy$default = RetrieveSetupIntentRequest.copy$default(message, null, null, null, null, 13, null);
        return getClient().blockingGet("MainlandService", "retrieveSetupIntent", RetrieveSetupIntentRequestExt.INSTANCE.addRetrieveSetupIntentRequest(new HttpUrl.Builder(), retrieveSetupIntentRequestCopy$default, ""), str, headers, retrieveSetupIntentRequestCopy$default, SetupIntent.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse createReaderCollectedData$default(MainlandApi mainlandApi, CreateReaderCollectedDataRequest createReaderCollectedDataRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return mainlandApi.createReaderCollectedData(createReaderCollectedDataRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<ReaderCollectedData, ErrorWrapper> createReaderCollectedData(CreateReaderCollectedDataRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("MainlandService", "createReaderCollectedData", CreateReaderCollectedDataRequestExt.INSTANCE.addCreateReaderCollectedDataRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), message, ""), "v1/terminal/reader_collected_data", headers, message, ReaderCollectedData.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }
}
