package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjc implements Runnable {
    private final /* synthetic */ zzbl zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzig zzc;

    zzjc(zzig zzigVar, zzbl zzblVar, String str) {
        this.zza = zzblVar;
        this.zzb = str;
        this.zzc = zzigVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzs();
        this.zzc.zza.zza(this.zza, this.zzb);
    }
}
