package com.stripe.core.stripeterminal.storage;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Migrations.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0004\u0004\u0007\n\r\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\bR\u0010\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/Migrations;", "", "()V", "MIGRATION_1_2", "com/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1", "Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1;", "MIGRATION_2_3", "com/stripe/core/stripeterminal/storage/Migrations$MIGRATION_2_3$1", "Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_2_3$1;", "MIGRATION_3_2", "com/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_2$1", "Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_2$1;", "MIGRATION_3_4", "com/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_4$1", "Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_4$1;", "allMigrations", "", "Landroidx/room/migration/Migration;", "getAllMigrations", "()[Landroidx/room/migration/Migration;", "[Landroidx/room/migration/Migration;", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Migrations {
    public static final Migrations INSTANCE = new Migrations();
    private static final Migrations$MIGRATION_1_2$1 MIGRATION_1_2;
    private static final Migrations$MIGRATION_2_3$1 MIGRATION_2_3;
    private static final Migrations$MIGRATION_3_2$1 MIGRATION_3_2;
    private static final Migrations$MIGRATION_3_4$1 MIGRATION_3_4;
    private static final Migration[] allMigrations;

    private Migrations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.stripe.core.stripeterminal.storage.Migrations$MIGRATION_2_3$1] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.stripe.core.stripeterminal.storage.Migrations$MIGRATION_3_2$1] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.stripe.core.stripeterminal.storage.Migrations$MIGRATION_3_4$1] */
    static {
        Migrations$MIGRATION_1_2$1 migrations$MIGRATION_1_2$1 = new Migrations$MIGRATION_1_2$1();
        MIGRATION_1_2 = migrations$MIGRATION_1_2$1;
        ?? r1 = new Migration() { // from class: com.stripe.core.stripeterminal.storage.Migrations$MIGRATION_2_3$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("ALTER TABLE traces ADD sessionId TEXT");
                database.execSQL("ALTER TABLE traces ADD serialNumber TEXT");
            }
        };
        MIGRATION_2_3 = r1;
        ?? r2 = new Migration() { // from class: com.stripe.core.stripeterminal.storage.Migrations$MIGRATION_3_2$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                Migrations.MIGRATION_1_2.migrate(database);
            }
        };
        MIGRATION_3_2 = r2;
        ?? r3 = new Migration() { // from class: com.stripe.core.stripeterminal.storage.Migrations$MIGRATION_3_4$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("ALTER TABLE traces ADD tags TEXT");
            }
        };
        MIGRATION_3_4 = r3;
        allMigrations = new Migration[]{migrations$MIGRATION_1_2$1, r1, r2, r3};
    }

    public final Migration[] getAllMigrations() {
        return allMigrations;
    }
}
