.class public final Lcom/stripe/offlinemode/storage/OfflineDbPathHelperKt;
.super Ljava/lang/Object;
.source "OfflineDbPathHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineDbPathHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineDbPathHelper.kt\ncom/stripe/offlinemode/storage/OfflineDbPathHelperKt\n+ 2 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log$Companion\n*L\n1#1,103:1\n148#2:104\n*S KotlinDebug\n*F\n+ 1 OfflineDbPathHelper.kt\ncom/stripe/offlinemode/storage/OfflineDbPathHelperKt\n*L\n14#1:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"\u001e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u0003\u0010\u0004\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0002X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "DATABASE_EXTRA_FILES",
        "",
        "",
        "getDATABASE_EXTRA_FILES",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "Logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/Log;",
        "OFFLINE_DATABASE_NAME",
        "offlinemode_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DATABASE_EXTRA_FILES:[Ljava/lang/String;

.field private static final Logger:Lcom/stripe/jvmcore/logging/terminal/log/Log;

.field public static final OFFLINE_DATABASE_NAME:Ljava/lang/String; = "stripe_offline_db"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 104
    const-class v1, Lcom/stripe/offlinemode/storage/OfflineDatabasePathHelper;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/stripe/offlinemode/storage/OfflineDbPathHelperKt;->Logger:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-journal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-shm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-wal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/stripe/offlinemode/storage/OfflineDbPathHelperKt;->DATABASE_EXTRA_FILES:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getLogger$p()Lcom/stripe/jvmcore/logging/terminal/log/Log;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/offlinemode/storage/OfflineDbPathHelperKt;->Logger:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-object v0
.end method

.method public static final getDATABASE_EXTRA_FILES()[Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/stripe/offlinemode/storage/OfflineDbPathHelperKt;->DATABASE_EXTRA_FILES:[Ljava/lang/String;

    return-object v0
.end method
