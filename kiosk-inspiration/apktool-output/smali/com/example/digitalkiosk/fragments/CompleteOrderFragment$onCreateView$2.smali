.class public final Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "CompleteOrderFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/example/digitalkiosk/models/Cart;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/Cart;",
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
.field final synthetic $shopActivity:Lcom/example/digitalkiosk/ShopActivity;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/ShopActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;->$shopActivity:Lcom/example/digitalkiosk/ShopActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Cart;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Cart;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/example/digitalkiosk/models/Cart;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/example/digitalkiosk/models/Cart;

    .line 99
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {p2}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->toPay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;->$shopActivity:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Cart;->getTotal()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/example/digitalkiosk/ShopActivity;->convertAmountToFormat(F)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Cart;->getTotal()F

    move-result p2

    const/4 v2, 0x0

    cmpl-float p2, p2, v2

    const/4 v3, 0x0

    if-lez p2, :cond_2

    .line 101
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {p2}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    iget-object p2, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->toPay:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Cart;->getTotal()F

    move-result v0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {p2, v3}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$setFreeOrder$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Z)V

    .line 103
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {p2}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getOrderItems$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {p2}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getOrderItems$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Cart;->getItems()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getOrderAdapter$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Lcom/example/digitalkiosk/adapters/OrderAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/example/digitalkiosk/adapters/OrderAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method
