.class public final synthetic Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda130;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda130;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean p2, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda130;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda130;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda130;->f$1:Z

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->$r8$lambda$K3mdHm5hrrpnlaS4PetUQj84g4g(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Z)V

    return-void
.end method
