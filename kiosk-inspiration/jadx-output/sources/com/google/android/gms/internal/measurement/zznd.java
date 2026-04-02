package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class zznd extends IllegalArgumentException {
    zznd(int i, int i2) {
        super("Unpaired surrogate at index " + i + " of " + i2);
    }
}
