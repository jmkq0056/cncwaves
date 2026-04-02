.class Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "OfflineReaderDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 49
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)V
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

    .line 59
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getLastActivatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toTimeMs(Ljava/util/Date;)J

    move-result-wide v0

    const/4 v2, 0x2

    .line 61
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 62
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toTimeMs(Ljava/util/Date;)J

    move-result-wide v0

    const/4 v2, 0x3

    .line 63
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 64
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 65
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getEncryptedData()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    const/4 v0, 0x6

    .line 66
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getEncryptionIv()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    const/4 v0, 0x7

    .line 67
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getId()J

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

    .line 49
    check-cast p2, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "INSERT OR ABORT INTO `reader` (`serial_number`,`last_activated_timestamp`,`created_timestamp`,`account_id`,`data_blob`,`iv_blob`,`id`) VALUES (?,?,?,?,?,?,nullif(?, 0))"

    return-object v0
.end method
