.class Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;
.super Ljava/lang/Object;
.source "OfflineReaderDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->getBySerialsForAccount(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
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

    .line 426
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;->this$0:Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 430
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;->this$0:Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 432
    :try_start_0
    const-string v0, "serial_number"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 433
    const-string v3, "last_activated_timestamp"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 434
    const-string v4, "created_timestamp"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 435
    const-string v5, "account_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 436
    const-string v6, "data_blob"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 437
    const-string v7, "iv_blob"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 438
    const-string v8, "id"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 439
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 443
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 446
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 447
    iget-object v13, v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;->this$0:Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;

    invoke-static {v13}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toDate(J)Ljava/util/Date;

    move-result-object v13

    .line 450
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 451
    iget-object v14, v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;->this$0:Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;

    invoke-static {v14}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toDate(J)Ljava/util/Date;

    move-result-object v14

    .line 453
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 455
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 457
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 459
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 460
    new-instance v11, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    invoke-direct/range {v11 .. v19}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;[B[BJ)V

    .line 461
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 465
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 466
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 465
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 466
    iget-object v2, v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 467
    throw v0
.end method
