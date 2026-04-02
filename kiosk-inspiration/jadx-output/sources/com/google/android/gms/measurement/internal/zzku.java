package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzku extends zzbb {
    private final /* synthetic */ zzju zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzku(zzju zzjuVar, zzjh zzjhVar) {
        super(zzjhVar);
        this.zza = zzjuVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzbb
    public final void zzb() {
        if (this.zza.zzu.zzaj()) {
            this.zza.zzr.zza(2000L);
        }
    }
}
