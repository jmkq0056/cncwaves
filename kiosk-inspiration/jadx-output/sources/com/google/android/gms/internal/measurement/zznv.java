package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zznv implements Supplier<zzny> {
    private static zznv zza = new zznv();
    private final Supplier<zzny> zzb = Suppliers.ofInstance(new zznx());

    @SideEffectFree
    public static long zza() {
        return ((zzny) zza.get()).zza();
    }

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ zzny get() {
        return this.zzb.get();
    }
}
