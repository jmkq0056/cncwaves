.class public abstract Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;
.super Landroidx/room/migration/Migration;
.source "BaseDatabaseMigration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/storage/BaseDatabaseMigration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseDatabaseMigration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDatabaseMigration.kt\ncom/stripe/offlinemode/storage/BaseDatabaseMigration\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,168:1\n1855#2,2:169\n*S KotlinDebug\n*F\n+ 1 BaseDatabaseMigration.kt\ncom/stripe/offlinemode/storage/BaseDatabaseMigration\n*L\n34#1:169,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dBI\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u0012\"\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R-\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;",
        "Landroidx/room/migration/Migration;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "discreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "fromVersion",
        "",
        "toVersion",
        "(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;II)V",
        "getDiscreteLogger",
        "()Lcom/stripe/jvmcore/logging/HealthLogger;",
        "getLogger",
        "()Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "createAccountConfigTable",
        "",
        "database",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "createApiRequestTable",
        "createConnectionTable",
        "createLocationTable",
        "createReaderTable",
        "customMigration",
        "migrate",
        "Companion",
        "offlinemode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CONNECTION_TABLE_PLACEHOLDER:Ljava/lang/String; = "offline_connectionv1"

.field public static final Companion:Lcom/stripe/offlinemode/storage/BaseDatabaseMigration$Companion;


# instance fields
.field private final discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final fromVersion:I

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;"
        }
    .end annotation
.end field

.field private final toVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->Companion:Lcom/stripe/offlinemode/storage/BaseDatabaseMigration$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p3, p4}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 9
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    .line 10
    iput-object p2, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 11
    iput p3, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->fromVersion:I

    .line 12
    iput p4, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->toVersion:I

    return-void
.end method


# virtual methods
.method protected final createAccountConfigTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v0, "CREATE TABLE IF NOT EXISTS offline_config (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    account_id TEXT NOT NULL,    data_blob BLOB NOT NULL,    iv_blob BLOB NOT NULL);  "

    .line 47
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS index_offline_config_account_id ON offline_config (account_id) "

    .line 56
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected final createApiRequestTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-string v0, "CREATE TABLE IF NOT EXISTS offline_api_request (offline_id TEXT, connection_id INTEGER NOT NULL, stripe_api_entity_id TEXT, account_id TEXT NOT NULL, type TEXT NOT NULL, deleted INTEGER NOT NULL, data_blob BLOB NOT NULL, iv_blob BLOB NOT NULL, created_timestamp INTEGER NOT NULL, id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, FOREIGN KEY(connection_id) REFERENCES offline_connection(id) ON UPDATE NO ACTION ON DELETE RESTRICT )"

    .line 131
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    const-string v0, "CREATE INDEX index_offline_api_request_offline_id ON offline_api_request (offline_id)"

    .line 146
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string v0, "CREATE INDEX index_offline_api_request_connection_id ON offline_api_request (connection_id)"

    .line 150
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string v0, "CREATE INDEX index_offline_api_request_stripe_api_entity_id ON offline_api_request (stripe_api_entity_id)"

    .line 154
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v0, "CREATE INDEX index_offline_api_request_account_id ON offline_api_request (account_id)"

    .line 158
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected final createConnectionTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string v0, "CREATE TABLE IF NOT EXISTS offline_connection (      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,     reader_id INTEGER NOT NULL,      location_id INTEGER NOT NULL,      account_id TEXT NOT NULL,      data_blob BLOB NOT NULL,      iv_blob BLOB NOT NULL,      created_timestamp INTEGER NOT NULL,      FOREIGN KEY (reader_id) REFERENCES reader (id) ON DELETE RESTRICT,      FOREIGN KEY (location_id) REFERENCES offline_location (id) ON DELETE RESTRICT  );  "

    .line 82
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "CREATE INDEX index_offline_connection_reader_id ON offline_connection (reader_id)"

    .line 96
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v0, "CREATE INDEX index_offline_connection_location_id ON offline_connection (location_id) "

    .line 100
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected final createLocationTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string v0, "CREATE TABLE IF NOT EXISTS offline_location (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    stripe_location_id TEXT NOT NULL,    account_id TEXT NOT NULL,    data_blob BLOB NOT NULL,    iv_blob BLOB NOT NULL,    created_timestamp INTEGER NOT NULL,    last_activated_timestamp INTEGER NOT NULL);  "

    .line 63
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS index_offline_location_stripe_location_id ON offline_location (stripe_location_id) "

    .line 75
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected final createReaderTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const-string v0, "CREATE TABLE reader (serial_number TEXT NOT NULL, last_activated_timestamp INTEGER NOT NULL, created_timestamp INTEGER NOT NULL, account_id TEXT NOT NULL, data_blob BLOB NOT NULL, iv_blob BLOB NOT NULL, id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)"

    .line 107
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v0, "CREATE UNIQUE INDEX index_reader_serial_number_account_id ON reader (serial_number, account_id)"

    .line 119
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "CREATE INDEX index_reader_serial_number ON reader (serial_number)"

    .line 124
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public abstract customMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method public final getDiscreteLogger()Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object v0
.end method

.method public getLogger()Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    return-object v0
.end method

.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 12

    const-string v1, " to "

    const-string v0, "Migrating database from version "

    const-string v2, "database"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2e

    const/4 v3, 0x0

    .line 18
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->getLogger()Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->fromVersion:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->toVersion:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v3, [Lkotlin/Pair;

    invoke-interface {v4, v0, v5}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->customMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->getLogger()Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to migrate database from version "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->fromVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->toVersion:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " with error: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Lkotlin/Pair;

    invoke-interface {v4, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 24
    iget-object v5, p0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration$migrate$2$1;->INSTANCE:Lcom/stripe/offlinemode/storage/BaseDatabaseMigration$migrate$2$1;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    const/4 v0, 0x6

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "offline_location"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 29
    const-string v2, "offline_connection"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 30
    const-string v2, "offline_payment_intent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 31
    const-string v2, "offline_api_request"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 32
    const-string v2, "reader"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 33
    const-string v2, "offline_connectionv1"

    aput-object v2, v0, v1

    .line 27
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 169
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->createAccountConfigTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->createReaderTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->createLocationTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->createConnectionTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;->createApiRequestTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    :cond_1
    return-void
.end method
