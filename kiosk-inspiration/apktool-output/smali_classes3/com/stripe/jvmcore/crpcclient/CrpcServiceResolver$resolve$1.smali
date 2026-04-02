.class final Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$resolve$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CrpcServiceResolver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "ServiceType",
        "it",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
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
.field final synthetic $url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$YP2RA7eKgwv0UbATSh398UaYKGs(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$resolve$1;->invoke$lambda$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$resolve$1;->$url:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final invoke(Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$resolve$1;->$url:Ljava/lang/String;

    new-instance v1, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$resolve$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$resolve$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->baseUrlProvider(Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->build()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$resolve$1;->invoke(Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object p1

    return-object p1
.end method
