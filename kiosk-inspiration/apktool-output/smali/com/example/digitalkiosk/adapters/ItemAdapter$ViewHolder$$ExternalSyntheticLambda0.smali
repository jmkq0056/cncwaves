.class public final synthetic Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;

.field public final synthetic f$1:Lcom/example/digitalkiosk/models/Item;


# direct methods
.method public synthetic constructor <init>(Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;

    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/example/digitalkiosk/models/Item;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;

    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/example/digitalkiosk/models/Item;

    invoke-static {v0, v1, p1}, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->$r8$lambda$ChyH-QKDn9CfNDtAC7duSyFcRV8(Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;Landroid/view/View;)V

    return-void
.end method
