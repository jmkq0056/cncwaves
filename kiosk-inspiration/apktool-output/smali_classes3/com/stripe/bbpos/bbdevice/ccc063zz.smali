.class final Lcom/stripe/bbpos/bbdevice/ccc063zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;


# instance fields
.field aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    return-void
.end method


# virtual methods
.method public aaa000()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa067:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa004(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public aaa000(I)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(I)V

    return-void
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;Ljava/lang/String;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;Ljava/lang/String;)V

    return-void
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    .locals 2

    .line 502
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc063zz$aaa000zz;->aaa004:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    .line 625
    :pswitch_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 626
    iput-object v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013:[B

    .line 627
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_TEST_CHANNEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 628
    :pswitch_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INTEGRITY_CHECK_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 629
    :pswitch_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->NOT_COMPATIBLE_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 630
    :pswitch_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CONTACTLESS_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 631
    :pswitch_5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BLE_SECURE_CONNECTION_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 632
    :pswitch_6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 633
    :pswitch_7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PAIRING_ERROR_INCORRECT_PASSKEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 634
    :pswitch_8
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PAIRING_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 635
    :pswitch_9
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PCI_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 636
    :pswitch_a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->TAMPER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 637
    :pswitch_b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->HARDWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 638
    :pswitch_c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 639
    :pswitch_d
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CHANNEL_BUFFER_FULL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 640
    :pswitch_e
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 641
    iput-object v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013:[B

    .line 642
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa006()V

    .line 643
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->USB_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 644
    :pswitch_f
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 645
    iput-object v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013:[B

    .line 646
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa006()V

    .line 647
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 648
    :pswitch_10
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 649
    iput-object v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013:[B

    .line 650
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa006()V

    .line 651
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->USB_DEVICE_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 652
    :pswitch_11
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 653
    iput-object v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013:[B

    .line 654
    const-string p1, "78"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 655
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa008(Z)V

    .line 656
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa013(Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa006()V

    return-void

    .line 659
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa006()V

    .line 660
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_USB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 661
    :pswitch_12
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 662
    iput-object v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013:[B

    .line 663
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 664
    :pswitch_13
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->DEVICE_BUSY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 665
    :pswitch_14
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->VOLUME_WARNING_NOT_ACCEPTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 666
    :pswitch_15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 667
    :pswitch_16
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 668
    :pswitch_17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CASHBACK_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 669
    :pswitch_18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INPUT_INVALID:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 670
    :pswitch_19
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 671
    :pswitch_1a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 672
    :pswitch_1b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->DEVICE_BUSY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 673
    :pswitch_1c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->COMM_LINK_UNINITIALIZED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 674
    :pswitch_1d
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->COMM_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 675
    :pswitch_1e
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 676
    :pswitch_1f
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;Ljava/lang/String;)V
    .locals 1

    .line 364
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc063zz$aaa000zz;->aaa001:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 389
    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->NO_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 390
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->NOT_ICC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 391
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MSR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 392
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MAG_HEAD_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 393
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->INSERTED_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 394
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->BAD_SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 387
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 388
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 420
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc063zz$aaa000zz;->aaa001:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 317
    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 318
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 319
    :pswitch_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INPUT_INVALID:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 320
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->USE_ICC_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 321
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->TAP_CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 322
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->NO_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 323
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->NOT_ICC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 324
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MSR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 325
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MAG_HEAD_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 326
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->INSERTED_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    goto :goto_0

    .line 327
    :pswitch_a
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->BAD_SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;Ljava/util/Hashtable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc063zz$aaa000zz;->aaa000:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    .line 222
    :pswitch_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PROCESSING_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 223
    :pswitch_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NOT_ACCEPTED_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 224
    :pswitch_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 225
    :pswitch_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_ERROR_PLEASE_ENTER_PIN_AGAIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 226
    :pswitch_5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 227
    :pswitch_6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->DECLINED_WITH_RESPONSE_CODE_05:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 228
    :pswitch_7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->AUTHENTICATION_REQUIRED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 229
    :pswitch_8
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_NOT_READABLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 230
    :pswitch_9
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 231
    :pswitch_a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TERMINAL_NOT_PERMITTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 232
    :pswitch_b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->WRONG_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 233
    :pswitch_c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 234
    :pswitch_d
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_FUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 235
    :pswitch_e
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 236
    :pswitch_f
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->EXPIRED_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 237
    :pswitch_10
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->SYSTEM_MALFUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 238
    :pswitch_11
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_CARD_NUMBER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 239
    :pswitch_12
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_TRANSACTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 240
    :pswitch_13
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_NOT_ADMITTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 241
    :pswitch_14
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->DPAS_CDCVM:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 242
    :pswitch_15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_IS_STILL_INSERTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 243
    :pswitch_16
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TOO_MANY_TAPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 244
    :pswitch_17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_INPUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 245
    :pswitch_18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CTL_TRANSACTION_LIMIT_EXCEEDED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 246
    :pswitch_19
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CTL_APP_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 247
    :pswitch_1a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CTL_NO_EMV_APPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 248
    :pswitch_1b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NO_EMV_APPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 249
    :pswitch_1c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 250
    :pswitch_1d
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_INSERTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 251
    :pswitch_1e
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NOT_ICC_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 252
    :pswitch_1f
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PIN_TRY_LIMIT_EXCEEDED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 253
    :pswitch_20
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->SHOW_THANK_YOU:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 254
    :pswitch_21
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->FINAL_CONFIRM:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 255
    :pswitch_22
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->APPLICATION_EXPIRED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 256
    :pswitch_23
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 257
    :pswitch_24
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 258
    :pswitch_25
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INSERT_OR_SWIPE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 259
    :pswitch_26
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INSERT_SWIPE_OR_TRY_ANOTHER_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 260
    :pswitch_27
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->AUTHORISING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 261
    :pswitch_28
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PRESENT_CARD_AGAIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 262
    :pswitch_29
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->APPROVED_PLEASE_SIGN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 263
    :pswitch_2a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->SELECT_ACCOUNT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 264
    :pswitch_2b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PRESENT_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 265
    :pswitch_2c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->USE_MAG_STRIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 266
    :pswitch_2d
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TRY_AGAIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 267
    :pswitch_2e
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TRANSACTION_TERMINATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 268
    :pswitch_2f
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->REMOVE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 269
    :pswitch_30
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->REFER_TO_YOUR_PAYMENT_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 270
    :pswitch_31
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PROCESSING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 271
    :pswitch_32
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PLEASE_WAIT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 272
    :pswitch_33
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PIN_OK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 273
    :pswitch_34
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NOT_ACCEPTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 274
    :pswitch_35
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->LAST_PIN_TRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 275
    :pswitch_36
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INSERT_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 276
    :pswitch_37
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INCORRECT_PIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 277
    :pswitch_38
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ENTER_PIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 278
    :pswitch_39
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ENTER_AMOUNT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 279
    :pswitch_3a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->DECLINED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 280
    :pswitch_3b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 281
    :pswitch_3c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CALL_YOUR_BANK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    .line 282
    :pswitch_3d
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->APPROVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_0
        :pswitch_33
        :pswitch_32
        :pswitch_0
        :pswitch_31
        :pswitch_0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc063zz$aaa000zz;->aaa002:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 444
    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ICC_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    goto :goto_0

    .line 445
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->WRONG_PIN_LENGTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    goto :goto_0

    .line 446
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    goto :goto_0

    .line 447
    :pswitch_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INPUT_INVALID:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 448
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->INCORRECT_PIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    goto :goto_0

    .line 449
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ENTERED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    goto :goto_0

    .line 450
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->CANCEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    goto :goto_0

    .line 451
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->BYPASS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    .line 478
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;Ljava/util/Hashtable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;)V
    .locals 1

    .line 480
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc063zz$aaa000zz;->aaa003:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 494
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;->PRINTER_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;)V

    return-void

    .line 495
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;->WRONG_PRINTER_COMMAND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;)V

    return-void

    .line 496
    :cond_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;)V

    return-void

    .line 497
    :cond_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;->OVERHEAT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;)V

    return-void

    .line 498
    :cond_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;->NO_PAPER_OR_COVER_OPENED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;)V

    return-void
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Z)V
    .locals 0

    return-void
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa000()Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    return-void
.end method

.method public aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;Ljava/lang/String;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa000()Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;Ljava/lang/String;)V

    return-void
.end method

.method public aaa000(Ljava/lang/String;)V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa023(Ljava/lang/String;)V

    return-void
.end method

.method public aaa000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa004(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aaa000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aaa000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aaa000(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 284
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Ljava/util/ArrayList;)V

    return-void
.end method

.method public aaa000(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public aaa000(Z)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa028(Z)V

    return-void
.end method

.method public aaa000(ZLcom/stripe/bbpos/bbdevice/aaa003zz$aaa010zz;)V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v1, p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa010zz;->aaa002:Ljava/lang/String;

    iget-object v2, p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa010zz;->aaa000:Ljava/lang/String;

    iget p2, p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa010zz;->aaa001:I

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa002(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public aaa000(ZLjava/lang/String;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa012(ZLjava/lang/String;)V

    return-void
.end method

.method public aaa000(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aaa000(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public aaa000(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    .line 283
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public aaa000(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 677
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public aaa001()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa096()V

    return-void
.end method

.method public aaa001(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa026(Ljava/lang/String;)V

    return-void
.end method

.method public aaa001(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aaa001(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa012(Ljava/util/Hashtable;)V

    return-void
.end method

.method public aaa001(Z)V
    .locals 0

    return-void
.end method

.method public aaa001(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa015(ZLjava/lang/String;)V

    return-void
.end method

.method public aaa002()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa093()V

    return-void
.end method

.method public aaa002(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public aaa002(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa015(Ljava/util/Hashtable;)V

    return-void
.end method

.method public aaa002(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020(Z)V

    return-void
.end method

.method public aaa002(ZLjava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013(ZLjava/lang/String;)V

    return-void
.end method

.method public aaa003()V
    .locals 0

    return-void
.end method

.method public aaa003(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014(Ljava/lang/String;)V

    return-void
.end method

.method public aaa003(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public aaa003(Z)V
    .locals 0

    return-void
.end method

.method public aaa003(ZLjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014(ZLjava/lang/String;)V

    return-void
.end method

.method public aaa004()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb000()V

    return-void
.end method

.method public aaa004(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa024(Ljava/lang/String;)V

    return-void
.end method

.method public aaa004(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa026(Z)V

    return-void
.end method

.method public aaa005()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa067:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa006(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public aaa005(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022(Ljava/lang/String;)V

    return-void
.end method

.method public aaa005(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa029(Z)V

    return-void
.end method

.method public aaa006()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa077()V

    return-void
.end method

.method public aaa006(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa015(Ljava/lang/String;)V

    return-void
.end method

.method public aaa007(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public aaa008(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020(Ljava/lang/String;)V

    return-void
.end method

.method public onBatteryLow(Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V

    return-void
.end method

.method public onDeviceDisplayingPrompt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa086()V

    return-void
.end method

.method public onDeviceHere(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa017(Z)V

    return-void
.end method

.method public onDeviceReset(ZLcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(ZLcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;)V

    return-void
.end method

.method public onDeviceResetAlert(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa002(I)V

    return-void
.end method

.method public onEnterStandbyMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa087()V

    return-void
.end method

.method public onHardwareFunctionalTestResult(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(IILjava/lang/String;)V

    return-void
.end method

.method public onPowerButtonPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa088()V

    return-void
.end method

.method public onPowerConnected(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V

    return-void
.end method

.method public onPowerDisconnected(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;)V

    return-void
.end method

.method public onPowerDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa089()V

    return-void
.end method

.method public onPrintDataCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa090()V

    return-void
.end method

.method public onPrintDataEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa091()V

    return-void
.end method

.method public onRequestAmountConfirm(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa009(Ljava/util/Hashtable;)V

    return-void
.end method

.method public onRequestClearDisplay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa092()V

    return-void
.end method

.method public onRequestDisplayAsterisk(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestDisplayLEDIndicator(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;)V

    return-void
.end method

.method public onRequestFinalConfirm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa094()V

    return-void
.end method

.method public onRequestKeypadResponse()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa095()V

    return-void
.end method

.method public onRequestManualPanEntry(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;)V

    return-void
.end method

.method public onRequestOnlineProcess(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa016(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestOtherAmount(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;)V

    return-void
.end method

.method public onRequestPinEntry(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;)V

    return-void
.end method

.method public onRequestPrintData(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(IZ)V

    return-void
.end method

.method public onRequestProduceAudioTone(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;)V

    return-void
.end method

.method public onRequestSelectAccountType()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa097()V

    return-void
.end method

.method public onRequestSetAmount()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa098()V

    return-void
.end method

.method public onRequestStartEmv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa099()V

    return-void
.end method

.method public onRequestTerminalTime()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa100()V

    return-void
.end method

.method public onRequestVirtuCryptPEDIResponse(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa010(ZLjava/util/Hashtable;)V

    return-void
.end method

.method public onRequestVirtuCryptPEDKResponse(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa011(ZLjava/util/Hashtable;)V

    return-void
.end method

.method public onReturnAccessiblePINPadTouchEvent(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V

    return-void
.end method

.method public onReturnAccountSelectionResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;I)V

    return-void
.end method

.method public onReturnAmount(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method public onReturnAmountConfirmResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa018(Z)V

    return-void
.end method

.method public onReturnApduResult(ZLjava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apduLength"

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa012(ZLjava/util/Hashtable;)V

    return-void

    .line 3
    :cond_0
    const-string v1, "apdu"

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 4
    const-string v2, ""

    .line 8
    :cond_1
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    .line 11
    :catch_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v3, 0x0

    .line 14
    :goto_0
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 15
    invoke-virtual {v4, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p2, p1, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa012(ZLjava/util/Hashtable;)V

    return-void
.end method

.method public onReturnBatchData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa018(Ljava/lang/String;)V

    return-void
.end method

.method public onReturnCAPKDetail(Lcom/stripe/bbpos/bbdevice/CAPK;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/CAPK;)V

    return-void
.end method

.method public onReturnCAPKList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/CAPK;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa005(Ljava/util/List;)V

    return-void
.end method

.method public onReturnCAPKLocation(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa019(Ljava/lang/String;)V

    return-void
.end method

.method public onReturnCancelCheckCardResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa019(Z)V

    return-void
.end method

.method public onReturnControlLEDResult(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa008(ZLjava/lang/String;)V

    return-void
.end method

.method public onReturnDeviceInfo(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa011(Ljava/util/Hashtable;)V

    return-void
.end method

.method public onReturnDisableAccountSelectionResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa021(Z)V

    return-void
.end method

.method public onReturnDisableBluetoothResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022(Z)V

    return-void
.end method

.method public onReturnDisableFactoryModeResult(ZLjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa037()Lcom/stripe/bbpos/bbdevice/ccc048zz;

    move-result-object v1

    sget-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const/4 v2, 0x1

    const-string v4, ""

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa000(ZZLjava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;)V

    .line 2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa004zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa004zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa004zz;)V

    .line 3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa002()Lcom/stripe/bbpos/bbdevice/ccc039zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;->aaa100:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;I)V

    .line 4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa023()V

    :cond_0
    return-void
.end method

.method public onReturnDisableInputAmountResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa023(Z)V

    return-void
.end method

.method public onReturnDisplayPromptResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;)V

    return-void
.end method

.method public onReturnEmvCardDataResult(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa010(ZLjava/lang/String;)V

    return-void
.end method

.method public onReturnEmvCardNumber(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa011(ZLjava/lang/String;)V

    return-void
.end method

.method public onReturnEmvReport(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa021(Ljava/lang/String;)V

    return-void
.end method

.method public onReturnEmvReportList(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013(Ljava/util/Hashtable;)V

    return-void
.end method

.method public onReturnEnableAccountSelectionResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa024(Z)V

    return-void
.end method

.method public onReturnEnableBluetoothResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa025(Z)V

    return-void
.end method

.method public onReturnEnableInputAmountResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa027(Z)V

    return-void
.end method

.method public onReturnEncryptDataResult(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013(ZLjava/util/Hashtable;)V

    return-void
.end method

.method public onReturnFunctionKey(Lcom/stripe/bbpos/bbdevice/BBDeviceController$FunctionKey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$FunctionKey;)V

    return-void
.end method

.method public onReturnNfcDataExchangeResult(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014(ZLjava/util/Hashtable;)V

    return-void
.end method

.method public onReturnNfcDetectCardResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method public onReturnPowerOffIccResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa030(Z)V

    return-void
.end method

.method public onReturnReadAIDResult(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014(Ljava/util/Hashtable;)V

    return-void
.end method

.method public onReturnReadDisplayStringResult(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa015(ZLjava/util/Hashtable;)V

    return-void
.end method

.method public onReturnReversalData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa027(Ljava/lang/String;)V

    return-void
.end method

.method public onReturnSetPinPadButtonsResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa032(Z)V

    return-void
.end method

.method public onReturnSetPinPadOrientationResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa033(Z)V

    return-void
.end method

.method public onReturnTransactionResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method public onReturnUpdateAIDResult(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa016(Ljava/util/Hashtable;)V

    return-void
.end method

.method public onReturnUpdateCAPKResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa034(Z)V

    return-void
.end method

.method public onReturnUpdateDisplayStringResult(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa016(ZLjava/lang/String;)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingsResult(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa017(Ljava/util/Hashtable;)V

    return-void
.end method

.method public onReturnVasResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method public onReturnVirtuCryptPEDICommandResult(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa016(ZLjava/util/Hashtable;)V

    return-void
.end method

.method public onReturnVirtuCryptPEDKCommandResult(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa017(ZLjava/util/Hashtable;)V

    return-void
.end method

.method public onReturnWatchdogTimerReset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb001()V

    return-void
.end method

.method public onSerialConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb002()V

    return-void
.end method

.method public onSerialDisconnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb004()V

    return-void
.end method

.method public onSessionError(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionInitialized()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb005()V

    return-void
.end method

.method public onTestChannelConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb006()V

    return-void
.end method

.method public onTestChannelDisconnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb007()V

    return-void
.end method

.method public onUsbConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb008()V

    return-void
.end method

.method public onUsbDisconnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013:[B

    .line 3
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa006()V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa054()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_USB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa024()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_USB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "USB failed (error code - 6001)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb009()V

    return-void
.end method

.method public onWaitingForCard(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)V

    return-void
.end method

.method public onWaitingReprintOrPrintNext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc063zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb010()V

    return-void
.end method
