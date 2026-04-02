package com.stripe.stripeterminal.external.callable;

import androidx.core.app.NotificationCompat;
import com.stripe.stripeterminal.external.models.ReaderEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderListenable.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u0082\u0001\u0002\u0006\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/callable/ReaderListenable;", "", "onReportReaderEvent", "", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/stripeterminal/external/models/ReaderEvent;", "Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;", "Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderListenable {
    default void onReportReaderEvent(ReaderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }
}
