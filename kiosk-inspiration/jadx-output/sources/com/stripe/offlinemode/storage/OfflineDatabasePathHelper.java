package com.stripe.offlinemode.storage;

import android.content.Context;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: OfflineDbPathHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\f"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineDatabasePathHelper;", "", "()V", "getDefaultDatabasePath", "Ljava/io/File;", "context", "Landroid/content/Context;", "getNoBackupPath", "migrateDatabase", "", "migrationPaths", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineDatabasePathHelper {
    public static final OfflineDatabasePathHelper INSTANCE = new OfflineDatabasePathHelper();

    private OfflineDatabasePathHelper() {
    }

    @JvmStatic
    public static final void migrateDatabase(Context context) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        OfflineDatabasePathHelper offlineDatabasePathHelper = INSTANCE;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (offlineDatabasePathHelper.getDefaultDatabasePath(context).exists()) {
                OfflineDbPathHelperKt.Logger.d("Migrating OfflineDatabase to the no-backup directory", new Pair[0]);
                for (Map.Entry<File, File> entry : offlineDatabasePathHelper.migrationPaths(context).entrySet()) {
                    File key = entry.getKey();
                    File value = entry.getValue();
                    if (key.exists()) {
                        if (value.exists()) {
                            OfflineDbPathHelperKt.Logger.w("Over-writing contents of " + value, new Pair[0]);
                        }
                        OfflineDbPathHelperKt.Logger.d(key.renameTo(value) ? "Migrated " + key + " to " + value : "Renaming " + key + " to " + value + " failed", new Pair[0]);
                    }
                }
            }
            objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            OfflineDbPathHelperKt.Logger.e("Unexpected error during offline db migration", thM820exceptionOrNullimpl, new Pair[0]);
        }
    }

    private final Map<File, File> migrationPaths(Context context) {
        File defaultDatabasePath = getDefaultDatabasePath(context);
        File noBackupPath = getNoBackupPath(context);
        String[] database_extra_files = OfflineDbPathHelperKt.getDATABASE_EXTRA_FILES();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(database_extra_files.length), 16));
        for (String str : database_extra_files) {
            Pair pair = TuplesKt.to(new File(defaultDatabasePath.getPath() + str), new File(noBackupPath.getPath() + str));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return MapsKt.plus(linkedHashMap, TuplesKt.to(defaultDatabasePath, noBackupPath));
    }

    private final File getDefaultDatabasePath(Context context) {
        File databasePath = context.getDatabasePath(OfflineDbPathHelperKt.OFFLINE_DATABASE_NAME);
        Intrinsics.checkNotNullExpressionValue(databasePath, "getDatabasePath(...)");
        return databasePath;
    }

    private final File getNoBackupPath(Context context) {
        return new File(context.getNoBackupFilesDir(), OfflineDbPathHelperKt.OFFLINE_DATABASE_NAME);
    }
}
