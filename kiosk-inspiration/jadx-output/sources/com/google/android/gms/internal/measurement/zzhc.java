package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.Cursor;
import android.os.RemoteException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhc implements zzhe {
    @Override // com.google.android.gms.internal.measurement.zzhe
    public final String zza(ContentResolver contentResolver, String str) throws zzhd {
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(zzgw.zza);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                throw new zzhd("Unable to acquire ContentProviderClient");
            }
            try {
                Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(zzgw.zza, null, null, new String[]{str}, null);
                try {
                    if (cursorQuery == null) {
                        throw new zzhd("ContentProvider query returned null cursor");
                    }
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                        return null;
                    }
                    String string = cursorQuery.getString(1);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                    return string;
                } finally {
                }
            } catch (RemoteException e) {
                throw new zzhd("ContentProvider query failed", e);
            }
        } catch (Throwable th) {
            contentProviderClientAcquireUnstableContentProviderClient.release();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhe
    public final <T extends Map<String, String>> T zza(ContentResolver contentResolver, String[] strArr, zzhb<T> zzhbVar) throws zzhd {
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(zzgw.zzb);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                throw new zzhd("Unable to acquire ContentProviderClient");
            }
            try {
                Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(zzgw.zzb, null, null, strArr, null);
                try {
                    if (cursorQuery == null) {
                        throw new zzhd("ContentProvider query returned null cursor");
                    }
                    T t = (T) zzhbVar.zza(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        t.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    }
                    if (!cursorQuery.isAfterLast()) {
                        throw new zzhd("Cursor read incomplete (ContentProvider dead?)");
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                    return t;
                } finally {
                }
            } catch (RemoteException e) {
                throw new zzhd("ContentProvider query failed", e);
            }
        } catch (Throwable th) {
            contentProviderClientAcquireUnstableContentProviderClient.release();
            throw th;
        }
    }
}
