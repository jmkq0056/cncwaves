.class public final Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;
.super Ljava/lang/Object;
.source "ArmadaClientModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\u0007J\u0015\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;",
        "",
        "()V",
        "provideContextProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "plymouthRequestContextProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;",
        "provideContextProvider$sdkmanager_publish",
        "provideHttpClientConfigurator",
        "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
        "headerInterceptor",
        "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;",
        "provideHttpClientConfigurator$sdkmanager_publish",
        "sdkmanager_publish"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;


# direct methods
.method public static synthetic $r8$lambda$L1ybLY_D3dM9RjXzw5ByI78Kfko(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;->provideHttpClientConfigurator$lambda$0(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideHttpClientConfigurator$lambda$0(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "$headerInterceptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$HttpClientConfigurator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lokhttp3/Interceptor;

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final provideContextProvider$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "plymouthRequestContextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    return-object p1
.end method

.method public final provideHttpClientConfigurator$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;)Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "headerInterceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;)V

    return-object v0
.end method
