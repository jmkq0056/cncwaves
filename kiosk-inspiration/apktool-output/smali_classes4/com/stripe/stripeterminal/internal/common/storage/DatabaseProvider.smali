.class public final Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;
.super Ljava/lang/Object;
.source "DatabaseProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0007J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0008\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;",
        "INSTANCE$1",
        "createInstance",
        "",
        "context",
        "Landroid/content/Context;",
        "destroyInstance",
        "getInstance",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;

.field private static INSTANCE$1:Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createInstance(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->INSTANCE$1:Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;

    if-nez v0, :cond_0

    const-class v0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 14
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;

    .line 19
    const-string v2, "stripe_terminal.db"

    .line 16
    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 21
    sget-object v1, Lcom/stripe/core/stripeterminal/storage/Migrations;->INSTANCE:Lcom/stripe/core/stripeterminal/storage/Migrations;

    invoke-virtual {v1}, Lcom/stripe/core/stripeterminal/storage/Migrations;->getAllMigrations()[Landroidx/room/migration/Migration;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/room/migration/Migration;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;

    .line 15
    sput-object p1, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->INSTANCE$1:Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;

    .line 23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    return-void
.end method

.method public final destroyInstance()V
    .locals 1

    .line 32
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->INSTANCE$1:Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->INSTANCE$1:Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;

    return-void
.end method

.method public final getInstance()Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;
    .locals 1

    .line 28
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->INSTANCE$1:Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;

    return-object v0
.end method
