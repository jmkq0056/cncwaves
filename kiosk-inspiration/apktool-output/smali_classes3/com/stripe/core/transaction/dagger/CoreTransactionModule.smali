.class public final Lcom/stripe/core/transaction/dagger/CoreTransactionModule;
.super Ljava/lang/Object;
.source "CoreTransactionModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0008\u0001\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/core/transaction/dagger/CoreTransactionModule;",
        "",
        "()V",
        "provideAuthenticatedRestClient",
        "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
        "baseRestClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "userAgentProvider",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "baseFilesRestClient",
        "transaction_release"
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
.field public static final INSTANCE:Lcom/stripe/core/transaction/dagger/CoreTransactionModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule;

    invoke-direct {v0}, Lcom/stripe/core/transaction/dagger/CoreTransactionModule;-><init>()V

    sput-object v0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule;->INSTANCE:Lcom/stripe/core/transaction/dagger/CoreTransactionModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideAuthenticatedRestClient(Ldagger/Lazy;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/core/transaction/TransactionRepository;Ldagger/Lazy;)Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Mainland;
        .end annotation
    .end param
    .param p4    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Files;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "baseRestClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseFilesRestClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 27
    check-cast p3, Lcom/stripe/restclient/CoreTransactionRepository;

    .line 23
    invoke-direct {v0, p1, p4, p2, p3}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;-><init>(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/restclient/CoreTransactionRepository;)V

    return-object v0
.end method
