package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzom implements Supplier<zzol> {
    private static zzom zza = new zzom();
    private final Supplier<zzol> zzb = Suppliers.ofInstance(new zzoo());

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ zzol get() {
        return this.zzb.get();
    }

    @SideEffectFree
    public static boolean zza() {
        return ((zzol) zza.get()).zza();
    }
}
