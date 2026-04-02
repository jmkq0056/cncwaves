.class public abstract Lcom/stripe/offlinemode/storage/OfflineDatabase;
.super Landroidx/room/RoomDatabase;
.source "OfflineDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "offlineAccountConfigDao",
        "Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;",
        "offlineApiRequestDao",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;",
        "offlineConnectionDao",
        "Lcom/stripe/offlinemode/storage/OfflineConnectionDao;",
        "offlineLocationDao",
        "Lcom/stripe/offlinemode/storage/OfflineLocationDao;",
        "offlineReaderDao",
        "Lcom/stripe/offlinemode/storage/OfflineReaderDao;",
        "Companion",
        "offlinemode_release"
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
.field public static final Companion:Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;

.field public static final DEPRECATED_DB_VERSION_PRE_API_REQUEST_TABLE:I = 0x3

.field public static final DEPRECATED_DB_VERSION_PRE_LOCATION_MIGRATION:I = 0x1

.field public static final DEPRECATED_DB_VERSION_PRE_OFFLINE_ACCOUNT_CONFIG_TABLE:I = 0x2

.field public static final OFFLINE_DB_VERSION:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/storage/OfflineDatabase;->Companion:Lcom/stripe/offlinemode/storage/OfflineDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract offlineAccountConfigDao()Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;
.end method

.method public abstract offlineApiRequestDao()Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;
.end method

.method public abstract offlineConnectionDao()Lcom/stripe/offlinemode/storage/OfflineConnectionDao;
.end method

.method public abstract offlineLocationDao()Lcom/stripe/offlinemode/storage/OfflineLocationDao;
.end method

.method public abstract offlineReaderDao()Lcom/stripe/offlinemode/storage/OfflineReaderDao;
.end method
