.class public final Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;
.super Ljava/lang/Object;
.source "CompleteOrderFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processFreeOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/example/digitalkiosk/models/Order;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/Order;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $originalTab:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;


# direct methods
.method public static synthetic $r8$lambda$mopZ9Nzu7ZkSjeviLJJXVV7UOXQ(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;->onFailure$lambda$1(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;->$originalTab:Ljava/lang/Integer;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onFailure$lambda$1(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processFreeOrder()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;->$originalTab:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTab(Ljava/lang/Integer;)V

    .line 228
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    iget-object p1, p2, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    new-instance v0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/example/digitalkiosk/models/Order;

    .line 217
    new-instance p2, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;-><init>(Lcom/example/digitalkiosk/models/Order;Landroid/os/CountDownTimer;)V

    const/4 p1, 0x0

    .line 218
    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;->setCancelable(Z)V

    .line 219
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    const-string v0, "Success Fragment"

    invoke-virtual {p2, p1, v0}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
