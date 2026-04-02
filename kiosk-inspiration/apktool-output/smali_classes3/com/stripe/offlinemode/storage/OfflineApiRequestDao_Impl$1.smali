.class Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "OfflineApiRequestDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 62
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;)V
    .locals 4
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

    .line 72
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getOfflineId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 73
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getOfflineId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 77
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getConnectionId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 78
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getStripeEntityId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 79
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getStripeEntityId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 83
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getType()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getDeleted()Z

    move-result v0

    const/4 v1, 0x6

    int-to-long v2, v0

    .line 86
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 87
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptedData()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    const/16 v0, 0x8

    .line 88
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptionIv()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 89
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toTimeMs(Ljava/util/Date;)J

    move-result-wide v0

    const/16 v2, 0x9

    .line 90
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 91
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getId()J

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

    .line 62
    check-cast p2, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "INSERT OR ABORT INTO `offline_api_request` (`offline_id`,`connection_id`,`stripe_api_entity_id`,`account_id`,`type`,`deleted`,`data_blob`,`iv_blob`,`created_timestamp`,`id`) VALUES (?,?,?,?,?,?,?,?,?,nullif(?, 0))"

    return-object v0
.end method
