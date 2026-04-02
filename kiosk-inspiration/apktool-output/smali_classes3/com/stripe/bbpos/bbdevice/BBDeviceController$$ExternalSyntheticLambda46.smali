.class public final synthetic Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field public final synthetic f$1:Lcom/stripe/bbpos/bbdevice/CAPK;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/CAPK;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda46;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda46;->f$1:Lcom/stripe/bbpos/bbdevice/CAPK;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda46;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda46;->f$1:Lcom/stripe/bbpos/bbdevice/CAPK;

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->$r8$lambda$WXxUSBtuNlZtqVe_Jy1j_DS478c(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/CAPK;)V

    return-void
.end method
