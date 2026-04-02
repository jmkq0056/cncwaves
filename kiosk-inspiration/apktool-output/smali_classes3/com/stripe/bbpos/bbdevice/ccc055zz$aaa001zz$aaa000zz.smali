.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz$aaa000zz;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Landroid/bluetooth/BluetoothDevice;[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScanFailed(I)V
    .locals 0

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Landroid/bluetooth/BluetoothDevice;[B)V

    return-void
.end method
