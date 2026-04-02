.class public final Lcom/stripe/core/readerupdate/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/UpdateManager$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJB\u0010\u000b\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/UpdateManager;",
        "",
        "()V",
        "<set-?>",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "summary",
        "getSummary",
        "()Lcom/stripe/core/readerupdate/UpdateSummary;",
        "endOperation",
        "",
        "startCheckForUpdates",
        "startInstallUpdate",
        "fullConfig",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "configSpec",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "firmwareSpec",
        "keyProfileName",
        "",
        "settingsVersion",
        "imageRef",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "Companion",
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
.field public static final Companion:Lcom/stripe/core/readerupdate/UpdateManager$Companion;

.field public static final TAG:Ljava/lang/String; = "UpdateManager"


# instance fields
.field private summary:Lcom/stripe/core/readerupdate/UpdateSummary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/readerupdate/UpdateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/UpdateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/readerupdate/UpdateManager;->Companion:Lcom/stripe/core/readerupdate/UpdateManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    sget-object v1, Lcom/stripe/core/readerupdate/UpdateState;->NONE:Lcom/stripe/core/readerupdate/UpdateState;

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;-><init>(Lcom/stripe/core/readerupdate/UpdateState;)V

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->build()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateManager;->summary:Lcom/stripe/core/readerupdate/UpdateSummary;

    return-void
.end method


# virtual methods
.method public final endOperation()V
    .locals 3

    .line 54
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "UpdateManager"

    const-string v2, "endOperation"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    sget-object v1, Lcom/stripe/core/readerupdate/UpdateState;->NONE:Lcom/stripe/core/readerupdate/UpdateState;

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;-><init>(Lcom/stripe/core/readerupdate/UpdateState;)V

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->build()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateManager;->summary:Lcom/stripe/core/readerupdate/UpdateSummary;

    return-void
.end method

.method public final getSummary()Lcom/stripe/core/readerupdate/UpdateSummary;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateManager;->summary:Lcom/stripe/core/readerupdate/UpdateSummary;

    return-object v0
.end method

.method public final startCheckForUpdates()V
    .locals 3

    .line 28
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "UpdateManager"

    const-string v2, "startCheckForUpdates"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    sget-object v1, Lcom/stripe/core/readerupdate/UpdateState;->CHECKING_FOR_UPDATE:Lcom/stripe/core/readerupdate/UpdateState;

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;-><init>(Lcom/stripe/core/readerupdate/UpdateState;)V

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->build()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateManager;->summary:Lcom/stripe/core/readerupdate/UpdateSummary;

    return-void
.end method

.method public final startInstallUpdate(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)V
    .locals 3

    .line 41
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "UpdateManager"

    const-string v2, "startInstallUpdate"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    sget-object v1, Lcom/stripe/core/readerupdate/UpdateState;->INSTALLING_UPDATE:Lcom/stripe/core/readerupdate/UpdateState;

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;-><init>(Lcom/stripe/core/readerupdate/UpdateState;)V

    .line 44
    invoke-virtual {v0, p1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setFullConfig(Lcom/stripe/proto/model/config/MobileClientConfig;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setConfigSpec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p3}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setFirmwareSpec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p4}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setKeyProfileName(Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p5}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setSettingsVersion(Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1, p6}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setImageRef(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->build()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateManager;->summary:Lcom/stripe/core/readerupdate/UpdateSummary;

    return-void
.end method
