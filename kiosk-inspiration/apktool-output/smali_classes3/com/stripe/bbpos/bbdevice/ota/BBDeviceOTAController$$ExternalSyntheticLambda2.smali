.class public final synthetic Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public final synthetic f$1:Ljava/util/Hashtable;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda2;->f$0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda2;->f$1:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda2;->f$0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda2;->f$1:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->$r8$lambda$x5mtUQhkpBqqagoQ5Z835ZFfaQQ(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V

    return-void
.end method
