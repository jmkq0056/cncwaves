.class Lcom/stripe/core/stripeterminal/storage/EventDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "EventDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/stripeterminal/storage/EventDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/stripe/core/stripeterminal/storage/EventEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/core/stripeterminal/storage/EventDao_Impl;


# direct methods
.method constructor <init>(Lcom/stripe/core/stripeterminal/storage/EventDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 32
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/EventDao_Impl$1;->this$0:Lcom/stripe/core/stripeterminal/storage/EventDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/core/stripeterminal/storage/EventEntity;)V
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

    .line 42
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 43
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 44
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 45
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->getStartTimeMs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 46
    invoke-virtual {p2}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->getUid()J

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

    .line 32
    check-cast p2, Lcom/stripe/core/stripeterminal/storage/EventEntity;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/stripeterminal/storage/EventDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/stripe/core/stripeterminal/storage/EventEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "INSERT OR REPLACE INTO `events` (`event`,`scope`,`domain`,`startTimeMs`,`uid`) VALUES (?,?,?,?,nullif(?, 0))"

    return-object v0
.end method
