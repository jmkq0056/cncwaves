package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzpr implements Supplier<zzpu> {
    private static zzpr zza = new zzpr();
    private final Supplier<zzpu> zzb = Suppliers.ofInstance(new zzpt());

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ zzpu get() {
        return this.zzb.get();
    }

    @SideEffectFree
    public static boolean zza() {
        return ((zzpu) zza.get()).zza();
    }
}
