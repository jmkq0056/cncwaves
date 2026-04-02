package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzls<T> implements zzme<T> {
    private final zzlm zza;
    private final zzmu<?, ?> zzb;
    private final boolean zzc;
    private final zzjv<?> zzd;

    @Override // com.google.android.gms.internal.measurement.zzme
    public final int zza(T t) {
        zzmu<?, ?> zzmuVar = this.zzb;
        int iZzb = zzmuVar.zzb(zzmuVar.zzd(t));
        return this.zzc ? iZzb + this.zzd.zza(t).zza() : iZzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final int zzb(T t) {
        int iHashCode = this.zzb.zzd(t).hashCode();
        return this.zzc ? (iHashCode * 53) + this.zzd.zza(t).hashCode() : iHashCode;
    }

    static <T> zzls<T> zza(zzmu<?, ?> zzmuVar, zzjv<?> zzjvVar, zzlm zzlmVar) {
        return new zzls<>(zzmuVar, zzjvVar, zzlmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final T zza() {
        zzlm zzlmVar = this.zza;
        if (zzlmVar instanceof zzkg) {
            return (T) ((zzkg) zzlmVar).zzci();
        }
        return (T) zzlmVar.zzcm().zzak();
    }

    private zzls(zzmu<?, ?> zzmuVar, zzjv<?> zzjvVar, zzlm zzlmVar) {
        this.zzb = zzmuVar;
        this.zzc = zzjvVar.zza(zzlmVar);
        this.zzd = zzjvVar;
        this.zza = zzlmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final void zzd(T t) {
        this.zzb.zzf(t);
        this.zzd.zzc(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final void zza(T t, T t2) {
        zzmg.zza(this.zzb, t, t2);
        if (this.zzc) {
            zzmg.zza(this.zzd, t, t2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[LOOP:0: B:46:0x000c->B:54:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzme
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r12, com.google.android.gms.internal.measurement.zzmf r13, com.google.android.gms.internal.measurement.zzjt r14) throws java.io.IOException {
        /*
            r11 = this;
            com.google.android.gms.internal.measurement.zzmu<?, ?> r0 = r11.zzb
            com.google.android.gms.internal.measurement.zzjv<?> r1 = r11.zzd
            java.lang.Object r2 = r0.zzc(r12)
            com.google.android.gms.internal.measurement.zzjw r3 = r1.zzb(r12)
        Lc:
            int r4 = r13.zzc()     // Catch: java.lang.Throwable -> L90
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != r5) goto L19
            r0.zzb(r12, r2)
            return
        L19:
            int r4 = r13.zzd()     // Catch: java.lang.Throwable -> L90
            r6 = 11
            r7 = 0
            if (r4 == r6) goto L3f
            r5 = r4 & 7
            r6 = 2
            if (r5 != r6) goto L3a
            com.google.android.gms.internal.measurement.zzlm r5 = r11.zza     // Catch: java.lang.Throwable -> L90
            int r4 = r4 >>> 3
            java.lang.Object r4 = r1.zza(r14, r5, r4)     // Catch: java.lang.Throwable -> L90
            if (r4 == 0) goto L35
            r1.zza(r13, r4, r14, r3)     // Catch: java.lang.Throwable -> L90
            goto L84
        L35:
            boolean r4 = r0.zza(r2, r13, r7)     // Catch: java.lang.Throwable -> L90
            goto L85
        L3a:
            boolean r4 = r13.zzt()     // Catch: java.lang.Throwable -> L90
            goto L85
        L3f:
            r4 = 0
            r6 = r4
        L41:
            int r8 = r13.zzc()     // Catch: java.lang.Throwable -> L90
            r9 = 12
            if (r8 == r5) goto L73
            int r8 = r13.zzd()     // Catch: java.lang.Throwable -> L90
            r10 = 16
            if (r8 != r10) goto L5c
            int r7 = r13.zzj()     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.zzlm r4 = r11.zza     // Catch: java.lang.Throwable -> L90
            java.lang.Object r4 = r1.zza(r14, r4, r7)     // Catch: java.lang.Throwable -> L90
            goto L41
        L5c:
            r10 = 26
            if (r8 != r10) goto L6b
            if (r4 == 0) goto L66
            r1.zza(r13, r4, r14, r3)     // Catch: java.lang.Throwable -> L90
            goto L41
        L66:
            com.google.android.gms.internal.measurement.zziy r6 = r13.zzp()     // Catch: java.lang.Throwable -> L90
            goto L41
        L6b:
            if (r8 == r9) goto L73
            boolean r8 = r13.zzt()     // Catch: java.lang.Throwable -> L90
            if (r8 != 0) goto L41
        L73:
            int r5 = r13.zzd()     // Catch: java.lang.Throwable -> L90
            if (r5 != r9) goto L8b
            if (r6 == 0) goto L84
            if (r4 == 0) goto L81
            r1.zza(r6, r4, r14, r3)     // Catch: java.lang.Throwable -> L90
            goto L84
        L81:
            r0.zza(r2, r7, r6)     // Catch: java.lang.Throwable -> L90
        L84:
            r4 = 1
        L85:
            if (r4 != 0) goto Lc
            r0.zzb(r12, r2)
            return
        L8b:
            com.google.android.gms.internal.measurement.zzkp r13 = com.google.android.gms.internal.measurement.zzkp.zzb()     // Catch: java.lang.Throwable -> L90
            throw r13     // Catch: java.lang.Throwable -> L90
        L90:
            r13 = move-exception
            r0.zzb(r12, r2)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzls.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzmf, com.google.android.gms.internal.measurement.zzjt):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a1, code lost:
    
        if (r12 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a3, code lost:
    
        r6.zza((r11 << 3) | 2, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a9, code lost:
    
        r12 = r13;
        r11 = r3;
        r13 = r5;
        r14 = r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a1 A[EDGE_INSN: B:58:0x00a1->B:35:0x00a1 BREAK  A[LOOP:1: B:18:0x0059->B:63:0x0059], SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzme
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.measurement.zzit r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.measurement.zzkg r0 = (com.google.android.gms.internal.measurement.zzkg) r0
            com.google.android.gms.internal.measurement.zzmx r1 = r0.zzb
            com.google.android.gms.internal.measurement.zzmx r2 = com.google.android.gms.internal.measurement.zzmx.zzc()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.measurement.zzmx r1 = com.google.android.gms.internal.measurement.zzmx.zzd()
            r0.zzb = r1
        L11:
            r6 = r1
            com.google.android.gms.internal.measurement.zzkg$zzb r10 = (com.google.android.gms.internal.measurement.zzkg.zzb) r10
            r10.zza()
            r10 = 0
            r0 = r10
        L19:
            if (r12 >= r13) goto Laf
            int r4 = com.google.android.gms.internal.measurement.zziu.zzc(r11, r12, r14)
            int r2 = r14.zza
            r12 = 11
            r1 = 2
            if (r2 == r12) goto L54
            r12 = r2 & 7
            if (r12 != r1) goto L4c
            com.google.android.gms.internal.measurement.zzjv<?> r12 = r9.zzd
            com.google.android.gms.internal.measurement.zzjt r0 = r14.zzd
            com.google.android.gms.internal.measurement.zzlm r1 = r9.zza
            int r3 = r2 >>> 3
            java.lang.Object r12 = r12.zza(r0, r1, r3)
            r0 = r12
            com.google.android.gms.internal.measurement.zzkg$zzd r0 = (com.google.android.gms.internal.measurement.zzkg.zzd) r0
            if (r0 != 0) goto L43
            r3 = r11
            r5 = r13
            r7 = r14
            int r12 = com.google.android.gms.internal.measurement.zziu.zza(r2, r3, r4, r5, r6, r7)
            goto L19
        L43:
            com.google.android.gms.internal.measurement.zzma.zza()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L4c:
            r3 = r11
            r5 = r13
            r7 = r14
            int r12 = com.google.android.gms.internal.measurement.zziu.zza(r2, r3, r4, r5, r7)
            goto L19
        L54:
            r3 = r11
            r5 = r13
            r7 = r14
            r11 = 0
            r12 = r10
        L59:
            if (r4 >= r5) goto La0
            int r13 = com.google.android.gms.internal.measurement.zziu.zzc(r3, r4, r7)
            int r14 = r7.zza
            int r2 = r14 >>> 3
            r4 = r14 & 7
            if (r2 == r1) goto L81
            r8 = 3
            if (r2 == r8) goto L6b
            goto L97
        L6b:
            if (r0 != 0) goto L78
            if (r4 != r1) goto L97
            int r4 = com.google.android.gms.internal.measurement.zziu.zza(r3, r13, r7)
            java.lang.Object r12 = r7.zzc
            com.google.android.gms.internal.measurement.zziy r12 = (com.google.android.gms.internal.measurement.zziy) r12
            goto L59
        L78:
            com.google.android.gms.internal.measurement.zzma.zza()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L81:
            if (r4 != 0) goto L97
            int r4 = com.google.android.gms.internal.measurement.zziu.zzc(r3, r13, r7)
            int r11 = r7.zza
            com.google.android.gms.internal.measurement.zzjv<?> r13 = r9.zzd
            com.google.android.gms.internal.measurement.zzjt r14 = r7.zzd
            com.google.android.gms.internal.measurement.zzlm r0 = r9.zza
            java.lang.Object r13 = r13.zza(r14, r0, r11)
            r0 = r13
            com.google.android.gms.internal.measurement.zzkg$zzd r0 = (com.google.android.gms.internal.measurement.zzkg.zzd) r0
            goto L59
        L97:
            r2 = 12
            if (r14 == r2) goto La1
            int r4 = com.google.android.gms.internal.measurement.zziu.zza(r14, r3, r13, r5, r7)
            goto L59
        La0:
            r13 = r4
        La1:
            if (r12 == 0) goto La9
            int r11 = r11 << 3
            r11 = r11 | r1
            r6.zza(r11, r12)
        La9:
            r12 = r13
            r11 = r3
            r13 = r5
            r14 = r7
            goto L19
        Laf:
            r5 = r13
            if (r12 != r5) goto Lb3
            return
        Lb3:
            com.google.android.gms.internal.measurement.zzkp r10 = com.google.android.gms.internal.measurement.zzkp.zzg()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzls.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzit):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final void zza(T t, zznl zznlVar) throws IOException {
        Iterator itZzd = this.zzd.zza(t).zzd();
        while (itZzd.hasNext()) {
            Map.Entry entry = (Map.Entry) itZzd.next();
            zzjy zzjyVar = (zzjy) entry.getKey();
            if (zzjyVar.zzc() != zznj.MESSAGE || zzjyVar.zze() || zzjyVar.zzd()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zzkt) {
                zznlVar.zza(zzjyVar.zza(), (Object) ((zzkt) entry).zza().zzb());
            } else {
                zznlVar.zza(zzjyVar.zza(), entry.getValue());
            }
        }
        zzmu<?, ?> zzmuVar = this.zzb;
        zzmuVar.zza(zzmuVar.zzd(t), zznlVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final boolean zzb(T t, T t2) {
        if (!this.zzb.zzd(t).equals(this.zzb.zzd(t2))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zza(t).equals(this.zzd.zza(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final boolean zze(T t) {
        return this.zzd.zza(t).zzg();
    }
}
