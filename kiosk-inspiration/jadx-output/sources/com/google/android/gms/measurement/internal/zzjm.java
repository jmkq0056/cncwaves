package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzjm {
    UNINITIALIZED("uninitialized"),
    POLICY("eu_consent_policy"),
    DENIED("denied"),
    GRANTED("granted");

    private final String zzf;

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzf;
    }

    zzjm(String str) {
        this.zzf = str;
    }
}
