.class final Lcom/stripe/bbpos/bbdevice/ccc054zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;
    }
.end annotation


# instance fields
.field aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

.field aaa001:I

.field aaa002:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa001:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa002:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa001()V

    return-void
.end method


# virtual methods
.method aaa000()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_0

    .line 3
    const-string v0, "Incorrect Passkey error."

    return-object v0

    .line 4
    :cond_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_1

    .line 5
    const-string v0, "This device does not support BLE Secure Connection (Bluetooth 4.2)."

    return-object v0

    .line 6
    :cond_1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_2

    .line 7
    const-string v0, "The MPOS reader already paired with another device."

    return-object v0

    .line 8
    :cond_2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_3

    .line 9
    const-string v0, "Pairing Error (Code=5700)"

    return-object v0

    .line 10
    :cond_3
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa005:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_4

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pairing Error (Code=58"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa001:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_4
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa006:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_5

    .line 13
    const-string v0, "BLE 4.2 secure connection setup package CRC error"

    return-object v0

    .line 14
    :cond_5
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa007:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_6

    .line 15
    const-string v0, "BLE 4.2 secure connection setup package incorrect length"

    return-object v0

    .line 16
    :cond_6
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa009:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_7

    .line 17
    const-string v0, "Error Code 119 - The reader is already connected to another device via USB."

    return-object v0

    .line 18
    :cond_7
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa010:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_8

    .line 19
    const-string v0, "Error Code 120 - The reader is already connected to another device via Bluetooth."

    return-object v0

    .line 20
    :cond_8
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa008:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-ne v0, v1, :cond_9

    .line 21
    const-string v0, "BLE 4.2 unknown error"

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method aaa001()V
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa001:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa002:Ljava/lang/String;

    return-void
.end method
