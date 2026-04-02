package com.stripe.offlinemode.storage;

import androidx.sqlite.db.SupportSQLiteDatabase;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DatabaseMigrationV1ToV2.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B9\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\"\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0010"}, d2 = {"Lcom/stripe/offlinemode/storage/DatabaseMigrationV1ToV2;", "Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;", "logger", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "discreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;)V", "customMigration", "", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DatabaseMigrationV1ToV2 extends BaseDatabaseMigration {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DatabaseMigrationV1ToV2(Logger<?, ?> logger, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger) {
        super(logger, discreteLogger, 1, 2);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
    }

    @Override // com.stripe.offlinemode.storage.BaseDatabaseMigration
    public void customMigration(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        createLocationTable(database);
        database.execSQL("ALTER TABLE offline_connection RENAME TO offline_connectionv1");
        database.execSQL("DROP INDEX IF EXISTS index_offline_connection_reader_id");
        database.execSQL("DROP INDEX IF EXISTS index_offline_connection_location_id");
        createConnectionTable(database);
        database.execSQL("INSERT INTO offline_connection ( id, reader_id, account_id, location_id, data_blob, iv_blob, created_timestamp) SELECT id, reader_id, account_id, 0, data_blob, iv_blob, created_timestamp FROM offline_connectionv1;  ");
        database.execSQL("DROP TABLE offline_connectionv1;  ");
    }
}
