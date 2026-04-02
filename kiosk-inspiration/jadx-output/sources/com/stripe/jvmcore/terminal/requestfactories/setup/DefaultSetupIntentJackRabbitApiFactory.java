package com.stripe.jvmcore.terminal.requestfactories.setup;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.sdk.CancelConfirmSetupIntentRequest;
import com.stripe.proto.api.sdk.CancelSetupIntentPaymentMethodRequest;
import com.stripe.proto.api.sdk.CancelSetupIntentRequest;
import com.stripe.proto.api.sdk.CollectSetupIntentPaymentMethodRequest;
import com.stripe.proto.api.sdk.ConfirmSetupIntentRequest;
import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.proto.api.sdk.CreateSetupIntentOptions;
import com.stripe.proto.api.sdk.CreateSetupIntentRequest;
import com.stripe.proto.api.sdk.OfflineSetupIntentDetails;
import com.stripe.proto.model.rest.AllowRedisplay;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.internal.common.extensions.OfflineBehaviorExtensionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultSetupIntentJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016JH\u0010\u000f\u001a\u00020\u00102\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u001c\u0010\u001c\u001a\u00020\u001d2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;", "setUpIntentRestApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;", "(Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;)V", "cancelConfirmSetupIntent", "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;", "cancelSetupIntent", "Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;", OfflineStorageConstantsKt.ID, "", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "cancelSetupIntentPaymentMethod", "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;", "collectSetupIntentPaymentMethod", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;", "enableCustomerCancellation", "", "manualEntry", "offlineDetails", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "offlineBehavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "allowRedisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "setupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "confirmSetupIntent", "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;", "createSetupIntent", "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultSetupIntentJackRabbitApiFactory implements SetupIntentJackRabbitApiFactory {
    private final SetupIntentRestApiFactory setUpIntentRestApiFactory;

    public DefaultSetupIntentJackRabbitApiFactory(SetupIntentRestApiFactory setUpIntentRestApiFactory) {
        Intrinsics.checkNotNullParameter(setUpIntentRestApiFactory, "setUpIntentRestApiFactory");
        this.setUpIntentRestApiFactory = setUpIntentRestApiFactory;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CreateSetupIntentRequest createSetupIntent(SetupIntentParameters params, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        return new CreateSetupIntentRequest(this.setUpIntentRestApiFactory.createSetupIntent(params), new CreateSetupIntentOptions(OfflineBehaviorExtensionsKt.toOfflineBehaviorProto(createConfiguration.getOfflineBehavior()), null, 2, 0 == true ? 1 : 0), null, 4, null);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CollectSetupIntentPaymentMethodRequest collectSetupIntentPaymentMethod(String id, boolean enableCustomerCancellation, boolean manualEntry, OfflineSetupIntentDetails offlineDetails, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, AllowRedisplay allowRedisplay, SetupIntent setupIntent) {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        if (id == null) {
            id = "";
        }
        return new CollectSetupIntentPaymentMethodRequest(id, manualEntry, enableCustomerCancellation, offlineBehavior, offlineDetails, setupIntent, allowRedisplay, null, 128, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CancelSetupIntentPaymentMethodRequest cancelSetupIntentPaymentMethod() {
        return new CancelSetupIntentPaymentMethodRequest(null, 1, 0 == true ? 1 : 0);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public ConfirmSetupIntentRequest confirmSetupIntent(String id, OfflineSetupIntentDetails offlineDetails) {
        if (id == null) {
            id = "";
        }
        return new ConfirmSetupIntentRequest(id, null, offlineDetails, null, 10, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CancelSetupIntentRequest cancelSetupIntent(String id, SetupIntentCancellationParameters params) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(params, "params");
        return new CancelSetupIntentRequest(this.setUpIntentRestApiFactory.cancelSetupIntent(id, params), null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CancelConfirmSetupIntentRequest cancelConfirmSetupIntent() {
        return new CancelConfirmSetupIntentRequest(null, 1, 0 == true ? 1 : 0);
    }
}
