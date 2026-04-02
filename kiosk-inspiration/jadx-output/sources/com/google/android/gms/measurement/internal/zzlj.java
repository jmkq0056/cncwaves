package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlj implements Runnable {
    private final /* synthetic */ zzjj zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzju zzd;

    zzlj(zzju zzjuVar, zzjj zzjjVar, long j, boolean z) {
        this.zza = zzjjVar;
        this.zzb = j;
        this.zzc = z;
        this.zzd = zzjuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza(this.zza);
        zzju.zza(this.zzd, this.zza, this.zzb, true, this.zzc);
    }
}
