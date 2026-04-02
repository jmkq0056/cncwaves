.class Lcom/stripe/bbpos/bbdevice/ccc041zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aaa000(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    .line 1
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    return v0

    :cond_3
    if-nez p1, :cond_4

    return v1

    :cond_4
    if-nez p2, :cond_5

    return v2

    .line 10
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc041zz;->aaa000(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method
