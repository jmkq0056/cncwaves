.class Lcom/stripe/bbpos/bbdevice/bbb042zz;
.super Lcom/stripe/bbpos/bbdevice/bbb005zz;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/bbb005zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    return-void
.end method


# virtual methods
.method aaa000(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, ""

    .line 1
    const-string v1, "DF894D"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    const/16 v1, 0xc

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc050:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_8

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1, v3, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 8
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->OUT_OF_PIN_PAD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->NEW_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V

    return-void

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->BACKSPACE_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V

    return-void

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 19
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->CLEAR_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V

    return-void

    :cond_4
    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 21
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->CANCEL_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V

    return-void

    :cond_5
    const/4 p2, 0x5

    if-ne p1, p2, :cond_6

    .line 23
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ENTER_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V

    return-void

    :cond_6
    const/4 p2, 0x6

    if-ne p1, p2, :cond_7

    .line 25
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V

    return-void

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    .line 31
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc050:[B

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 32
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void
.end method
