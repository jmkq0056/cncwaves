package com.stripe.jvmcore.terminal.requestfactories.setup;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.CancelSetupIntentRequest;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationReason;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultSetupIntentRestApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;", "()V", "cancelSetupIntent", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;", OfflineStorageConstantsKt.ID, "", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "createSetupIntent", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultSetupIntentRestApiFactory implements SetupIntentRestApiFactory {

    /* JADX INFO: compiled from: DefaultSetupIntentRestApiFactory.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SetupIntentCancellationReason.values().length];
            try {
                iArr[SetupIntentCancellationReason.DUPLICATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SetupIntentCancellationReason.REQUESTED_BY_CUSTOMER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SetupIntentCancellationReason.ABANDONED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory
    public CancelSetupIntentRequest cancelSetupIntent(String id, SetupIntentCancellationParameters params) {
        CancelSetupIntentRequest.Reason reason;
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(params, "params");
        SetupIntentCancellationReason reason2 = params.getReason();
        int i = reason2 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[reason2.ordinal()];
        if (i == -1) {
            reason = null;
        } else if (i == 1) {
            reason = CancelSetupIntentRequest.Reason.duplicate;
        } else if (i == 2) {
            reason = CancelSetupIntentRequest.Reason.requested_by_customer;
        } else if (i == 3) {
            reason = CancelSetupIntentRequest.Reason.abandoned;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return new CancelSetupIntentRequest(id, reason, null, 4, null);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory
    public CreateSetupIntentRequest createSetupIntent(SetupIntentParameters params) {
        Intrinsics.checkNotNullParameter(params, "params");
        String customer = params.getCustomer();
        String description = params.getDescription();
        Map<String, String> metadata = params.getMetadata();
        if (metadata == null) {
            metadata = MapsKt.emptyMap();
        }
        Map<String, String> map = metadata;
        List<PaymentMethodType> paymentMethodTypes = params.getPaymentMethodTypes();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(paymentMethodTypes, 10));
        Iterator<T> it = paymentMethodTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((PaymentMethodType) it.next()).getTypeName());
        }
        return new CreateSetupIntentRequest(null, customer, description, map, null, arrayList, params.getUsage(), null, params.getOnBehalfOf(), null, null, null, null, 7825, null);
    }
}
