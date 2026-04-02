package com.stripe.jvmcore.terminal.requestfactories.setup;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.sdk.CancelConfirmSetupIntentRequest;
import com.stripe.proto.api.sdk.CancelSetupIntentPaymentMethodRequest;
import com.stripe.proto.api.sdk.CancelSetupIntentRequest;
import com.stripe.proto.api.sdk.CollectSetupIntentPaymentMethodRequest;
import com.stripe.proto.api.sdk.ConfirmSetupIntentRequest;
import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.proto.api.sdk.CreateSetupIntentRequest;
import com.stripe.proto.api.sdk.OfflineSetupIntentDetails;
import com.stripe.proto.model.rest.AllowRedisplay;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import kotlin.Metadata;

/* JADX INFO: compiled from: SetupIntentJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH&JH\u0010\f\u001a\u00020\r2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H&J\u001c\u0010\u0019\u001a\u00020\u001a2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\b\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006 À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;", "", "cancelConfirmSetupIntent", "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;", "cancelSetupIntent", "Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;", OfflineStorageConstantsKt.ID, "", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "cancelSetupIntentPaymentMethod", "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;", "collectSetupIntentPaymentMethod", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;", "enableCustomerCancellation", "", "manualEntry", "offlineDetails", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "offlineBehavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "allowRedisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "setupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "confirmSetupIntent", "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;", "createSetupIntent", "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SetupIntentJackRabbitApiFactory {
    CancelConfirmSetupIntentRequest cancelConfirmSetupIntent();

    CancelSetupIntentRequest cancelSetupIntent(String id, SetupIntentCancellationParameters params);

    CancelSetupIntentPaymentMethodRequest cancelSetupIntentPaymentMethod();

    CollectSetupIntentPaymentMethodRequest collectSetupIntentPaymentMethod(String id, boolean enableCustomerCancellation, boolean manualEntry, OfflineSetupIntentDetails offlineDetails, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, AllowRedisplay allowRedisplay, SetupIntent setupIntent);

    ConfirmSetupIntentRequest confirmSetupIntent(String id, OfflineSetupIntentDetails offlineDetails);

    CreateSetupIntentRequest createSetupIntent(SetupIntentParameters params, CreateConfiguration createConfiguration);
}
