.class public final Lcom/stripe/core/readerupdate/UpdateSummary;
.super Ljava/lang/Object;
.source "UpdateSummary.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/UpdateSummary$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u001eB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001d\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "",
        "builder",
        "Lcom/stripe/core/readerupdate/UpdateSummary$Builder;",
        "(Lcom/stripe/core/readerupdate/UpdateSummary$Builder;)V",
        "configSpec",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "getConfigSpec",
        "()Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "firmwareSpec",
        "getFirmwareSpec",
        "fullConfig",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "getFullConfig",
        "()Lcom/stripe/proto/model/config/MobileClientConfig;",
        "imageRef",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "getImageRef",
        "()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "keyProfileName",
        "",
        "getKeyProfileName",
        "()Ljava/lang/String;",
        "settingsVersion",
        "getSettingsVersion",
        "state",
        "Lcom/stripe/core/readerupdate/UpdateState;",
        "getState",
        "()Lcom/stripe/core/readerupdate/UpdateState;",
        "toBuilder",
        "Builder",
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


# instance fields
.field private final builder:Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

.field private final configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field private final firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field private final fullConfig:Lcom/stripe/proto/model/config/MobileClientConfig;

.field private final imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

.field private final keyProfileName:Ljava/lang/String;

.field private final settingsVersion:Ljava/lang/String;

.field private final state:Lcom/stripe/core/readerupdate/UpdateState;


# direct methods
.method private constructor <init>(Lcom/stripe/core/readerupdate/UpdateSummary$Builder;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->builder:Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    .line 13
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->getState$readerupdate_release()Lcom/stripe/core/readerupdate/UpdateState;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->state:Lcom/stripe/core/readerupdate/UpdateState;

    .line 16
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->getFullConfig$readerupdate_release()Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->fullConfig:Lcom/stripe/proto/model/config/MobileClientConfig;

    .line 19
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->getConfigSpec$readerupdate_release()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 20
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->getFirmwareSpec$readerupdate_release()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 21
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->getKeyProfileName$readerupdate_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->keyProfileName:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->getSettingsVersion$readerupdate_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->settingsVersion:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->getImageRef$readerupdate_release()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/core/readerupdate/UpdateSummary$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/UpdateSummary;-><init>(Lcom/stripe/core/readerupdate/UpdateSummary$Builder;)V

    return-void
.end method


# virtual methods
.method public final getConfigSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object v0
.end method

.method public final getFirmwareSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object v0
.end method

.method public final getFullConfig()Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->fullConfig:Lcom/stripe/proto/model/config/MobileClientConfig;

    return-object v0
.end method

.method public final getImageRef()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    return-object v0
.end method

.method public final getKeyProfileName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->keyProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSettingsVersion()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->settingsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Lcom/stripe/core/readerupdate/UpdateState;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->state:Lcom/stripe/core/readerupdate/UpdateState;

    return-object v0
.end method

.method public final toBuilder()Lcom/stripe/core/readerupdate/UpdateSummary$Builder;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary;->builder:Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    return-object v0
.end method
