.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$1;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopActivity.kt\ncom/example/digitalkiosk/ShopActivity$onCreate$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,711:1\n1#2:712\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$1",
        "Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;",
        "onClick",
        "",
        "category",
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

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3

    if-eqz p1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {v0}, Lcom/example/digitalkiosk/ShopActivity;->access$getCategories$p(Lcom/example/digitalkiosk/ShopActivity;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/example/digitalkiosk/models/Category;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/models/Category;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/example/digitalkiosk/models/Category;

    if-eqz v1, :cond_2

    .line 136
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {p1, v1}, Lcom/example/digitalkiosk/ShopActivity;->selectCategory(Lcom/example/digitalkiosk/models/Category;)V

    :cond_2
    return-void
.end method
