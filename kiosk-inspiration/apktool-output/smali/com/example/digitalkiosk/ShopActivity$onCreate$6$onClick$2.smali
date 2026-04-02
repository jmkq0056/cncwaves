.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity$onCreate$6;->onClick(Lcom/example/digitalkiosk/models/Item;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/example/digitalkiosk/models/ItemDetails;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/ItemDetails;",
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
.field final synthetic $coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $item:Lcom/example/digitalkiosk/models/Item;

.field final synthetic $moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/example/digitalkiosk/ShopActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/models/Item;Lcom/example/digitalkiosk/ShopActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/digitalkiosk/models/Item;",
            "Lcom/example/digitalkiosk/ShopActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->$item:Lcom/example/digitalkiosk/models/Item;

    iput-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    iput-object p3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->$moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->$coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 255
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
            "Lcom/example/digitalkiosk/models/ItemDetails;",
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/ItemDetails;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/example/digitalkiosk/models/ItemDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/example/digitalkiosk/models/ItemDetails;

    .line 258
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, "iterator(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/example/digitalkiosk/models/ItemSide;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_0
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    new-instance v0, Lcom/example/digitalkiosk/models/ItemToAdd;

    iget-object v1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->$item:Lcom/example/digitalkiosk/models/Item;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->$item:Lcom/example/digitalkiosk/models/Item;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/models/Item;->getType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ""

    invoke-direct/range {v0 .. v6}, Lcom/example/digitalkiosk/models/ItemToAdd;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setItemToAdd(Lcom/example/digitalkiosk/models/ItemToAdd;)V

    .line 263
    const-string p2, "API"

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getExtras()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    const-string v1, "fm"

    const/4 v2, 0x0

    if-lez p2, :cond_2

    .line 265
    new-instance p2, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment;

    iget-object v3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/ShopActivity;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-direct {p2, p1, v3}, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment;-><init>(Lcom/example/digitalkiosk/models/ItemDetails;Landroid/os/CountDownTimer;)V

    .line 266
    invoke-virtual {p2, v2}, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment;->setCancelable(Z)V

    .line 267
    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {v2}, Lcom/example/digitalkiosk/ShopActivity;->access$getFm$p(Lcom/example/digitalkiosk/ShopActivity;)Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    const-string v1, "Extras Fragment"

    invoke-virtual {p2, v0, v1}, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;

    iget-object v1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->$moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->$coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;-><init>(Lcom/example/digitalkiosk/models/ItemDetails;Lcom/example/digitalkiosk/ShopActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$OnSubmitListener;

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment;->setOnSubmitListener(Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$OnSubmitListener;)V

    return-void

    .line 300
    :cond_2
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_4

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSizes()Lcom/example/digitalkiosk/models/ItemSizes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemSizes;->getMedium()Lcom/example/digitalkiosk/models/ItemSize;

    move-result-object p2

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemSize;->getEnabled()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSizes()Lcom/example/digitalkiosk/models/ItemSizes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemSizes;->getLarge()Lcom/example/digitalkiosk/models/ItemSize;

    move-result-object p2

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemSize;->getEnabled()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSizes()Lcom/example/digitalkiosk/models/ItemSizes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemSizes;->getXl()Lcom/example/digitalkiosk/models/ItemSize;

    move-result-object p2

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemSize;->getEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    return-void

    .line 301
    :cond_4
    :goto_2
    new-instance p2, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iget-object v3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/ShopActivity;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-direct {p2, p1, v3}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;-><init>(Lcom/example/digitalkiosk/models/ItemDetails;Landroid/os/CountDownTimer;)V

    .line 302
    invoke-virtual {p2, v2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->setCancelable(Z)V

    .line 303
    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {v2}, Lcom/example/digitalkiosk/ShopActivity;->access$getFm$p(Lcom/example/digitalkiosk/ShopActivity;)Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    const-string v1, "Config Fragment"

    invoke-virtual {p2, v0, v1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 304
    new-instance v0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$2;

    iget-object v1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->$moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    iget-object v3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->$coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$2;-><init>(Lcom/example/digitalkiosk/models/ItemDetails;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/example/digitalkiosk/ShopActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->setOnSubmitListener(Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;)V

    return-void
.end method
