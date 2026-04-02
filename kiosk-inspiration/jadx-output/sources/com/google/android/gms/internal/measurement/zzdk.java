package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzdk implements zzdf {
    @Override // com.google.android.gms.internal.measurement.zzdf
    public final Runnable zza(Runnable runnable) {
        return runnable;
    }

    @Override // com.google.android.gms.internal.measurement.zzdf
    public final <V> Callable<V> zza(Callable<V> callable) {
        return callable;
    }

    zzdk() {
    }
}
