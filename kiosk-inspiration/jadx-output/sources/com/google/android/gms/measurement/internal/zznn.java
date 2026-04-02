package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznn implements Runnable {
    private final /* synthetic */ zznj zza;

    zznn(zznj zznjVar) {
        this.zza = zznjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzme.zza(this.zza.zza, new ComponentName(this.zza.zza.zza(), "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
