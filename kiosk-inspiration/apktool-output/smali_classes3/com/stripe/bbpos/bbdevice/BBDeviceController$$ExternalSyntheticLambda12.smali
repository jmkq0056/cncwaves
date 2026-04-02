.class public final synthetic Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field public final synthetic f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda12;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda12;->f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;

    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda12;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda12;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda12;->f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;

    iget v2, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda12;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->$r8$lambda$dN8wd8FhzuhIKnmH03obl_NG5ec(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;I)V

    return-void
.end method
