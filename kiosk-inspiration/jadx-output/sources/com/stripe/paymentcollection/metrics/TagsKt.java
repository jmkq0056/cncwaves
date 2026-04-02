package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a:\u0010\u0000\u001a\u00020\u0001\"\u0010\b\u0000\u0010\u0002\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0006\u001a\u0004\u0018\u0001H\u0002H\u0086\b¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"addEnumTag", "", "T", "", "", "", "tag", "(Ljava/util/Map;Ljava/lang/Enum;)V", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class TagsKt {
    public static final /* synthetic */ <T extends Enum<T>> void addEnumTag(Map<String, String> map, T t) {
        String simpleName;
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (t != null) {
            Intrinsics.reifiedOperationMarker(4, "T");
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(Enum.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                Intrinsics.reifiedOperationMarker(4, "T");
                simpleName = Reflection.getOrCreateKotlinClass(Enum.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            map.put(simpleName, t.name());
        }
    }
}
