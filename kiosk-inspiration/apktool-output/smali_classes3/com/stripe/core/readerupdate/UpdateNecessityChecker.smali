.class public final Lcom/stripe/core/readerupdate/UpdateNecessityChecker;
.super Ljava/lang/Object;
.source "UpdateNecessityChecker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/UpdateNecessityChecker;",
        "",
        "()V",
        "shouldUpdateConfigWithMobilePosConfig",
        "",
        "getShouldUpdateConfigWithMobilePosConfig",
        "()Z",
        "setShouldUpdateConfigWithMobilePosConfig",
        "(Z)V",
        "shouldUpdateFirmwareWithMobilePosConfig",
        "getShouldUpdateFirmwareWithMobilePosConfig",
        "setShouldUpdateFirmwareWithMobilePosConfig",
        "shouldUpdateKeyProfileWithMobilePosConfig",
        "getShouldUpdateKeyProfileWithMobilePosConfig",
        "setShouldUpdateKeyProfileWithMobilePosConfig",
        "readerupdate_release"
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
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/UpdateNecessityChecker;

.field private static shouldUpdateConfigWithMobilePosConfig:Z

.field private static shouldUpdateFirmwareWithMobilePosConfig:Z

.field private static shouldUpdateKeyProfileWithMobilePosConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->INSTANCE:Lcom/stripe/core/readerupdate/UpdateNecessityChecker;

    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->shouldUpdateFirmwareWithMobilePosConfig:Z

    .line 9
    sput-boolean v0, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->shouldUpdateConfigWithMobilePosConfig:Z

    .line 10
    sput-boolean v0, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->shouldUpdateKeyProfileWithMobilePosConfig:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShouldUpdateConfigWithMobilePosConfig()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->shouldUpdateConfigWithMobilePosConfig:Z

    return v0
.end method

.method public final getShouldUpdateFirmwareWithMobilePosConfig()Z
    .locals 1

    .line 8
    sget-boolean v0, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->shouldUpdateFirmwareWithMobilePosConfig:Z

    return v0
.end method

.method public final getShouldUpdateKeyProfileWithMobilePosConfig()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->shouldUpdateKeyProfileWithMobilePosConfig:Z

    return v0
.end method

.method public final setShouldUpdateConfigWithMobilePosConfig(Z)V
    .locals 0

    .line 9
    sput-boolean p1, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->shouldUpdateConfigWithMobilePosConfig:Z

    return-void
.end method

.method public final setShouldUpdateFirmwareWithMobilePosConfig(Z)V
    .locals 0

    .line 8
    sput-boolean p1, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->shouldUpdateFirmwareWithMobilePosConfig:Z

    return-void
.end method

.method public final setShouldUpdateKeyProfileWithMobilePosConfig(Z)V
    .locals 0

    .line 10
    sput-boolean p1, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->shouldUpdateKeyProfileWithMobilePosConfig:Z

    return-void
.end method
