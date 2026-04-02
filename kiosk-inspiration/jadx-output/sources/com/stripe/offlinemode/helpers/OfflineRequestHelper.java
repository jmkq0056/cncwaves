package com.stripe.offlinemode.helpers;

import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.proto.api.rest.ConfirmSetupIntentRequest;
import com.stripe.proto.api.rest.CreatePaymentIntentRequest;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: compiled from: OfflineRequestHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\"\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\b\u001a\u00020\tH&J\"\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\"\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\f\u001a\u00020\rH&J\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\b\u001a\u00020\tH&J\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\n\u001a\u00020\u000bH&J\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\f\u001a\u00020\rH&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;", "", "getBody", "", "Lkotlin/Pair;", "", "confirmPaymentIntentRequest", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "confirmSetupIntentRequest", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "createPaymentIntentRequest", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "createSetupIntentRequest", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "getHeaders", "", "getUrl", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineRequestHelper {
    List<Pair<String, String>> getBody(ConfirmPaymentIntentRequest confirmPaymentIntentRequest);

    List<Pair<String, String>> getBody(ConfirmSetupIntentRequest confirmSetupIntentRequest);

    List<Pair<String, String>> getBody(CreatePaymentIntentRequest createPaymentIntentRequest);

    List<Pair<String, String>> getBody(CreateSetupIntentRequest createSetupIntentRequest);

    Map<String, String> getHeaders(ConfirmPaymentIntentRequest confirmPaymentIntentRequest);

    Map<String, String> getHeaders(ConfirmSetupIntentRequest confirmSetupIntentRequest);

    Map<String, String> getHeaders(CreatePaymentIntentRequest createPaymentIntentRequest);

    Map<String, String> getHeaders(CreateSetupIntentRequest createSetupIntentRequest);

    String getUrl(ConfirmPaymentIntentRequest confirmPaymentIntentRequest);

    String getUrl(ConfirmSetupIntentRequest confirmSetupIntentRequest);

    String getUrl(CreatePaymentIntentRequest createPaymentIntentRequest);

    String getUrl(CreateSetupIntentRequest createSetupIntentRequest);
}
