.class Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "OfflineConnectionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 83
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$3;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;)V
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

    .line 93
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getReaderId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 94
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getLocationId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 95
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 96
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getEncryptedData()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    const/4 v0, 0x5

    .line 97
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getEncryptionIv()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 98
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$3;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toTimeMs(Ljava/util/Date;)J

    move-result-wide v0

    const/4 v2, 0x6

    .line 99
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 100
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 101
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getId()J

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

    .line 83
    check-cast p2, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "UPDATE OR ABORT `offline_connection` SET `reader_id` = ?,`location_id` = ?,`account_id` = ?,`data_blob` = ?,`iv_blob` = ?,`created_timestamp` = ?,`id` = ? WHERE `id` = ?"

    return-object v0
.end method
