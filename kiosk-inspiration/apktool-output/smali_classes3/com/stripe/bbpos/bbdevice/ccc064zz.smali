.class final Lcom/stripe/bbpos/bbdevice/ccc064zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;


# instance fields
.field private final aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc064zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    return-void
.end method


# virtual methods
.method public onBarcodeReaderConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc064zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa084()V

    return-void
.end method

.method public onBarcodeReaderDisconnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc064zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa085()V

    return-void
.end method

.method public onReturnBarcode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc064zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa017(Ljava/lang/String;)V

    return-void
.end method
