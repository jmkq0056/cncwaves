package com.stripe.stripeterminal.internal.common.extensions;

import androidx.core.app.NotificationCompat;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.api.ApiError;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.PaymentMethodOptions;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationReason;
import com.stripe.stripeterminal.external.models.SetupIntentNextAction;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import com.stripe.stripeterminal.external.models.SetupIntentStatus;
import com.stripe.stripeterminal.external.models.SetupIntentUsage;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SetupIntentExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0098\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u001f\u001a\u00020 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\b\b\u0002\u0010#\u001a\u00020\u00192\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%¨\u0006&"}, d2 = {"copyWithVars", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", OfflineStorageConstantsKt.ID, "", "customerId", "description", "lastSetupError", "Lcom/stripe/stripeterminal/external/api/ApiError;", "metadata", "", "nextAction", "Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;", "paymentMethodId", "paymentMethodTypes", "", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;", "usage", "Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;", "applicationId", "cancellationReason", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;", "created", "", "isLiveMode", "", "mandateId", "onBehalfOfId", "paymentMethodOptions", "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;", "singleUseMandateId", "offlineBehavior", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "offlineDetails", "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "collectedOffline", "paymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class SetupIntentExtensionsKt {
    public static /* synthetic */ SetupIntent copyWithVars$default(SetupIntent setupIntent, String str, String str2, String str3, ApiError apiError, Map map, SetupIntentNextAction setupIntentNextAction, String str4, List list, SetupIntentStatus setupIntentStatus, SetupIntentUsage setupIntentUsage, String str5, SetupIntentCancellationReason setupIntentCancellationReason, long j, boolean z, String str6, String str7, PaymentMethodOptions paymentMethodOptions, String str8, OfflineBehavior offlineBehavior, SetupIntentOfflineDetails setupIntentOfflineDetails, boolean z2, PaymentMethodData paymentMethodData, int i, Object obj) {
        String id = (i & 1) != 0 ? setupIntent.getId() : str;
        return copyWithVars(setupIntent, id, (i & 2) != 0 ? setupIntent.getCustomerId() : str2, (i & 4) != 0 ? setupIntent.getDescription() : str3, (i & 8) != 0 ? setupIntent.getLastSetupError() : apiError, (i & 16) != 0 ? setupIntent.getMetadata() : map, (i & 32) != 0 ? setupIntent.getNextAction() : setupIntentNextAction, (i & 64) != 0 ? setupIntent.getPaymentMethodId() : str4, (i & 128) != 0 ? setupIntent.getPaymentMethodTypes() : list, (i & 256) != 0 ? setupIntent.getStatus() : setupIntentStatus, (i & 512) != 0 ? setupIntent.getUsage() : setupIntentUsage, (i & 1024) != 0 ? setupIntent.getApplicationId() : str5, (i & 2048) != 0 ? setupIntent.getCancellationReason() : setupIntentCancellationReason, (i & 4096) != 0 ? setupIntent.getCreated() : j, (i & 8192) != 0 ? setupIntent.isLiveMode() : z, (i & 16384) != 0 ? setupIntent.getMandateId() : str6, (i & 32768) != 0 ? setupIntent.getOnBehalfOfId() : str7, (i & 65536) != 0 ? setupIntent.getPaymentMethodOptions() : paymentMethodOptions, (i & 131072) != 0 ? setupIntent.getSingleUseMandateId() : str8, (i & 262144) != 0 ? setupIntent.getOfflineBehavior() : offlineBehavior, (i & 524288) != 0 ? setupIntent.getOfflineDetails() : setupIntentOfflineDetails, (i & 1048576) != 0 ? setupIntent.getCollectedOffline() : z2, (i & 2097152) != 0 ? setupIntent.getPaymentMethodData() : paymentMethodData);
    }

    public static final SetupIntent copyWithVars(SetupIntent setupIntent, String str, String str2, String str3, ApiError apiError, Map<String, String> metadata, SetupIntentNextAction setupIntentNextAction, String str4, List<String> paymentMethodTypes, SetupIntentStatus setupIntentStatus, SetupIntentUsage setupIntentUsage, String str5, SetupIntentCancellationReason setupIntentCancellationReason, long j, boolean z, String str6, String str7, PaymentMethodOptions paymentMethodOptions, String str8, OfflineBehavior offlineBehavior, SetupIntentOfflineDetails setupIntentOfflineDetails, boolean z2, PaymentMethodData paymentMethodData) {
        Intrinsics.checkNotNullParameter(setupIntent, "<this>");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
        Intrinsics.checkNotNullParameter(offlineBehavior, "offlineBehavior");
        SetupIntent setupIntentCopy$default = SetupIntent.copy$default(setupIntent, str, null, str2, str3, apiError, metadata, setupIntentNextAction, str4, paymentMethodTypes, setupIntentStatus, setupIntentUsage, str5, setupIntentCancellationReason, j, null, z, str6, str7, paymentMethodOptions, str8, 16386, null);
        setupIntentCopy$default.setOfflineBehavior(offlineBehavior);
        setupIntentCopy$default.setOfflineDetails(setupIntentOfflineDetails);
        setupIntentCopy$default.setCollectedOffline(z2);
        setupIntentCopy$default.setPaymentMethodData(paymentMethodData);
        setupIntentCopy$default.setStatus(setupIntentStatus);
        return setupIntentCopy$default;
    }
}
