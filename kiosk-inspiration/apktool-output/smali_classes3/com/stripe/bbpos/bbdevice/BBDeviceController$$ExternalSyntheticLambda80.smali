.class public final synthetic Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda80;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field public final synthetic f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda80;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda80;->f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda80;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda80;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda80;->f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda80;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->$r8$lambda$oEz9NV1hUEbA6Oghw7dV17Hz5lc(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void
.end method
