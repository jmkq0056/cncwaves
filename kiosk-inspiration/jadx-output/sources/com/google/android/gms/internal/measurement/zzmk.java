package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzmk extends zzmp {
    private final /* synthetic */ zzmj zza;

    @Override // com.google.android.gms.internal.measurement.zzmp, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzml(this.zza);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzmk(zzmj zzmjVar) {
        super(zzmjVar);
        this.zza = zzmjVar;
    }
}
