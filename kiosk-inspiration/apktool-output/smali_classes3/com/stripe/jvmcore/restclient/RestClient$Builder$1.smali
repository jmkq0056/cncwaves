.class final synthetic Lcom/stripe/jvmcore/restclient/RestClient$Builder$1;
.super Lkotlin/jvm/internal/PropertyReference0Impl;
.source "RestClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/restclient/RestClient$Builder;-><init>(Lcom/stripe/jvmcore/restclient/RestClient;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-class v2, Lcom/stripe/jvmcore/restclient/RestClient;

    const-string v4, "getOkHttpClient()Lokhttp3/OkHttpClient;"

    const/4 v5, 0x0

    const-string v3, "okHttpClient"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient;

    invoke-static {v0}, Lcom/stripe/jvmcore/restclient/RestClient;->access$getOkHttpClient$p(Lcom/stripe/jvmcore/restclient/RestClient;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
