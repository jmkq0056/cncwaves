package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzma implements Runnable {
    private final /* synthetic */ zzlz zza;

    zzma(zzlz zzlzVar) {
        this.zza = zzlzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlz zzlzVar = this.zza;
        zzlzVar.zza = zzlzVar.zzh;
    }
}
