package com.google.android.gms.internal.measurement;

import android.os.Binder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzho {
    public static <V> V zza(zzhn<V> zzhnVar) {
        try {
            return zzhnVar.zza();
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return zzhnVar.zza();
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }
}
