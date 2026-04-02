package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
public interface zzhe {
    String zza(ContentResolver contentResolver, String str) throws zzhd;

    <T extends Map<String, String>> T zza(ContentResolver contentResolver, String[] strArr, zzhb<T> zzhbVar) throws zzhd;
}
