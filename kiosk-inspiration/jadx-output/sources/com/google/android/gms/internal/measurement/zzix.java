package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzix extends zziz {
    private int zza = 0;
    private final int zzb;
    private final /* synthetic */ zziy zzc;

    @Override // com.google.android.gms.internal.measurement.zzje
    public final byte zza() {
        int i = this.zza;
        if (i >= this.zzb) {
            throw new NoSuchElementException();
        }
        this.zza = i + 1;
        return this.zzc.zzb(i);
    }

    zzix(zziy zziyVar) {
        this.zzc = zziyVar;
        this.zzb = zziyVar.zzb();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb;
    }
}
