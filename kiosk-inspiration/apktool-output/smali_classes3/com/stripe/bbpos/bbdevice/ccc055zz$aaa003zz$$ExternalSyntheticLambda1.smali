.class public final synthetic Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda1;->f$0:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda1;->f$0:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->$r8$lambda$81CAY3t7T0zwMba3VhLoR3VQqes(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
