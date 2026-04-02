package com.stripe.offlinemode.storage;

import androidx.sqlite.db.SupportSQLiteDatabase;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DatabaseMigrationV2ToV3.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B9\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\"\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u001c\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lcom/stripe/offlinemode/storage/DatabaseMigrationV2ToV3;", "Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;", "logger", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "discreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;)V", "getLogger", "()Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "customMigration", "", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DatabaseMigrationV2ToV3 extends BaseDatabaseMigration {
    private final Logger<?, ?> logger;

    @Override // com.stripe.offlinemode.storage.BaseDatabaseMigration
    public Logger<?, ?> getLogger() {
        return this.logger;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DatabaseMigrationV2ToV3(Logger<?, ?> logger, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger) {
        super(logger, discreteLogger, 2, 3);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
        this.logger = logger;
    }

    @Override // com.stripe.offlinemode.storage.BaseDatabaseMigration
    public void customMigration(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        createAccountConfigTable(database);
    }
}
