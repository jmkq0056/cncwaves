package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zziy implements Runnable {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ zzig zzb;

    zziy(zzig zzigVar, zzp zzpVar) {
        this.zza = zzpVar;
        this.zzb = zzigVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzs();
        zzou zzouVar = this.zzb.zza;
        zzp zzpVar = this.zza;
        zzouVar.zzl().zzv();
        zzouVar.zzt();
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzouVar.zzg(zzpVar);
        zzouVar.zzf(zzpVar);
    }
}
