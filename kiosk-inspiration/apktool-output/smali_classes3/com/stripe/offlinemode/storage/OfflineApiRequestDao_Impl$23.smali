.class Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;
.super Ljava/lang/Object;
.source "OfflineApiRequestDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->getByOfflineIdAndType(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
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

    .line 970
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 974
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 976
    :try_start_0
    const-string v0, "offline_id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 977
    const-string v5, "connection_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 978
    const-string v6, "stripe_api_entity_id"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 979
    const-string v7, "account_id"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 980
    const-string v8, "type"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 981
    const-string v9, "deleted"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 982
    const-string v10, "data_blob"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 983
    const-string v11, "iv_blob"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 984
    const-string v12, "created_timestamp"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 985
    const-string v13, "id"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 987
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 989
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v15, v4

    goto :goto_0

    .line 992
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 995
    :goto_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 997
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move-object/from16 v18, v4

    goto :goto_2

    .line 1000
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1003
    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1005
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$1000(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v20

    .line 1008
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    move/from16 v21, v3

    .line 1011
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 1013
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    .line 1016
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1017
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toDate(J)Ljava/util/Date;

    move-result-object v24

    .line 1019
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 1020
    new-instance v14, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    invoke-direct/range {v14 .. v26}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v14

    .line 1026
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1027
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 1026
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1027
    iget-object v2, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1028
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;->call()Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    move-result-object v0

    return-object v0
.end method
