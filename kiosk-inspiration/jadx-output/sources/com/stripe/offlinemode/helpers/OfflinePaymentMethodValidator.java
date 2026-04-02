package com.stripe.offlinemode.helpers;

import com.stripe.hardware.emv.TlvMap;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.models.ReadMethod;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: OfflinePaymentMethodValidator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\bf\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J8\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;", "", "emitHealthMetrics", "", "error", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "validatePaymentMethod", "Lkotlin/Pair;", "Lcom/stripe/hardware/emv/TlvMap;", "", "paymentMethod", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "livemode", "", "intentCollectedOffline", "isSetupIntent", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflinePaymentMethodValidator {
    public static final String AID_MISSING_ERROR_MESSAGE = "Failed to retrieve application ID from card EMV data.";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String TVR_MISSING_ERROR_MESSAGE = "Failed to retrieve verification results from EMV data.";

    void emitHealthMetrics(TerminalException error);

    Pair<TlvMap, String> validatePaymentMethod(RequestedPaymentMethod paymentMethod, boolean livemode, boolean intentCollectedOffline, boolean isSetupIntent) throws TerminalException;

    /* JADX INFO: compiled from: OfflinePaymentMethodValidator.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;", "", "()V", "AID_MISSING_ERROR_MESSAGE", "", "MAGSTRIPE_READ_METHODS", "", "getMAGSTRIPE_READ_METHODS", "()Ljava/util/Set;", "TVR_MISSING_ERROR_MESSAGE", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String AID_MISSING_ERROR_MESSAGE = "Failed to retrieve application ID from card EMV data.";
        private static final Set<String> MAGSTRIPE_READ_METHODS;
        public static final String TVR_MISSING_ERROR_MESSAGE = "Failed to retrieve verification results from EMV data.";

        private Companion() {
        }

        public final Set<String> getMAGSTRIPE_READ_METHODS() {
            return MAGSTRIPE_READ_METHODS;
        }

        static {
            List listListOf = CollectionsKt.listOf((Object[]) new ReadMethod[]{ReadMethod.MAGNETIC_STRIPE_TRACK_2, ReadMethod.MAGNETIC_STRIPE_FALLBACK});
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listListOf, 10));
            Iterator it = listListOf.iterator();
            while (it.hasNext()) {
                arrayList.add(((ReadMethod) it.next()).getMethod());
            }
            MAGSTRIPE_READ_METHODS = CollectionsKt.toSet(arrayList);
        }
    }
}
