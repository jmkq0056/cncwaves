package com.stripe.core.transaction;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.loggingmodels.ApplicationTrace;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: ReaderTrace.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/transaction/ReaderTrace;", "Lcom/stripe/loggingmodels/ApplicationTrace;", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, "(Ljava/lang/String;Ljava/lang/String;)V", "Companion", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderTrace extends ApplicationTrace {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public /* synthetic */ ReaderTrace(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    private ReaderTrace(String str, String str2) {
        super(str, str2, null, 4, null);
    }

    /* JADX INFO: compiled from: ReaderTrace.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/transaction/ReaderTrace$Companion;", "", "()V", "startDisplayCart", "Lcom/stripe/core/transaction/ReaderTrace;", "startInteracRefund", "startPaymentMethod", "startReusableCard", "startSetupIntent", "startSetupIntentPaymentMethod", "startTipSelection", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ReaderTrace startInteracRefund() {
            return new ReaderTrace("ReaderTrace", "startInteracRefund", null);
        }

        public final ReaderTrace startReusableCard() {
            return new ReaderTrace("ReaderTrace", "startReusableCard", null);
        }

        public final ReaderTrace startTipSelection() {
            return new ReaderTrace("ReaderTrace", "startTipSelection", null);
        }

        public final ReaderTrace startPaymentMethod() {
            return new ReaderTrace("ReaderTrace", "startPaymentMethod", null);
        }

        public final ReaderTrace startSetupIntentPaymentMethod() {
            return new ReaderTrace("ReaderTrace", "startSetupIntentPaymentMethod", null);
        }

        public final ReaderTrace startDisplayCart() {
            return new ReaderTrace("ReaderTrace", "startDisplayCart", null);
        }

        public final ReaderTrace startSetupIntent() {
            return new ReaderTrace("ReaderTrace", "startSetupIntent", null);
        }
    }
}
