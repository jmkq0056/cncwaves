.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$8;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$8",
        "Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;",
        "onClick",
        "",
        "model",
        "Lcom/example/digitalkiosk/models/Category;",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/ShopActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/ShopActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$8;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/example/digitalkiosk/models/Category;)V
    .locals 5

    .line 340
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getProcessing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getSelectedSubCategory()Lcom/example/digitalkiosk/models/Category;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 341
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setSelectedSubCategory(Lcom/example/digitalkiosk/models/Category;)V

    .line 342
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$8;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {v0}, Lcom/example/digitalkiosk/ShopActivity;->access$getSubCategoryAdapter$p(Lcom/example/digitalkiosk/ShopActivity;)Lcom/example/digitalkiosk/adapters/SubCategoryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter;->notifyDataSetChanged()V

    :cond_0
    if-nez p1, :cond_1

    .line 343
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getSelectedCategory()Lcom/example/digitalkiosk/models/Category;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getSelectedSubCategory()Lcom/example/digitalkiosk/models/Category;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 345
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setProcessing(Z)V

    .line 346
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Category;->getId()I

    move-result p1

    sget-object v1, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/HomeActivity$Companion;->getSelected_language()I

    move-result v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getID(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/example/digitalkiosk/ShopActivity$onCreate$8$onClick$1;

    iget-object v4, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$8;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-direct {v3, v4}, Lcom/example/digitalkiosk/ShopActivity$onCreate$8$onClick$1;-><init>(Lcom/example/digitalkiosk/ShopActivity;)V

    check-cast v3, Lretrofit2/Callback;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/example/digitalkiosk/network/ApiClient;->get_category_items$app_release(IILjava/lang/String;Lretrofit2/Callback;)V

    return-void

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$8;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$getItems$p(Lcom/example/digitalkiosk/ShopActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 362
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$8;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity;->itemsUpdated()V

    :cond_3
    return-void
.end method
