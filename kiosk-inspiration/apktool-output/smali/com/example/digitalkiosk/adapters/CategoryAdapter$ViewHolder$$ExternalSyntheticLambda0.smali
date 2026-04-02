.class public final synthetic Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;

.field public final synthetic f$1:Lcom/example/digitalkiosk/models/Category;


# direct methods
.method public synthetic constructor <init>(Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;

    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/example/digitalkiosk/models/Category;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;

    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/example/digitalkiosk/models/Category;

    invoke-static {v0, v1, p1}, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->$r8$lambda$4Iz3SK8D0ue6fojS5wjjNUfUees(Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;Landroid/view/View;)V

    return-void
.end method
