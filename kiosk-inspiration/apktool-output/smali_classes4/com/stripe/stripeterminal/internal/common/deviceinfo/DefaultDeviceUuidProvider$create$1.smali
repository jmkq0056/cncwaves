.class final Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultDeviceUuidProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->create()Lcom/stripe/terminal/appinfo/DeviceUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.stripeterminal.internal.common.deviceinfo.DefaultDeviceUuidProvider$create$1"
    f = "DefaultDeviceUuidProvider.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;->this$0:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;->this$0:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;

    invoke-direct {p1, v0, p2}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;-><init>(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 38
    iget v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;->this$0:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->access$getDeviceUuidSharedPrefsProvider$p(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;)Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;->get()Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;->this$0:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;

    .line 40
    const-string v1, "pref_unique_id"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->access$createDeviceUuid(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
