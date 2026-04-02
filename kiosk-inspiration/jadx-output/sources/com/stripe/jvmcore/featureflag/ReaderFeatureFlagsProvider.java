package com.stripe.jvmcore.featureflag;

import com.stripe.proto.model.config.ReaderFeatureFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: ReaderFeatureFlagsProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J(\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u0002H\u00052\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0096\u0002¢\u0006\u0002\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/featureflag/ReaderFeatureFlagsProvider;", "", "getFeatureFlags", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "getValue", "T", "thisRef", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "featureflag"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderFeatureFlagsProvider {
    ReaderFeatureFlags getFeatureFlags();

    default <T> ReaderFeatureFlags getValue(T thisRef, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        return getFeatureFlags();
    }
}
