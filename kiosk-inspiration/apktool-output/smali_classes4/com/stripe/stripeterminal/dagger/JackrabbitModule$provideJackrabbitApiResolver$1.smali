.class final Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideJackrabbitApiResolver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JackrabbitModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->provideJackrabbitApiResolver(Ldagger/Lazy;)Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ldagger/Lazy<",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        ">;",
        "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
        "it",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideJackrabbitApiResolver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideJackrabbitApiResolver$1;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideJackrabbitApiResolver$1;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideJackrabbitApiResolver$1;->INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideJackrabbitApiResolver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ldagger/Lazy;)Lcom/stripe/proto/api/sdk/JackRabbitApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/stripe/proto/api/sdk/JackRabbitApi;

    invoke-direct {v0, p1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ldagger/Lazy;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideJackrabbitApiResolver$1;->invoke(Ldagger/Lazy;)Lcom/stripe/proto/api/sdk/JackRabbitApi;

    move-result-object p1

    return-object p1
.end method
