.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$13;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;


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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$13",
        "Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;",
        "onRemove",
        "",
        "model",
        "Lcom/example/digitalkiosk/models/CartItem;",
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

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$13;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(Lcom/example/digitalkiosk/models/CartItem;)V
    .locals 5

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Voucher;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 439
    :goto_1
    sget-object v1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/CartItem;->getId()I

    move-result p1

    sget-object v2, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/HomeActivity$Companion;->getSelected_language()I

    move-result v2

    new-instance v3, Lcom/example/digitalkiosk/ShopActivity$onCreate$13$onRemove$1;

    iget-object v4, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$13;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-direct {v3, v4}, Lcom/example/digitalkiosk/ShopActivity$onCreate$13$onRemove$1;-><init>(Lcom/example/digitalkiosk/ShopActivity;)V

    check-cast v3, Lretrofit2/Callback;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/example/digitalkiosk/network/ApiClient;->remove_from_cart$app_release(IIILretrofit2/Callback;)V

    return-void
.end method
