package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.stripeterminal.external.models.AmountDetails;
import com.stripe.stripeterminal.external.models.OfflineCardPresentDetails;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u001a\f\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0005\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\b\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\b\u001a>\u0010\n\u001a\u00020\u0005*\u00020\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u001a2\u0010\n\u001a\u00020\b*\u00020\u00132\b\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¨\u0006\u0014"}, d2 = {"entityId", "", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "hasOfflineId", "", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "offlineId", "requireOnlineId", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "requireOnlineOrOfflineId", "withOfflineDetails", "Lcom/stripe/proto/model/rest/PaymentIntent;", "storedAtMs", "", "requiresUpload", "cardPresentDetails", "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "amountDetails", "Lcom/stripe/stripeterminal/external/models/AmountDetails;", "Lcom/stripe/proto/model/rest/SetupIntent;", "common_publish"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class OfflineAdapterKt {
    public static final String offlineId(PaymentIntent paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentIntent, "<this>");
        OfflineDetails offlineDetails = paymentIntent.getOfflineDetails();
        if (offlineDetails != null) {
            return offlineDetails.getId();
        }
        return null;
    }

    public static final boolean hasOfflineId(PaymentIntent paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentIntent, "<this>");
        String strOfflineId = offlineId(paymentIntent);
        return !(strOfflineId == null || strOfflineId.length() == 0);
    }

    public static /* synthetic */ PaymentIntent withOfflineDetails$default(com.stripe.proto.model.rest.PaymentIntent paymentIntent, String str, long j, boolean z, OfflineCardPresentDetails offlineCardPresentDetails, AmountDetails amountDetails, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return withOfflineDetails(paymentIntent, str, j, z, (i & 8) != 0 ? null : offlineCardPresentDetails, (i & 16) != 0 ? null : amountDetails);
    }

    public static final PaymentIntent withOfflineDetails(com.stripe.proto.model.rest.PaymentIntent paymentIntent, String str, long j, boolean z, OfflineCardPresentDetails offlineCardPresentDetails, AmountDetails amountDetails) {
        Intrinsics.checkNotNullParameter(paymentIntent, "<this>");
        PaymentIntent sdkPaymentIntent = ProtoConverter.INSTANCE.toSdkPaymentIntent(paymentIntent);
        sdkPaymentIntent.setOfflineDetails(OfflineDetails.INSTANCE.make(str, j, offlineCardPresentDetails, amountDetails, z));
        return sdkPaymentIntent;
    }

    public static /* synthetic */ SetupIntent withOfflineDetails$default(com.stripe.proto.model.rest.SetupIntent setupIntent, String str, long j, boolean z, OfflineCardPresentDetails offlineCardPresentDetails, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i & 8) != 0) {
            offlineCardPresentDetails = null;
        }
        return withOfflineDetails(setupIntent, str, j, z2, offlineCardPresentDetails);
    }

    public static final SetupIntent withOfflineDetails(com.stripe.proto.model.rest.SetupIntent setupIntent, String str, long j, boolean z, OfflineCardPresentDetails offlineCardPresentDetails) {
        Intrinsics.checkNotNullParameter(setupIntent, "<this>");
        SetupIntent sdkSetupIntent = ProtoConverter.INSTANCE.toSdkSetupIntent(setupIntent);
        sdkSetupIntent.setOfflineDetails(SetupIntentOfflineDetails.INSTANCE.make(str, j, offlineCardPresentDetails, z));
        return sdkSetupIntent;
    }

    public static final String entityId(OfflineApiRequest offlineApiRequest) {
        Intrinsics.checkNotNullParameter(offlineApiRequest, "<this>");
        String str = offlineApiRequest.offline_id;
        if (str == null) {
            str = offlineApiRequest.stripe_entity_id;
            String str2 = str;
            if (str2 == null || str2.length() == 0) {
                str = null;
            }
        }
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    public static final String requireOnlineOrOfflineId(PaymentIntent paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentIntent, "<this>");
        String id = paymentIntent.getId();
        String str = id;
        String str2 = null;
        if (str == null || str.length() == 0) {
            id = null;
        }
        if (id != null) {
            return id;
        }
        String strOfflineId = offlineId(paymentIntent);
        String str3 = strOfflineId;
        if (str3 != null && str3.length() != 0) {
            str2 = strOfflineId;
        }
        if (str2 != null) {
            return str2;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Payment intent ID cannot be null.", null, null, 12, null);
    }

    public static final String requireOnlineId(PaymentIntent paymentIntent) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentIntent, "<this>");
        String id = paymentIntent.getId();
        String str = id;
        if (str == null || str.length() == 0) {
            id = null;
        }
        if (id != null) {
            return id;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, "Cannot perform operation on PaymentIntent with null ID. PaymentIntent must be forwarded before proceeding.", null, null, 12, null);
    }

    public static final String requireOnlineOrOfflineId(SetupIntent setupIntent) {
        Intrinsics.checkNotNullParameter(setupIntent, "<this>");
        String id = setupIntent.getId();
        String str = id;
        String str2 = null;
        if (str == null || str.length() == 0) {
            id = null;
        }
        if (id != null) {
            return id;
        }
        SetupIntentOfflineDetails offlineDetails = setupIntent.getOfflineDetails();
        String id2 = offlineDetails != null ? offlineDetails.getId() : null;
        String str3 = id2;
        if (str3 != null && str3.length() != 0) {
            str2 = id2;
        }
        if (str2 != null) {
            return str2;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "SetupIntent ID cannot be null.", null, null, 12, null);
    }

    public static final String requireOnlineId(SetupIntent setupIntent) throws TerminalException {
        Intrinsics.checkNotNullParameter(setupIntent, "<this>");
        String id = setupIntent.getId();
        String str = id;
        if (str == null || str.length() == 0) {
            id = null;
        }
        if (id != null) {
            return id;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, "Cannot perform operation on SetupIntent with null ID. SetupIntent must be forwarded before proceeding.", null, null, 12, null);
    }
}
