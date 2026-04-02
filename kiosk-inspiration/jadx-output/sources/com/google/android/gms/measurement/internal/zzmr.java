package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmr extends zzge {
    private final /* synthetic */ AtomicReference zza;

    zzmr(zzme zzmeVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
    }

    @Override // com.google.android.gms.measurement.internal.zzgf
    public final void zza(zzor zzorVar) {
        synchronized (this.zza) {
            this.zza.set(zzorVar);
            this.zza.notifyAll();
        }
    }
}
