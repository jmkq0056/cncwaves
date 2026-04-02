.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$setReaderSettings$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProxyRemoteReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
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
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
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
.field final synthetic $params:Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$setReaderSettings$1;->$params:Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 1

    const-string v0, "$this$withCurrentController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$setReaderSettings$1;->$params:Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 212
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$setReaderSettings$1;->invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    move-result-object p1

    return-object p1
.end method
