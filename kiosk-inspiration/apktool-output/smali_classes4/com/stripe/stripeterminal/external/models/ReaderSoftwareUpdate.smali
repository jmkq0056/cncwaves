.class public final Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
.super Ljava/lang/Object;
.source "ReaderSoftwareUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;,
        Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001:\u000223BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u0013\u0010\u001e\u001a\u00020\u001f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010 R\u0013\u0010!\u001a\u00020\u001f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010 R\u0013\u0010\"\u001a\u00020\u001f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010 R\u0013\u0010#\u001a\u00020\u001f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010 R\u000e\u0010$\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010 \"\u0004\u0008,\u0010-R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010)R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010)\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "",
        "requiredAtMs",
        "",
        "durationEstimate",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;",
        "version",
        "",
        "configSpec",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "firmwareSpec",
        "keyProfileName",
        "settingsVersion",
        "imageRef",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "config",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "(JLcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/model/config/MobileClientConfig;)V",
        "components",
        "",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;",
        "getComponents",
        "()Ljava/util/Set;",
        "getConfig",
        "()Lcom/stripe/proto/model/config/MobileClientConfig;",
        "getConfigSpec",
        "()Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "getDurationEstimate",
        "()Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;",
        "getFirmwareSpec",
        "hasConfigUpdate",
        "",
        "()Z",
        "hasFirmwareUpdate",
        "hasIncrementalUpdate",
        "hasKeyUpdate",
        "hasSettingsUpdate",
        "hasSplashScreenUpdate",
        "getImageRef",
        "()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "getKeyProfileName",
        "()Ljava/lang/String;",
        "onlyInstallRequiredUpdates",
        "getOnlyInstallRequiredUpdates",
        "setOnlyInstallRequiredUpdates",
        "(Z)V",
        "getRequiredAtMs",
        "()J",
        "getSettingsVersion",
        "getVersion",
        "UpdateComponent",
        "UpdateDurationEstimate",
        "public_release"
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
.field private final components:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/stripe/proto/model/config/MobileClientConfig;

.field private final configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field private final durationEstimate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;

.field private final firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field private final hasConfigUpdate:Z

.field private final hasFirmwareUpdate:Z

.field private final hasIncrementalUpdate:Z

.field private final hasKeyUpdate:Z

.field private final hasSettingsUpdate:Z

.field private final hasSplashScreenUpdate:Z

.field private final imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

.field private final keyProfileName:Ljava/lang/String;

.field private onlyInstallRequiredUpdates:Z

.field private final requiredAtMs:J

.field private final settingsVersion:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/model/config/MobileClientConfig;)V
    .locals 1

    const-string v0, "durationEstimate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->requiredAtMs:J

    .line 29
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->durationEstimate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;

    .line 34
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->version:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 38
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 40
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->keyProfileName:Ljava/lang/String;

    .line 42
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->settingsVersion:Ljava/lang/String;

    .line 44
    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    .line 46
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 53
    :goto_0
    iput-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasConfigUpdate:Z

    if-eqz p6, :cond_1

    move p4, p1

    goto :goto_1

    :cond_1
    move p4, p2

    .line 59
    :goto_1
    iput-boolean p4, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasFirmwareUpdate:Z

    if-eqz p7, :cond_2

    move p5, p1

    goto :goto_2

    :cond_2
    move p5, p2

    .line 65
    :goto_2
    iput-boolean p5, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasKeyUpdate:Z

    if-eqz p8, :cond_3

    move p6, p1

    goto :goto_3

    :cond_3
    move p6, p2

    .line 70
    :goto_3
    iput-boolean p6, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasSettingsUpdate:Z

    if-eqz p9, :cond_4

    move p7, p1

    goto :goto_4

    :cond_4
    move p7, p2

    .line 75
    :goto_4
    iput-boolean p7, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasSplashScreenUpdate:Z

    if-nez p6, :cond_6

    if-eqz p7, :cond_5

    goto :goto_5

    :cond_5
    move p1, p2

    .line 82
    :cond_6
    :goto_5
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasIncrementalUpdate:Z

    .line 89
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->components:Ljava/util/Set;

    if-eqz p1, :cond_7

    .line 91
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->INCREMENTAL:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p5, :cond_8

    .line 94
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->KEYS:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz p3, :cond_9

    .line 97
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->CONFIG:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p4, :cond_a

    .line 100
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->FIRMWARE:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->components:Ljava/util/Set;

    return-object v0
.end method

.method public final getConfig()Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    return-object v0
.end method

.method public final getConfigSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->configSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object v0
.end method

.method public final getDurationEstimate()Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->durationEstimate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;

    return-object v0
.end method

.method public final getFirmwareSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->firmwareSpec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object v0
.end method

.method public final getImageRef()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->imageRef:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    return-object v0
.end method

.method public final getKeyProfileName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->keyProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnlyInstallRequiredUpdates()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->onlyInstallRequiredUpdates:Z

    return v0
.end method

.method public final getRequiredAtMs()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->requiredAtMs:J

    return-wide v0
.end method

.method public final getSettingsVersion()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->settingsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final hasConfigUpdate()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasConfigUpdate:Z

    return v0
.end method

.method public final hasFirmwareUpdate()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasFirmwareUpdate:Z

    return v0
.end method

.method public final hasIncrementalUpdate()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasIncrementalUpdate:Z

    return v0
.end method

.method public final hasKeyUpdate()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasKeyUpdate:Z

    return v0
.end method

.method public final setOnlyInstallRequiredUpdates(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->onlyInstallRequiredUpdates:Z

    return-void
.end method
