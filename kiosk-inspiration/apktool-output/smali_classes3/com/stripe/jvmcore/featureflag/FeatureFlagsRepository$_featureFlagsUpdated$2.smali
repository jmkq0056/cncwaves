.class final Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$_featureFlagsUpdated$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FeatureFlagsRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;-><init>(Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/flow/MutableStateFlow<",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
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
.field final synthetic this$0:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$_featureFlagsUpdated$2;->this$0:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$_featureFlagsUpdated$2;->invoke()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$_featureFlagsUpdated$2;->this$0:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    return-object v0
.end method
