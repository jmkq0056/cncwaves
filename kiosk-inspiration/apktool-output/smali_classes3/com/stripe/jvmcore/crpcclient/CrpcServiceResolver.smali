.class public final Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;
.super Ljava/lang/Object;
.source "CrpcServiceResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ServiceType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u0011B5\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0018\u0010\u0008\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0004\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0002\u0010\u000bJ\u001f\u0010\u000c\u001a\u00028\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0010R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0008\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0004\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;",
        "ServiceType",
        "",
        "crpcClientBuilder",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
        "resolutionStrategy",
        "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;",
        "serviceProvider",
        "Lkotlin/Function1;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "(Ldagger/Lazy;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;Lkotlin/jvm/functions/Function1;)V",
        "resolve",
        "ipAddress",
        "",
        "baseUrl",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;",
        "ResolutionStrategy",
        "crpcclient"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final crpcClientBuilder:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final resolutionStrategy:Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;

.field private final serviceProvider:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;TServiceType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;+TServiceType;>;)V"
        }
    .end annotation

    const-string v0, "crpcClientBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolutionStrategy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;->crpcClientBuilder:Ldagger/Lazy;

    .line 12
    iput-object p2, p0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;->resolutionStrategy:Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;

    .line 13
    iput-object p3, p0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;->serviceProvider:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TServiceType;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;->resolutionStrategy:Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;->serviceProvider:Lkotlin/jvm/functions/Function1;

    .line 18
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;->crpcClientBuilder:Ldagger/Lazy;

    new-instance v1, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$resolve$1;

    invoke-direct {v1, p1}, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$resolve$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/dagger/LazyExtKt;->lazilyMap(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object p1

    .line 17
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
