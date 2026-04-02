package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzir implements Runnable {
    private final /* synthetic */ zzag zza;
    private final /* synthetic */ zzig zzb;

    zzir(zzig zzigVar, zzag zzagVar) {
        this.zza = zzagVar;
        this.zzb = zzigVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzs();
        if (this.zza.zzc.zza() == null) {
            this.zzb.zza.zza(this.zza);
        } else {
            this.zzb.zza.zzb(this.zza);
        }
    }
}
