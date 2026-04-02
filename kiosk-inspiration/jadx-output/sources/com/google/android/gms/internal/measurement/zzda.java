package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzda {
    private static zzda zza = new zzcz();

    public static synchronized zzda zza() {
        return zza;
    }

    public abstract URLConnection zza(URL url, String str) throws IOException;
}
