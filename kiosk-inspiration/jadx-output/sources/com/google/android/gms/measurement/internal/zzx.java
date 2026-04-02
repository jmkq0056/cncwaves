package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzx extends zzot {
    private String zza;
    private Set<Integer> zzb;
    private Map<Integer, zzz> zzc;
    private Long zzd;
    private Long zze;

    private final zzz zza(Integer num) {
        if (this.zzc.containsKey(num)) {
            return this.zzc.get(num);
        }
        zzz zzzVar = new zzz(this, this.zza);
        this.zzc.put(num, zzzVar);
        return zzzVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzot
    protected final boolean zzc() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:206:0x0631, code lost:
    
        r8 = zzj().zzr();
        r10 = com.google.android.gms.measurement.internal.zzgo.zza(r30.zza);
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0643, code lost:
    
        if (r9.zzi() == false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0645, code lost:
    
        r9 = java.lang.Integer.valueOf(r9.zza());
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x064e, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x064f, code lost:
    
        r8.zza("Invalid property filter ID. appId, id", r10, java.lang.String.valueOf(r9));
        r9 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0310 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final java.util.List<com.google.android.gms.internal.measurement.zzgf.zzd> zza(java.lang.String r31, java.util.List<com.google.android.gms.internal.measurement.zzgf.zzf> r32, java.util.List<com.google.android.gms.internal.measurement.zzgf.zzp> r33, java.lang.Long r34, java.lang.Long r35, boolean r36) {
        /*
            Method dump skipped, instruction units count: 1806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzx.zza(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long, boolean):java.util.List");
    }

    zzx(zzou zzouVar) {
        super(zzouVar);
    }

    private final boolean zza(int i, int i2) {
        zzz zzzVar = this.zzc.get(Integer.valueOf(i));
        if (zzzVar == null) {
            return false;
        }
        return zzzVar.zzd.get(i2);
    }
}
