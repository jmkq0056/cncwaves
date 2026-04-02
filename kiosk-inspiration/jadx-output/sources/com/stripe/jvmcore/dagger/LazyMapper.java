package com.stripe.jvmcore.dagger;

import com.google.firebase.analytics.FirebaseAnalytics;
import dagger.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LazyExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u0003B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\r\u0010\r\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\nR\u001b\u0010\b\u001a\u00028\u00018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/stripe/jvmcore/dagger/LazyMapper;", "T", "U", "Ldagger/Lazy;", FirebaseAnalytics.Param.SOURCE, "mapper", "Lkotlin/Function1;", "(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)V", "value", "getValue", "()Ljava/lang/Object;", "value$delegate", "Lkotlin/Lazy;", "get", "dagger"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class LazyMapper<T, U> implements Lazy<U> {

    /* JADX INFO: renamed from: value$delegate, reason: from kotlin metadata */
    private final kotlin.Lazy value;

    public LazyMapper(final Lazy<T> source, final Function1<? super T, ? extends U> mapper) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        this.value = LazyKt.lazy(new Function0<U>() { // from class: com.stripe.jvmcore.dagger.LazyMapper$value$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // kotlin.jvm.functions.Function0
            public final U invoke() {
                return mapper.invoke((T) source.get());
            }
        });
    }

    public final U getValue() {
        return (U) this.value.getValue();
    }

    @Override // dagger.Lazy
    public U get() {
        return getValue();
    }
}
