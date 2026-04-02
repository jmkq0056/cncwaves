.class Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "LogPointDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/stripe/core/stripeterminal/storage/LogPointEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;


# direct methods
.method constructor <init>(Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 35
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl$1;->this$0:Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/core/stripeterminal/storage/LogPointEntity;)V
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

    .line 45
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 46
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 50
    :goto_0
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->getException()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->getException()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl$1;->this$0:Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;

    invoke-static {v0}, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->access$000(Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;)Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->getLogLevel()Lcom/stripe/loggingmodels/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;->fromLogLevel(Lcom/stripe/loggingmodels/LogLevel;)I

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 56
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 57
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->getOffsetMs()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 58
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 59
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->getUid()J

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

    .line 35
    check-cast p2, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/core/stripeterminal/storage/LogPointEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "INSERT OR REPLACE INTO `logpoints` (`message`,`exception`,`loglevel`,`timeOffsetMs`,`traceId`,`uid`) VALUES (?,?,?,?,?,nullif(?, 0))"

    return-object v0
.end method
