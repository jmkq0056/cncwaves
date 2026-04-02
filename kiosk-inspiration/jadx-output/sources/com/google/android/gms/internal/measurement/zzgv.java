package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgv {
    private static zzgy zza;

    public static synchronized zzgy zza() {
        if (zza == null) {
            zza(new zzgx());
        }
        return zza;
    }

    private static synchronized void zza(zzgy zzgyVar) {
        if (zza != null) {
            throw new IllegalStateException("init() already called");
        }
        zza = zzgyVar;
    }
}
