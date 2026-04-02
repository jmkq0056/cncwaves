package com.stripe.offlinemode.storage;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.offlinemode.storage.OfflineDatabase;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineDatabase.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\fH&¨\u0006\u000e"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineDatabase;", "Landroidx/room/RoomDatabase;", "()V", "offlineAccountConfigDao", "Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;", "offlineApiRequestDao", "Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;", "offlineConnectionDao", "Lcom/stripe/offlinemode/storage/OfflineConnectionDao;", "offlineLocationDao", "Lcom/stripe/offlinemode/storage/OfflineLocationDao;", "offlineReaderDao", "Lcom/stripe/offlinemode/storage/OfflineReaderDao;", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class OfflineDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int DEPRECATED_DB_VERSION_PRE_API_REQUEST_TABLE = 3;
    public static final int DEPRECATED_DB_VERSION_PRE_LOCATION_MIGRATION = 1;
    public static final int DEPRECATED_DB_VERSION_PRE_OFFLINE_ACCOUNT_CONFIG_TABLE = 2;
    public static final int OFFLINE_DB_VERSION = 4;

    public abstract OfflineAccountConfigDao offlineAccountConfigDao();

    public abstract OfflineApiRequestDao offlineApiRequestDao();

    public abstract OfflineConnectionDao offlineConnectionDao();

    public abstract OfflineLocationDao offlineLocationDao();

    public abstract OfflineReaderDao offlineReaderDao();

    /* JADX INFO: compiled from: OfflineDatabase.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Ji\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\"\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\rj\u0002`\u00122\u000e\u0010\u0013\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00142%\b\u0002\u0010\u0015\u001a\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00170\u0016¢\u0006\u0002\b\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;", "", "()V", "DEPRECATED_DB_VERSION_PRE_API_REQUEST_TABLE", "", "DEPRECATED_DB_VERSION_PRE_LOCATION_MIGRATION", "DEPRECATED_DB_VERSION_PRE_OFFLINE_ACCOUNT_CONFIG_TABLE", "OFFLINE_DB_VERSION", "create", "Lcom/stripe/offlinemode/storage/OfflineDatabase;", "context", "Landroid/content/Context;", "discreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "logger", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "ext", "Lkotlin/Function1;", "Landroidx/room/RoomDatabase$Builder;", "Lkotlin/ExtensionFunctionType;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OfflineDatabase create$default(Companion companion, Context context, HealthLogger healthLogger, Logger logger, Function1 function1, int i, Object obj) {
            if ((i & 8) != 0) {
                function1 = new Function1<RoomDatabase.Builder<OfflineDatabase>, RoomDatabase.Builder<OfflineDatabase>>() { // from class: com.stripe.offlinemode.storage.OfflineDatabase$Companion$create$1
                    @Override // kotlin.jvm.functions.Function1
                    public final RoomDatabase.Builder<OfflineDatabase> invoke(RoomDatabase.Builder<OfflineDatabase> builder) {
                        Intrinsics.checkNotNullParameter(builder, "$this$null");
                        return builder;
                    }
                };
            }
            return companion.create(context, healthLogger, logger, function1);
        }

        public final OfflineDatabase create(final Context context, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, Logger<?, ?> logger, Function1<? super RoomDatabase.Builder<OfflineDatabase>, ? extends RoomDatabase.Builder<OfflineDatabase>> ext) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
            Intrinsics.checkNotNullParameter(logger, "logger");
            Intrinsics.checkNotNullParameter(ext, "ext");
            OfflineDatabasePathHelper.migrateDatabase(context);
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            return (OfflineDatabase) ext.invoke(Room.databaseBuilder(applicationContext, OfflineDatabase.class, OfflineDbPathHelperKt.OFFLINE_DATABASE_NAME).openHelperFactory(new SupportSQLiteOpenHelper.Factory() { // from class: com.stripe.offlinemode.storage.OfflineDatabase$Companion$$ExternalSyntheticLambda0
                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
                public final SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
                    return OfflineDatabase.Companion.create$lambda$0(context, configuration);
                }
            }).addMigrations(new DatabaseMigrationV1ToV2(logger, discreteLogger), new DatabaseMigrationV2ToV3(logger, discreteLogger), new DatabaseMigrationV3ToV4(logger, discreteLogger))).fallbackToDestructiveMigration().build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SupportSQLiteOpenHelper create$lambda$0(Context context, SupportSQLiteOpenHelper.Configuration configuration) {
            Intrinsics.checkNotNullParameter(context, "$context");
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            SupportSQLiteOpenHelper.Configuration.Builder builder = SupportSQLiteOpenHelper.Configuration.INSTANCE.builder(context);
            builder.name(configuration.name).callback(configuration.callback).noBackupDirectory(true);
            return new FrameworkSQLiteOpenHelperFactory().create(builder.build());
        }
    }
}
