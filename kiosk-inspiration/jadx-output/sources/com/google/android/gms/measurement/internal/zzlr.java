package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlr implements Runnable {
    private final URL zza;
    private final byte[] zzb;
    private final zzlo zzc;
    private final String zzd;
    private final Map<String, String> zze;
    private final /* synthetic */ zzlp zzf;

    public zzlr(zzlp zzlpVar, String str, URL url, byte[] bArr, Map<String, String> map, zzlo zzloVar) {
        this.zzf = zzlpVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzloVar);
        this.zza = url;
        this.zzb = bArr;
        this.zzc = zzloVar;
        this.zzd = str;
        this.zze = map;
    }

    private final void zza(final int i, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.zzf.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlq
            @Override // java.lang.Runnable
            public final void run() {
                zzlr zzlrVar = this.zza;
                zzlrVar.zzc.zza(zzlrVar.zzd, i, exc, bArr, map);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlr.run():void");
    }
}
