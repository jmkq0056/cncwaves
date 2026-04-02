.class public final Lcom/stripe/offlinemode/storage/DatabaseMigrationV2ToV3;
.super Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;
.source "DatabaseMigrationV2ToV3.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B9\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u0012\"\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u001c\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/DatabaseMigrationV2ToV3;",
        "Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "discreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;)V",
        "getLogger",
        "()Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "customMigration",
        "",
        "database",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
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


# instance fields
.field private final logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;)V
    .locals 2
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
            ">;)V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 10
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/stripe/offlinemode/storage/BaseDatabaseMigration;-><init>(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/jvmcore/logging/HealthLogger;II)V

    .line 8
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DatabaseMigrationV2ToV3;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    return-void
.end method


# virtual methods
.method public customMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/storage/DatabaseMigrationV2ToV3;->createAccountConfigTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
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

    .line 8
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DatabaseMigrationV2ToV3;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    return-object v0
.end method
