.class final Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$getServerDrivenMainlandApi$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthenticatedRestClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getServerDrivenMainlandApi(Ljava/lang/String;)Lcom/stripe/proto/api/rest/MainlandApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/jvmcore/restclient/RestClient$Builder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/stripe/jvmcore/restclient/RestClient$Builder;",
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
.field final synthetic $sessionToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$getServerDrivenMainlandApi$1;->this$0:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$getServerDrivenMainlandApi$1;->$sessionToken:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$getServerDrivenMainlandApi$1;->invoke(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)V
    .locals 2

    const-string v0, "$this$buildRestClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$getServerDrivenMainlandApi$1;->this$0:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$getServerDrivenMainlandApi$1;->$sessionToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->access$authHeaders(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomHeaders(Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    return-void
.end method
