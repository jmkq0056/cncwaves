.class final Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OfflineDatabaseProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;-><init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
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

.field final synthetic $ext:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/room/RoomDatabase$Builder<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
            ">;",
            "Landroidx/room/RoomDatabase$Builder<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)V
    .locals 0
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
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;->$discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    iput-object p3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;->$logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    iput-object p4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;->$ext:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/offlinemode/storage/OfflineDatabase;
    .locals 5

    .line 22
    sget-object v0, Lcom/stripe/offlinemode/storage/OfflineDatabase;->Companion:Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;

    .line 23
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;->$context:Landroid/content/Context;

    .line 24
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;->$discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 25
    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;->$logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    .line 26
    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;->$ext:Lkotlin/jvm/functions/Function1;

    .line 22
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;->create(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;->invoke()Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object v0

    return-object v0
.end method
