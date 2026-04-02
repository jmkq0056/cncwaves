.class Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "TraceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/stripe/core/stripeterminal/storage/TraceEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;


# direct methods
.method constructor <init>(Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 36
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl$1;->this$0:Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/core/stripeterminal/storage/TraceEntity;)V
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

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getStartTimeMs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 47
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getRequest()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 49
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getRequest()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getResponse()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 54
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getResponse()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x5

    .line 58
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 59
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getException()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_2

    .line 61
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getException()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 65
    :goto_2
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getTotalTimeMs()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 66
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getTotalTimeMs()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 70
    :goto_3
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getSessionId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_4

    .line 71
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 73
    :cond_4
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :goto_4
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_5

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 78
    :cond_5
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :goto_5
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl$1;->this$0:Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;

    invoke-static {v0}, Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;->access$000(Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;)Lcom/stripe/core/stripeterminal/storage/MapConverters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/core/stripeterminal/storage/MapConverters;->fromStringStringMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_6

    .line 82
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 84
    :cond_6
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_6
    const/16 v0, 0xc

    .line 86
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getUid()J

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

    .line 36
    check-cast p2, Lcom/stripe/core/stripeterminal/storage/TraceEntity;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/core/stripeterminal/storage/TraceEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "INSERT OR REPLACE INTO `traces` (`startTimeMs`,`id`,`request`,`response`,`service`,`method`,`exception`,`totalTimeMs`,`sessionId`,`serialNumber`,`tags`,`uid`) VALUES (?,?,?,?,?,?,?,?,?,?,?,nullif(?, 0))"

    return-object v0
.end method
