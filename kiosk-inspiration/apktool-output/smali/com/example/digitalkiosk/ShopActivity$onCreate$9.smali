.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$9;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/example/digitalkiosk/models/KioskSetting;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$9",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/KioskSetting;",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/ShopActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/ShopActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$9;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    .line 368
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
            "Lcom/example/digitalkiosk/models/KioskSetting;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/KioskSetting;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/example/digitalkiosk/models/KioskSetting;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/example/digitalkiosk/models/KioskSetting;

    .line 371
    iget-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$9;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/ShopActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityShopBinding;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    .line 372
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/KioskSetting;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setCurrency(Lcom/example/digitalkiosk/models/Currency;)V

    .line 373
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/KioskSetting;->getBag_active()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setBag_active(Z)V

    .line 375
    sget-object p2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/KioskSetting;->getPrinter_lines()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/MainActivity$Companion;->setPrintLines(Ljava/util/ArrayList;)V

    .line 377
    sget-object p1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object p2, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/HomeActivity$Companion;->getSelected_language()I

    move-result p2

    new-instance v0, Lcom/example/digitalkiosk/ShopActivity$onCreate$9$onResponse$1;

    iget-object v1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$9;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-direct {v0, v1}, Lcom/example/digitalkiosk/ShopActivity$onCreate$9$onResponse$1;-><init>(Lcom/example/digitalkiosk/ShopActivity;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-virtual {p1, p2, v0}, Lcom/example/digitalkiosk/network/ApiClient;->get_categories$app_release(ILretrofit2/Callback;)V

    .line 392
    sget-object p1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object p2, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/HomeActivity$Companion;->getSelected_language()I

    move-result p2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/example/digitalkiosk/ShopActivity$onCreate$9$onResponse$2;

    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$9;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-direct {v1, v2}, Lcom/example/digitalkiosk/ShopActivity$onCreate$9$onResponse$2;-><init>(Lcom/example/digitalkiosk/ShopActivity;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-virtual {p1, p2, v0, v1}, Lcom/example/digitalkiosk/network/ApiClient;->get_most_selling_items$app_release(ILjava/lang/String;Lretrofit2/Callback;)V

    return-void
.end method
