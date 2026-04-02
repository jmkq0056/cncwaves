package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zznx implements zzny {
    private static final zzhx<Long> zza;

    @Override // com.google.android.gms.internal.measurement.zzny
    public final long zza() {
        return zza.zza().longValue();
    }

    static {
        zzif zzifVarZza = new zzif(zzhu.zza("com.google.android.gms.measurement")).zzb().zza();
        zzifVarZza.zza("measurement.client.consent_state_v1", true);
        zzifVarZza.zza("measurement.client.3p_consent_state_v1", true);
        zzifVarZza.zza("measurement.service.consent_state_v1_W36", true);
        zza = zzifVarZza.zza("measurement.service.storage_consent_support_version", 203600L);
    }
}
