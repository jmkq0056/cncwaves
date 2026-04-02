.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "IpReaderController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->collectInputsSuspendUntilComplete$common_publish(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController"
    f = "IpReaderController.kt"
    i = {
        0x0
    }
    l = {
        0xcc
    }
    m = "collectInputsSuspendUntilComplete$common_publish"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->label:I

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->collectInputsSuspendUntilComplete$common_publish(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
