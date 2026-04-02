.class public final Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "ItemConfigFragment.kt"

# interfaces
.implements Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$2",
        "Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;",
        "onClick",
        "",
        "slug",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "slug"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 94
    :cond_1
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/models/ItemToAdd;->setSelected_size(Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->dismiss()V

    .line 96
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getOnSubmitListener$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getOnSubmitListener$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;->onSubmit()V

    :cond_3
    return-void
.end method
