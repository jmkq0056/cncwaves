.class public final synthetic Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->$r8$lambda$CXsb7g7iBO0FtlXX8dB1k8GZoDY(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method
