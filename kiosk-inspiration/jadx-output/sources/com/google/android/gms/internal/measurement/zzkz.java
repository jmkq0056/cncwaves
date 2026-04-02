package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzkz implements zzkw {
    private static <E> zzkm<E> zzc(Object obj, long j) {
        return (zzkm) zzmz.zze(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final <L> List<L> zza(Object obj, long j) {
        zzkm zzkmVarZzc = zzc(obj, j);
        if (zzkmVarZzc.zzc()) {
            return zzkmVarZzc;
        }
        int size = zzkmVarZzc.size();
        zzkm zzkmVarZza = zzkmVarZzc.zza(size == 0 ? 10 : size << 1);
        zzmz.zza(obj, j, zzkmVarZza);
        return zzkmVarZza;
    }

    zzkz() {
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final void zzb(Object obj, long j) {
        zzc(obj, j).zzb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.measurement.zzkm] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.measurement.zzkm, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.measurement.zzkw
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzkm zzkmVarZzc = zzc(obj, j);
        ?? Zzc = zzc(obj2, j);
        int size = zzkmVarZzc.size();
        int size2 = Zzc.size();
        ?? r0 = zzkmVarZzc;
        r0 = zzkmVarZzc;
        if (size > 0 && size2 > 0) {
            boolean zZzc = zzkmVarZzc.zzc();
            ?? Zza = zzkmVarZzc;
            if (!zZzc) {
                Zza = zzkmVarZzc.zza(size2 + size);
            }
            Zza.addAll(Zzc);
            r0 = Zza;
        }
        if (size > 0) {
            Zzc = r0;
        }
        zzmz.zza(obj, j, (Object) Zzc);
    }
}
