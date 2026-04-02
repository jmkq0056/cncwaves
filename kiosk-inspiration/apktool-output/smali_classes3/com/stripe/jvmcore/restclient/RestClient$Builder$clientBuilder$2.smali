.class final Lcom/stripe/jvmcore/restclient/RestClient$Builder$clientBuilder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RestClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/restclient/RestClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/OkHttpClient$Builder;",
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
.field final synthetic this$0:Lcom/stripe/jvmcore/restclient/RestClient$Builder;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder$clientBuilder$2;->this$0:Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder$clientBuilder$2;->invoke()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder$clientBuilder$2;->this$0:Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    invoke-static {v0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->access$getGetOkHttpClient$p(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method
