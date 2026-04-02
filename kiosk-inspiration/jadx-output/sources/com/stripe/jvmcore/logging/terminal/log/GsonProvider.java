package com.stripe.jvmcore.logging.terminal.log;

import com.google.gson.Gson;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: GsonProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/GsonProvider;", "", "()V", "instance", "Lcom/google/gson/Gson;", "getInstance", "()Lcom/google/gson/Gson;", "instance$delegate", "Lkotlin/Lazy;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GsonProvider {
    public static final GsonProvider INSTANCE = new GsonProvider();

    /* JADX INFO: renamed from: instance$delegate, reason: from kotlin metadata */
    private static final Lazy instance = LazyKt.lazy(new Function0<Gson>() { // from class: com.stripe.jvmcore.logging.terminal.log.GsonProvider$instance$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Gson invoke() {
            return new Gson();
        }
    });

    private GsonProvider() {
    }

    public final Gson getInstance() {
        return (Gson) instance.getValue();
    }
}
