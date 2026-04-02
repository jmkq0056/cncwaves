package com.stripe.core.stripeterminal.storage;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Migrations.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1", "Landroidx/room/migration/Migration;", "migrate", "", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Migrations$MIGRATION_1_2$1 extends Migration {
    Migrations$MIGRATION_1_2$1() {
        super(1, 2);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        database.execSQL("DROP TABLE traces");
        database.execSQL("CREATE TABLE IF NOT EXISTS traces (startTimeMs INTEGER NOT NULL, id TEXT NOT NULL, request TEXT, response TEXT, service TEXT NOT NULL, method TEXT NOT NULL, exception TEXT, totalTimeMs INTEGER, uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
    }
}
