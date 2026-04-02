.class Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;
.super Ljava/lang/Object;
.source "OfflineLocationDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
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

    .line 303
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/stripe/offlinemode/storage/OfflineLocationEntity;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 307
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 309
    :try_start_0
    const-string v0, "stripe_location_id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 310
    const-string v3, "account_id"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 311
    const-string v5, "data_blob"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 312
    const-string v6, "iv_blob"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 313
    const-string v7, "created_timestamp"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 314
    const-string v8, "last_activated_timestamp"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 315
    const-string v9, "id"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 317
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 319
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 321
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 323
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 325
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 328
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 329
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toDate(J)Ljava/util/Date;

    move-result-object v16

    .line 332
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 333
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toDate(J)Ljava/util/Date;

    move-result-object v17

    .line 335
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 336
    new-instance v11, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    invoke-direct/range {v11 .. v19}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;-><init>(Ljava/lang/String;Ljava/lang/String;[B[BLjava/util/Date;Ljava/util/Date;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v11

    .line 342
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 343
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 342
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 343
    iget-object v2, v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 344
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;->call()Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    move-result-object v0

    return-object v0
.end method
