.class final Lcom/stripe/cots/common/CotsClient$activate$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CotsClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/cots/common/CotsClient;->activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.cots.common.CotsClient"
    f = "CotsClient.kt"
    i = {}
    l = {
        0x95
    }
    m = "activate"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/stripe/cots/common/CotsClient;


# direct methods
.method constructor <init>(Lcom/stripe/cots/common/CotsClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/cots/common/CotsClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/common/CotsClient$activate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/cots/common/CotsClient$activate$1;->this$0:Lcom/stripe/cots/common/CotsClient;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lcom/stripe/cots/common/CotsClient$activate$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/cots/common/CotsClient$activate$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/cots/common/CotsClient$activate$1;->label:I

    iget-object v0, p0, Lcom/stripe/cots/common/CotsClient$activate$1;->this$0:Lcom/stripe/cots/common/CotsClient;

    const/4 v6, 0x0

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/stripe/cots/common/CotsClient;->activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
