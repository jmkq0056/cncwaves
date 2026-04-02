package com.stripe.hardware;

import com.stripe.hardware.ReaderConfiguration;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderConfiguration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a+\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"domesticDebitPriorityOverride", "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "domesticDebitAids", "", "", "isOffline", "", "(Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Ljava/lang/Boolean;)Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ReaderConfigurationKt {
    public static final ReaderConfiguration.DomesticDebitPriority domesticDebitPriorityOverride(ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, List<String> domesticDebitAids, Boolean bool) {
        Intrinsics.checkNotNullParameter(domesticDebitAids, "domesticDebitAids");
        if (domesticDebitAids.isEmpty()) {
            return null;
        }
        return Intrinsics.areEqual((Object) bool, (Object) true) ? ReaderConfiguration.DomesticDebitPriority.OFF : domesticDebitPriority;
    }
}
