package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzma {
    private static final zzma zza = new zzma();
    private final ConcurrentMap<Class<?>, zzme<?>> zzc = new ConcurrentHashMap();
    private final zzmh zzb = new zzla();

    public static zzma zza() {
        return zza;
    }

    public final <T> zzme<T> zza(Class<T> cls) {
        zzkj.zza(cls, "messageType");
        zzme<T> zzmeVarZza = (zzme) this.zzc.get(cls);
        if (zzmeVarZza == null) {
            zzmeVarZza = this.zzb.zza(cls);
            zzkj.zza(cls, "messageType");
            zzkj.zza(zzmeVarZza, "schema");
            zzme<T> zzmeVar = (zzme) this.zzc.putIfAbsent(cls, zzmeVarZza);
            if (zzmeVar != null) {
                return zzmeVar;
            }
        }
        return zzmeVarZza;
    }

    public final <T> zzme<T> zza(T t) {
        return zza((Class) t.getClass());
    }

    private zzma() {
    }
}
