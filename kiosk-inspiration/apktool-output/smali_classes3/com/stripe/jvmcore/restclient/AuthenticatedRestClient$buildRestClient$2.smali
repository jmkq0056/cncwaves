.class final Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthenticatedRestClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildRestClient$transaction(Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "it",
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
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/jvmcore/restclient/RestClient$Builder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestClient$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$2;->this$0:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$2;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/jvmcore/restclient/RestClient;)Lcom/stripe/jvmcore/restclient/RestClient;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$2;->this$0:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 414
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient;->toBuilder()Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 415
    invoke-static {v0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->access$addStripeCustomHeaders(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/jvmcore/restclient/RestClient$Builder;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 416
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$2;->$block:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->build()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 413
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestClient;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$2;->invoke(Lcom/stripe/jvmcore/restclient/RestClient;)Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object p1

    return-object p1
.end method
