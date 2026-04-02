.class Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "OfflineLocationDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getStripeLocationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 59
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getEncryptedData()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    const/4 v0, 0x4

    .line 60
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getEncryptionIv()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 61
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toTimeMs(Ljava/util/Date;)J

    move-result-wide v0

    const/4 v2, 0x5

    .line 62
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 63
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getLastActivatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toTimeMs(Ljava/util/Date;)J

    move-result-wide v0

    const/4 v2, 0x6

    .line 64
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 65
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 47
    check-cast p2, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "INSERT OR ABORT INTO `offline_location` (`stripe_location_id`,`account_id`,`data_blob`,`iv_blob`,`created_timestamp`,`last_activated_timestamp`,`id`) VALUES (?,?,?,?,?,?,nullif(?, 0))"

    return-object v0
.end method
