package com.stripe.stripeterminal.internal.common.makers;

import androidx.core.app.NotificationCompat;
import com.stripe.stripeterminal.external.models.ReaderEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderEventMaker.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/ReaderEventMaker;", "", "()V", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderEventMaker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: ReaderEventMaker.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/ReaderEventMaker$Companion;", "", "()V", "fromCoreObject", "Lcom/stripe/stripeterminal/external/models/ReaderEvent;", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/hardware/status/ReaderEvent;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ReaderEvent fromCoreObject(com.stripe.hardware.status.ReaderEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            try {
                return ReaderEvent.valueOf(event.name());
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }
}
