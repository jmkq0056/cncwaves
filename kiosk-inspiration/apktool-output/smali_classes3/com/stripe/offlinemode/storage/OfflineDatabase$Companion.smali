.class public final Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;
.super Ljava/lang/Object;
.source "OfflineDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/storage/OfflineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002Ji\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\"\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\rj\u0002`\u00122\u000e\u0010\u0013\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00142%\u0008\u0002\u0010\u0015\u001a\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00170\u0016\u00a2\u0006\u0002\u0008\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;",
        "",
        "()V",
        "DEPRECATED_DB_VERSION_PRE_API_REQUEST_TABLE",
        "",
        "DEPRECATED_DB_VERSION_PRE_LOCATION_MIGRATION",
        "DEPRECATED_DB_VERSION_PRE_OFFLINE_ACCOUNT_CONFIG_TABLE",
        "OFFLINE_DB_VERSION",
        "create",
        "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
        "context",
        "Landroid/content/Context;",
        "discreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "ext",
        "Lkotlin/Function1;",
        "Landroidx/room/RoomDatabase$Builder;",
        "Lkotlin/ExtensionFunctionType;",
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


# direct methods
.method public static synthetic $r8$lambda$1SvtppCvuaHfxk7Teyv1lm3tuG0(Landroid/content/Context;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;->create$lambda$0(Landroid/content/Context;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/stripe/offlinemode/storage/OfflineDatabase;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 63
    sget-object p4, Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion$create$1;->INSTANCE:Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion$create$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;->create(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object p0

    return-object p0
.end method

.method private static final create$lambda$0(Landroid/content/Context;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->Companion:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;

    invoke-virtual {v0, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    .line 71
    iget-object v0, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 72
    iget-object p1, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->noBackupDirectory(Z)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    .line 74
    new-instance p1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    invoke-virtual {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)Lcom/stripe/offlinemode/storage/OfflineDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/room/RoomDatabase$Builder<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
            ">;+",
            "Landroidx/room/RoomDatabase$Builder<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
            ">;>;)",
            "Lcom/stripe/offlinemode/storage/OfflineDatabase;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/stripe/offlinemode/storage/OfflineDatabasePathHelper;->migrateDatabase(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/stripe/offlinemode/storage/OfflineDatabase;

    const-string v2, "stripe_offline_db"

    invoke-static {v0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v0, 0x3

    .line 77
    new-array v0, v0, [Landroidx/room/migration/Migration;

    new-instance v1, Lcom/stripe/offlinemode/storage/DatabaseMigrationV1ToV2;

    invoke-direct {v1, p3, p2}, Lcom/stripe/offlinemode/storage/DatabaseMigrationV1ToV2;-><init>(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 78
    new-instance v1, Lcom/stripe/offlinemode/storage/DatabaseMigrationV2ToV3;

    invoke-direct {v1, p3, p2}, Lcom/stripe/offlinemode/storage/DatabaseMigrationV2ToV3;-><init>(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 79
    new-instance v1, Lcom/stripe/offlinemode/storage/DatabaseMigrationV3ToV4;

    invoke-direct {v1, p3, p2}, Lcom/stripe/offlinemode/storage/DatabaseMigrationV3ToV4;-><init>(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;)V

    const/4 p2, 0x2

    aput-object v1, v0, p2

    .line 76
    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 81
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/RoomDatabase$Builder;

    .line 82
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineDatabase;

    return-object p1
.end method
