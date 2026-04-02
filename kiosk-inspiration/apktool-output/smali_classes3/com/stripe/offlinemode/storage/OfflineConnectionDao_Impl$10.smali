.class Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$10;
.super Ljava/lang/Object;
.source "OfflineConnectionDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$10;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 302
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$10;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 304
    :try_start_0
    const-string v0, "reader_id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 305
    const-string v3, "location_id"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 306
    const-string v5, "account_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 307
    const-string v6, "data_blob"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 308
    const-string v7, "iv_blob"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 309
    const-string v8, "created_timestamp"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 310
    const-string v9, "id"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 314
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 316
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 318
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 320
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 322
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 325
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 326
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$10;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toDate(J)Ljava/util/Date;

    move-result-object v19

    .line 328
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 329
    new-instance v11, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    invoke-direct/range {v11 .. v21}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;-><init>(JJLjava/lang/String;[B[BLjava/util/Date;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v11

    .line 335
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 336
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 335
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 336
    iget-object v2, v1, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 337
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$10;->call()Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    move-result-object v0

    return-object v0
.end method
