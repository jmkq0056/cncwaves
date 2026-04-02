package com.stripe.offlinemode.helpers;

import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequestExt;
import com.stripe.proto.api.rest.ConfirmSetupIntentRequest;
import com.stripe.proto.api.rest.ConfirmSetupIntentRequestExt;
import com.stripe.proto.api.rest.CreatePaymentIntentRequest;
import com.stripe.proto.api.rest.CreatePaymentIntentRequestExt;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import com.stripe.proto.api.rest.CreateSetupIntentRequestExt;
import com.stripe.stripeterminal.internal.common.extensions.FormBodyExtensionsKt;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;

/* JADX INFO: compiled from: DefaultOfflineRequestHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0016J\"\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;", "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;", "()V", "getBody", "", "Lkotlin/Pair;", "", "confirmPaymentIntentRequest", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "confirmSetupIntentRequest", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "createPaymentIntentRequest", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "createSetupIntentRequest", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "getHeaders", "", "getUrl", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineRequestHelper implements OfflineRequestHelper {
    @Inject
    public DefaultOfflineRequestHelper() {
    }

    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public Map<String, String> getHeaders(CreatePaymentIntentRequest createPaymentIntentRequest) {
        Intrinsics.checkNotNullParameter(createPaymentIntentRequest, "createPaymentIntentRequest");
        return MapsKt.emptyMap();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public Map<String, String> getHeaders(ConfirmPaymentIntentRequest confirmPaymentIntentRequest) {
        Intrinsics.checkNotNullParameter(confirmPaymentIntentRequest, "confirmPaymentIntentRequest");
        return MapsKt.emptyMap();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public Map<String, String> getHeaders(CreateSetupIntentRequest createSetupIntentRequest) {
        Intrinsics.checkNotNullParameter(createSetupIntentRequest, "createSetupIntentRequest");
        return MapsKt.emptyMap();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public Map<String, String> getHeaders(ConfirmSetupIntentRequest confirmSetupIntentRequest) {
        Intrinsics.checkNotNullParameter(confirmSetupIntentRequest, "confirmSetupIntentRequest");
        return MapsKt.emptyMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public List<Pair<String, String>> getBody(CreatePaymentIntentRequest createPaymentIntentRequest) {
        Intrinsics.checkNotNullParameter(createPaymentIntentRequest, "createPaymentIntentRequest");
        return FormBodyExtensionsKt.keyValuePairs(CreatePaymentIntentRequestExt.INSTANCE.addCreatePaymentIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), createPaymentIntentRequest, "").build());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public List<Pair<String, String>> getBody(ConfirmPaymentIntentRequest confirmPaymentIntentRequest) {
        Intrinsics.checkNotNullParameter(confirmPaymentIntentRequest, "confirmPaymentIntentRequest");
        return FormBodyExtensionsKt.keyValuePairs(ConfirmPaymentIntentRequestExt.INSTANCE.addConfirmPaymentIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), ConfirmPaymentIntentRequest.copy$default(confirmPaymentIntentRequest, null, null, null, null, null, null, null, null, null, null, null, 2031, null), "").build());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public List<Pair<String, String>> getBody(CreateSetupIntentRequest createSetupIntentRequest) {
        Intrinsics.checkNotNullParameter(createSetupIntentRequest, "createSetupIntentRequest");
        return FormBodyExtensionsKt.keyValuePairs(CreateSetupIntentRequestExt.INSTANCE.addCreateSetupIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), createSetupIntentRequest, "").build());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public List<Pair<String, String>> getBody(ConfirmSetupIntentRequest confirmSetupIntentRequest) {
        Intrinsics.checkNotNullParameter(confirmSetupIntentRequest, "confirmSetupIntentRequest");
        return FormBodyExtensionsKt.keyValuePairs(ConfirmSetupIntentRequestExt.INSTANCE.addConfirmSetupIntentRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), ConfirmSetupIntentRequest.copy$default(confirmSetupIntentRequest, null, null, null, null, null, null, null, 95, null), "").build());
    }

    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public String getUrl(CreatePaymentIntentRequest createPaymentIntentRequest) {
        Intrinsics.checkNotNullParameter(createPaymentIntentRequest, "createPaymentIntentRequest");
        return "v1/payment_intents";
    }

    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public String getUrl(ConfirmPaymentIntentRequest confirmPaymentIntentRequest) {
        Intrinsics.checkNotNullParameter(confirmPaymentIntentRequest, "confirmPaymentIntentRequest");
        return "v1/payment_intents/" + confirmPaymentIntentRequest.id + "/confirm";
    }

    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public String getUrl(CreateSetupIntentRequest createSetupIntentRequest) {
        Intrinsics.checkNotNullParameter(createSetupIntentRequest, "createSetupIntentRequest");
        return "v1/setup_intents";
    }

    @Override // com.stripe.offlinemode.helpers.OfflineRequestHelper
    public String getUrl(ConfirmSetupIntentRequest confirmSetupIntentRequest) {
        Intrinsics.checkNotNullParameter(confirmSetupIntentRequest, "confirmSetupIntentRequest");
        return "v1/setup_intents/" + confirmSetupIntentRequest.id + "/confirm";
    }
}
