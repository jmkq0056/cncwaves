package com.stripe.offlinemode.storage;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseDatabaseMigration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dBI\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\"\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R-\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\r\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;", "Landroidx/room/migration/Migration;", "logger", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "discreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "fromVersion", "", "toVersion", "(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;II)V", "getDiscreteLogger", "()Lcom/stripe/jvmcore/logging/HealthLogger;", "getLogger", "()Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "createAccountConfigTable", "", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "createApiRequestTable", "createConnectionTable", "createLocationTable", "createReaderTable", "customMigration", "migrate", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class BaseDatabaseMigration extends Migration {
    public static final String CONNECTION_TABLE_PLACEHOLDER = "offline_connectionv1";
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger;
    private final int fromVersion;
    private final Logger<?, ?> logger;
    private final int toVersion;

    public abstract void customMigration(SupportSQLiteDatabase database);

    public Logger<?, ?> getLogger() {
        return this.logger;
    }

    public final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> getDiscreteLogger() {
        return this.discreteLogger;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseDatabaseMigration(Logger<?, ?> logger, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, int i, int i2) {
        super(i, i2);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
        this.logger = logger;
        this.discreteLogger = discreteLogger;
        this.fromVersion = i;
        this.toVersion = i2;
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SupportSQLiteDatabase database) throws IllegalAccessException, InstantiationException {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(database, "database");
        try {
            Result.Companion companion = Result.INSTANCE;
            getLogger().i("Migrating database from version " + this.fromVersion + " to " + this.toVersion + '.', new Pair[0]);
            customMigration(database);
            objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            getLogger().w("Failed to migrate database from version " + this.fromVersion + " to " + this.toVersion + " with error: " + thM820exceptionOrNullimpl.getMessage() + '.', new Pair[0]);
            HealthLogger.incrementCounter$default(this.discreteLogger, null, null, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.offlinemode.storage.BaseDatabaseMigration$migrate$2$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DiscreteScope.Builder incrementCounter, Counter count) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(count, "count");
                    incrementCounter.database_error = count;
                }
            }, 7, null);
            Iterator it = CollectionsKt.listOf((Object[]) new String[]{OfflineStorageConstantsKt.OFFLINE_LOCATION, OfflineStorageConstantsKt.OFFLINE_CONNECTION, OfflineStorageConstantsKt.OFFLINE_PAYMENT_INTENT, OfflineStorageConstantsKt.OFFLINE_API_REQUEST, OfflineStorageConstantsKt.READER, CONNECTION_TABLE_PLACEHOLDER}).iterator();
            while (it.hasNext()) {
                database.execSQL("DROP TABLE IF EXISTS " + ((String) it.next()));
            }
            createAccountConfigTable(database);
            createReaderTable(database);
            createLocationTable(database);
            createConnectionTable(database);
            createApiRequestTable(database);
        }
    }

    protected final void createAccountConfigTable(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        database.execSQL("CREATE TABLE IF NOT EXISTS offline_config (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    account_id TEXT NOT NULL,    data_blob BLOB NOT NULL,    iv_blob BLOB NOT NULL);  ");
        database.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS index_offline_config_account_id ON offline_config (account_id) ");
    }

    protected final void createLocationTable(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        database.execSQL("CREATE TABLE IF NOT EXISTS offline_location (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    stripe_location_id TEXT NOT NULL,    account_id TEXT NOT NULL,    data_blob BLOB NOT NULL,    iv_blob BLOB NOT NULL,    created_timestamp INTEGER NOT NULL,    last_activated_timestamp INTEGER NOT NULL);  ");
        database.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS index_offline_location_stripe_location_id ON offline_location (stripe_location_id) ");
    }

    protected final void createConnectionTable(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        database.execSQL("CREATE TABLE IF NOT EXISTS offline_connection (      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,     reader_id INTEGER NOT NULL,      location_id INTEGER NOT NULL,      account_id TEXT NOT NULL,      data_blob BLOB NOT NULL,      iv_blob BLOB NOT NULL,      created_timestamp INTEGER NOT NULL,      FOREIGN KEY (reader_id) REFERENCES reader (id) ON DELETE RESTRICT,      FOREIGN KEY (location_id) REFERENCES offline_location (id) ON DELETE RESTRICT  );  ");
        database.execSQL("CREATE INDEX index_offline_connection_reader_id ON offline_connection (reader_id)");
        database.execSQL("CREATE INDEX index_offline_connection_location_id ON offline_connection (location_id) ");
    }

    protected final void createReaderTable(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        database.execSQL("CREATE TABLE reader (serial_number TEXT NOT NULL, last_activated_timestamp INTEGER NOT NULL, created_timestamp INTEGER NOT NULL, account_id TEXT NOT NULL, data_blob BLOB NOT NULL, iv_blob BLOB NOT NULL, id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
        database.execSQL("CREATE UNIQUE INDEX index_reader_serial_number_account_id ON reader (serial_number, account_id)");
        database.execSQL("CREATE INDEX index_reader_serial_number ON reader (serial_number)");
    }

    protected final void createApiRequestTable(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        database.execSQL("CREATE TABLE IF NOT EXISTS offline_api_request (offline_id TEXT, connection_id INTEGER NOT NULL, stripe_api_entity_id TEXT, account_id TEXT NOT NULL, type TEXT NOT NULL, deleted INTEGER NOT NULL, data_blob BLOB NOT NULL, iv_blob BLOB NOT NULL, created_timestamp INTEGER NOT NULL, id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, FOREIGN KEY(connection_id) REFERENCES offline_connection(id) ON UPDATE NO ACTION ON DELETE RESTRICT )");
        database.execSQL("CREATE INDEX index_offline_api_request_offline_id ON offline_api_request (offline_id)");
        database.execSQL("CREATE INDEX index_offline_api_request_connection_id ON offline_api_request (connection_id)");
        database.execSQL("CREATE INDEX index_offline_api_request_stripe_api_entity_id ON offline_api_request (stripe_api_entity_id)");
        database.execSQL("CREATE INDEX index_offline_api_request_account_id ON offline_api_request (account_id)");
    }
}
