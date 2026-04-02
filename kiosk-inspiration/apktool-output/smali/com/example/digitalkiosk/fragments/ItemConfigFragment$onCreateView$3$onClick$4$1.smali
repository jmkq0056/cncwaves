.class final Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$4$1;
.super Ljava/lang/Object;
.source "ItemConfigFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->onClick(Lcom/example/digitalkiosk/models/Item;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$4$1;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$4$1;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mandatoryWarning:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
