package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzje implements Runnable {
    private final /* synthetic */ zzpm zza;
    private final /* synthetic */ zzp zzb;
    private final /* synthetic */ zzig zzc;

    zzje(zzig zzigVar, zzpm zzpmVar, zzp zzpVar) {
        this.zza = zzpmVar;
        this.zzb = zzpVar;
        this.zzc = zzigVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzs();
        if (this.zza.zza() == null) {
            this.zzc.zza.zza(this.zza.zza, this.zzb);
        } else {
            this.zzc.zza.zza(this.zza, this.zzb);
        }
    }
}
