.class public final Lcom/stripe/core/readerupdate/UpdateSummary$Builder;
.super Ljava/lang/Object;
.source "UpdateSummary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/readerupdate/UpdateSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010&\u001a\u00020\'J\u0010\u0010(\u001a\u00020\u00002\u0008\u0010)\u001a\u0004\u0018\u00010\u0006J\u0010\u0010*\u001a\u00020\u00002\u0008\u0010)\u001a\u0004\u0018\u00010\u0006J\u0010\u0010+\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010-\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010.\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010/\u001a\u00020\u00002\u0008\u00100\u001a\u0004\u0018\u00010\u001bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u001bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010\u0004\u00a8\u00061"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/UpdateSummary$Builder;",
        "",
        "state",
        "Lcom/stripe/core/readerupdate/UpdateState;",
        "(Lcom/stripe/core/readerupdate/UpdateState;)V",
        "configSpec",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "getConfigSpec$readerupdate_release",
        "()Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "setConfigSpec$readerupdate_release",
        "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)V",
        "firmwareSpec",
        "getFirmwareSpec$readerupdate_release",
        "setFirmwareSpec$readerupdate_release",
        "fullConfig",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "getFullConfig$readerupdate_release",
        "()Lcom/stripe/proto/model/config/MobileClientConfig;",
        "setFullConfig$readerupdate_release",
        "(Lcom/stripe/proto/model/config/MobileClientConfig;)V",
        "imageRef",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "getImageRef$readerupdate_release",
        "()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "setImageRef$readerupdate_release",
        "(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)V",
        "keyProfileName",
        "",
        "getKeyProfileName$readerupdate_release",
        "()Ljava/lang/String;",
        "setKeyProfileName$readerupdate_release",
        "(Ljava/lang/String;)V",
        "settingsVersion",
        "getSettingsVersion$readerupdate_release",
        "setSettingsVersion$readerupdate_release",
        "getState$readerupdate_release",
        "()Lcom/stripe/core/readerupdate/UpdateState;",
        "setState$readerupdate_release",
        "build",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "setConfigSpec",
        "spec",
        "setFirmwareSpec",
        "setFullConfig",
        "config",
        "setImageRef",
        "setKeyProfileName",
        "setSettingsVersion",
        "version",
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
.field private configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field private firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field private fullConfig:Lcom/stripe/proto/model/config/MobileClientConfig;

.field private imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

.field private keyProfileName:Ljava/lang/String;

.field private settingsVersion:Ljava/lang/String;

.field private state:Lcom/stripe/core/readerupdate/UpdateState;


# direct methods
.method public constructor <init>(Lcom/stripe/core/readerupdate/UpdateState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->state:Lcom/stripe/core/readerupdate/UpdateState;

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/core/readerupdate/UpdateSummary;
    .locals 2

    .line 68
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateSummary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/core/readerupdate/UpdateSummary;-><init>(Lcom/stripe/core/readerupdate/UpdateSummary$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getConfigSpec$readerupdate_release()Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object v0
.end method

.method public final getFirmwareSpec$readerupdate_release()Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object v0
.end method

.method public final getFullConfig$readerupdate_release()Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->fullConfig:Lcom/stripe/proto/model/config/MobileClientConfig;

    return-object v0
.end method

.method public final getImageRef$readerupdate_release()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    return-object v0
.end method

.method public final getKeyProfileName$readerupdate_release()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->keyProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSettingsVersion$readerupdate_release()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->settingsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getState$readerupdate_release()Lcom/stripe/core/readerupdate/UpdateState;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->state:Lcom/stripe/core/readerupdate/UpdateState;

    return-object v0
.end method

.method public final setConfigSpec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object p0
.end method

.method public final setConfigSpec$readerupdate_release(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-void
.end method

.method public final setFirmwareSpec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object p0
.end method

.method public final setFirmwareSpec$readerupdate_release(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-void
.end method

.method public final setFullConfig(Lcom/stripe/proto/model/config/MobileClientConfig;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->fullConfig:Lcom/stripe/proto/model/config/MobileClientConfig;

    return-object p0
.end method

.method public final setFullConfig$readerupdate_release(Lcom/stripe/proto/model/config/MobileClientConfig;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->fullConfig:Lcom/stripe/proto/model/config/MobileClientConfig;

    return-void
.end method

.method public final setImageRef(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    return-object p0
.end method

.method public final setImageRef$readerupdate_release(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    return-void
.end method

.method public final setKeyProfileName(Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->keyProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public final setKeyProfileName$readerupdate_release(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->keyProfileName:Ljava/lang/String;

    return-void
.end method

.method public final setSettingsVersion(Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->settingsVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final setSettingsVersion$readerupdate_release(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->settingsVersion:Ljava/lang/String;

    return-void
.end method

.method public final setState$readerupdate_release(Lcom/stripe/core/readerupdate/UpdateState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->state:Lcom/stripe/core/readerupdate/UpdateState;

    return-void
.end method
