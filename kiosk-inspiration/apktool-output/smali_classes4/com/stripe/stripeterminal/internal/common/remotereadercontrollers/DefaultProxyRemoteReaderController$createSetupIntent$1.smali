.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$createSetupIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProxyRemoteReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $createConfiguration:Lcom/stripe/stripeterminal/external/models/CreateConfiguration;

.field final synthetic $setupIntentParameters:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$createSetupIntent$1;->$setupIntentParameters:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$createSetupIntent$1;->$createConfiguration:Lcom/stripe/stripeterminal/external/models/CreateConfiguration;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 2

    const-string v0, "$this$withCurrentController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$createSetupIntent$1;->$setupIntentParameters:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$createSetupIntent$1;->$createConfiguration:Lcom/stripe/stripeterminal/external/models/CreateConfiguration;

    invoke-virtual {p1, v0, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$createSetupIntent$1;->invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1
.end method
