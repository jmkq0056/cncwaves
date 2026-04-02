.class Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "OfflineAccountConfigDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 40
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$1;->this$0:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;)V
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

    .line 50
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 51
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getEncryptedData()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    const/4 v0, 0x3

    .line 52
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getEncryptionIv()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    const/4 v0, 0x4

    .line 53
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getId()J

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

    .line 40
    check-cast p2, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "INSERT OR ABORT INTO `offline_config` (`account_id`,`data_blob`,`iv_blob`,`id`) VALUES (?,?,?,nullif(?, 0))"

    return-object v0
.end method
