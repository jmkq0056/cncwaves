.class public final synthetic Lcom/stripe/stripeterminal/dagger/ArmadaClientModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;


# instance fields
.field public final synthetic f$0:Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;

    return-void
.end method


# virtual methods
.method public final configure(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;

    invoke-static {v0, p1}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;->$r8$lambda$L1ybLY_D3dM9RjXzw5ByI78Kfko(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    return-object p1
.end method
