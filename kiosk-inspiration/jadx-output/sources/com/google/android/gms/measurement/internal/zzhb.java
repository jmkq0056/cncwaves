package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhb implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzgy zzb;

    zzhb(zzgy zzgyVar, boolean z) {
        this.zza = z;
        this.zzb = zzgyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zza(this.zza);
    }
}
