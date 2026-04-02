.class public final Lcom/stripe/jvmcore/client/dagger/DefaultHttpClientConfigurator;
.super Ljava/lang/Object;
.source "HttpClientConfigurator.kt"

# interfaces
.implements Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010\u000b\u001a\u00020\u000c*\u00020\u000cH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/jvmcore/client/dagger/DefaultHttpClientConfigurator;",
        "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
        "userAgentProvider",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "(Lcom/stripe/jvmcore/environment/UserAgentProvider;)V",
        "userAgent",
        "Lcom/stripe/proto/model/rest/UserAgent;",
        "getUserAgent",
        "()Lcom/stripe/proto/model/rest/UserAgent;",
        "userAgent$delegate",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "configure",
        "Lokhttp3/OkHttpClient$Builder;",
        "client"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 19
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "userAgent"

    const-string v3, "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;"

    const-class v4, Lcom/stripe/jvmcore/client/dagger/DefaultHttpClientConfigurator;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/jvmcore/client/dagger/DefaultHttpClientConfigurator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/environment/UserAgentProvider;)V
    .locals 1

    const-string v0, "userAgentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/stripe/jvmcore/client/dagger/DefaultHttpClientConfigurator;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    return-void
.end method

.method private final getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/DefaultHttpClientConfigurator;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    sget-object v1, Lcom/stripe/jvmcore/client/dagger/DefaultHttpClientConfigurator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/jvmcore/environment/UserAgentProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public configure(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/stripe/jvmcore/restclient/CustomHeadersInterceptor;

    .line 24
    invoke-direct {p0}, Lcom/stripe/jvmcore/client/dagger/DefaultHttpClientConfigurator;->getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/stripe/jvmcore/environment/EnvironmentKt;->toRequestHeaders(Lcom/stripe/proto/model/rest/UserAgent;Z)Ljava/util/Map;

    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/restclient/CustomHeadersInterceptor;-><init>(Ljava/util/Map;)V

    check-cast v0, Lokhttp3/Interceptor;

    .line 22
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p1
.end method
