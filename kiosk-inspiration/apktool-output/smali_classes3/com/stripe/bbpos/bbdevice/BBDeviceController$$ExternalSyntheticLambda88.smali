.class public final synthetic Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda88;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field public final synthetic f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda88;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda88;->f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda88;->f$0:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$$ExternalSyntheticLambda88;->f$1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->$r8$lambda$TyhwNUHrPLUbzRd_JoivRbcxRKo(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)V

    return-void
.end method
