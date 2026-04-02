.class public final synthetic Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field public final synthetic f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

.field public final synthetic f$2:Ljava/util/Hashtable;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;Ljava/util/Hashtable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda3;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda3;->f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda3;->f$2:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda3;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda3;->f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda3;->f$2:Ljava/util/Hashtable;

    invoke-static {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->$r8$lambda$vUE3a-YA8Mg8Dzvuv2FMj5IKtkM(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;Ljava/util/Hashtable;)V

    return-void
.end method
