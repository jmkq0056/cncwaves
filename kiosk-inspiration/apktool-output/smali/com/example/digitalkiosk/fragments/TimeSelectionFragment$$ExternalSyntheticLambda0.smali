.class public final synthetic Lcom/example/digitalkiosk/fragments/TimeSelectionFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/example/digitalkiosk/fragments/TimeSelectionFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/NumberPicker;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/example/digitalkiosk/fragments/TimeSelectionFragment;ILandroid/widget/NumberPicker;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/TimeSelectionFragment$$ExternalSyntheticLambda0;->f$0:Lcom/example/digitalkiosk/fragments/TimeSelectionFragment;

    iput p2, p0, Lcom/example/digitalkiosk/fragments/TimeSelectionFragment$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/TimeSelectionFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/NumberPicker;

    iput-object p4, p0, Lcom/example/digitalkiosk/fragments/TimeSelectionFragment$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TimeSelectionFragment$$ExternalSyntheticLambda0;->f$0:Lcom/example/digitalkiosk/fragments/TimeSelectionFragment;

    iget v1, p0, Lcom/example/digitalkiosk/fragments/TimeSelectionFragment$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/example/digitalkiosk/fragments/TimeSelectionFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/NumberPicker;

    iget-object v3, p0, Lcom/example/digitalkiosk/fragments/TimeSelectionFragment$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/example/digitalkiosk/fragments/TimeSelectionFragment;->$r8$lambda$IngNW10R8u1YCtzsiJAZGvxX9_c(Lcom/example/digitalkiosk/fragments/TimeSelectionFragment;ILandroid/widget/NumberPicker;Ljava/util/ArrayList;Landroid/widget/NumberPicker;II)V

    return-void
.end method
