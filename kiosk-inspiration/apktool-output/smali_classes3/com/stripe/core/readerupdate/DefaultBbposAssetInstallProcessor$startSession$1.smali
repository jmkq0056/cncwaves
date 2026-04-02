.class final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "BbposAssetInstallProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->startSession(Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor"
    f = "BbposAssetInstallProcessor.kt"
    i = {}
    l = {
        0x117
    }
    m = "startSession"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;


# direct methods
.method constructor <init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->label:I

    iget-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$startSession(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
