.class final Lcom/stripe/stripeterminal/DefaultUserAgentProvider$userAgent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultUserAgentProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/DefaultUserAgentProvider;-><init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/proto/model/rest/UserAgent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/proto/model/rest/UserAgent;",
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/DefaultUserAgentProvider;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/DefaultUserAgentProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider$userAgent$2;->this$0:Lcom/stripe/stripeterminal/DefaultUserAgentProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/proto/model/rest/UserAgent;
    .locals 7

    .line 13
    new-instance v0, Lcom/stripe/proto/model/rest/UserAgent;

    .line 14
    iget-object v1, p0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider$userAgent$2;->this$0:Lcom/stripe/stripeterminal/DefaultUserAgentProvider;

    invoke-static {v1}, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->access$getAppInfo(Lcom/stripe/stripeterminal/DefaultUserAgentProvider;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getClientType()Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider$userAgent$2;->this$0:Lcom/stripe/stripeterminal/DefaultUserAgentProvider;

    invoke-static {v2}, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->access$getAppInfo(Lcom/stripe/stripeterminal/DefaultUserAgentProvider;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider$userAgent$2;->this$0:Lcom/stripe/stripeterminal/DefaultUserAgentProvider;

    invoke-static {v3}, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->access$getAppInfo(Lcom/stripe/stripeterminal/DefaultUserAgentProvider;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/terminal/appinfo/DeviceUuid;->getValue()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/rest/UserAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/DefaultUserAgentProvider$userAgent$2;->invoke()Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v0

    return-object v0
.end method
