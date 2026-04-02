.class public final Lcom/stripe/core/stripeterminal/storage/Migrations;
.super Ljava/lang/Object;
.source "Migrations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0004\u0004\u0007\n\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/storage/Migrations;",
        "",
        "()V",
        "MIGRATION_1_2",
        "com/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1",
        "Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1;",
        "MIGRATION_2_3",
        "com/stripe/core/stripeterminal/storage/Migrations$MIGRATION_2_3$1",
        "Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_2_3$1;",
        "MIGRATION_3_2",
        "com/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_2$1",
        "Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_2$1;",
        "MIGRATION_3_4",
        "com/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_4$1",
        "Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_4$1;",
        "allMigrations",
        "",
        "Landroidx/room/migration/Migration;",
        "getAllMigrations",
        "()[Landroidx/room/migration/Migration;",
        "[Landroidx/room/migration/Migration;",
        "stripeterminal_release"
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
.field public static final INSTANCE:Lcom/stripe/core/stripeterminal/storage/Migrations;

.field private static final MIGRATION_1_2:Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1;

.field private static final MIGRATION_2_3:Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_2_3$1;

.field private static final MIGRATION_3_2:Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_2$1;

.field private static final MIGRATION_3_4:Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_4$1;

.field private static final allMigrations:[Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/stripe/core/stripeterminal/storage/Migrations;

    invoke-direct {v0}, Lcom/stripe/core/stripeterminal/storage/Migrations;-><init>()V

    sput-object v0, Lcom/stripe/core/stripeterminal/storage/Migrations;->INSTANCE:Lcom/stripe/core/stripeterminal/storage/Migrations;

    .line 11
    new-instance v0, Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1;

    invoke-direct {v0}, Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1;-><init>()V

    sput-object v0, Lcom/stripe/core/stripeterminal/storage/Migrations;->MIGRATION_1_2:Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1;

    .line 45
    new-instance v1, Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_2_3$1;

    invoke-direct {v1}, Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_2_3$1;-><init>()V

    sput-object v1, Lcom/stripe/core/stripeterminal/storage/Migrations;->MIGRATION_2_3:Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_2_3$1;

    .line 52
    new-instance v2, Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_2$1;

    invoke-direct {v2}, Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_2$1;-><init>()V

    sput-object v2, Lcom/stripe/core/stripeterminal/storage/Migrations;->MIGRATION_3_2:Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_2$1;

    .line 58
    new-instance v3, Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_4$1;

    invoke-direct {v3}, Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_4$1;-><init>()V

    sput-object v3, Lcom/stripe/core/stripeterminal/storage/Migrations;->MIGRATION_3_4:Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_3_4$1;

    const/4 v4, 0x4

    .line 68
    new-array v4, v4, [Landroidx/room/migration/Migration;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lcom/stripe/core/stripeterminal/storage/Migrations;->allMigrations:[Landroidx/room/migration/Migration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMIGRATION_1_2$p()Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1;
    .locals 1

    .line 9
    sget-object v0, Lcom/stripe/core/stripeterminal/storage/Migrations;->MIGRATION_1_2:Lcom/stripe/core/stripeterminal/storage/Migrations$MIGRATION_1_2$1;

    return-object v0
.end method


# virtual methods
.method public final getAllMigrations()[Landroidx/room/migration/Migration;
    .locals 1

    .line 68
    sget-object v0, Lcom/stripe/core/stripeterminal/storage/Migrations;->allMigrations:[Landroidx/room/migration/Migration;

    return-object v0
.end method
