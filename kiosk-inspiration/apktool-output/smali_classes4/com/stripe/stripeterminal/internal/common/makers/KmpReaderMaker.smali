.class public final Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;
.super Ljava/lang/Object;
.source "KmpReaderMaker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u00cb\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0010\u0008\u0002\u0010\t\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000b2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020\u001f\u00a2\u0006\u0002\u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;",
        "",
        "()V",
        "withReaderInfo",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "readerInfo",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "bluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "Lcom/stripe/stripeterminal/external/models/BluetoothDevice;",
        "usbDevice",
        "Landroid/hardware/usb/UsbDevice;",
        "Lcom/stripe/stripeterminal/external/models/UsbDevice;",
        "locationStatus",
        "Lcom/stripe/stripeterminal/external/models/LocationStatus;",
        "location",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "locationRaw",
        "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;",
        "id",
        "",
        "networkStatus",
        "Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;",
        "rawSerialNumber",
        "label",
        "deviceSwVersion",
        "baseUrl",
        "ipAddress",
        "livemode",
        "",
        "isSimulated",
        "(Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)Lcom/stripe/stripeterminal/external/models/Reader;",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic withReaderInfo$default(Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 20

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 21
    sget-object v1, Lcom/stripe/stripeterminal/external/models/LocationStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/LocationStatus;

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v15, v2

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object/from16 v16, v2

    goto :goto_a

    :cond_a
    move-object/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    move/from16 v19, v0

    goto :goto_d

    :cond_d
    move/from16 v19, p16

    :goto_d
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 16
    invoke-virtual/range {v3 .. v19}, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->withReaderInfo(Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final withReaderInfo(Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 38

    const-string v0, "readerInfo"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationStatus"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v17

    .line 37
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getConfigVersion()Ljava/lang/String;

    move-result-object v18

    .line 38
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getDeviceSettingVersion()Ljava/lang/String;

    move-result-object v19

    .line 39
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v20

    .line 40
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v21

    .line 41
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v22

    .line 42
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getMacKeyProfileId()Ljava/lang/String;

    move-result-object v23

    .line 43
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getTrackKeyProfileId()Ljava/lang/String;

    move-result-object v24

    .line 44
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getEmvKeyProfileId()Ljava/lang/String;

    move-result-object v25

    .line 45
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getPinKeysetId()Ljava/lang/String;

    move-result-object v26

    .line 46
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getMacKeysetId()Ljava/lang/String;

    move-result-object v27

    .line 47
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getTrackKeysetId()Ljava/lang/String;

    move-result-object v28

    .line 48
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getEmvKeysetId()Ljava/lang/String;

    move-result-object v29

    .line 49
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getSerial()Ljava/lang/String;

    move-result-object v30

    .line 50
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->isDebug()Ljava/lang/Boolean;

    move-result-object v31

    .line 51
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getRawReaderData()Ljava/util/Map;

    move-result-object v32

    .line 52
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->isCharging()Ljava/lang/Boolean;

    move-result-object v33

    .line 53
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->isDevKit()Z

    move-result v34

    .line 54
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getFirmwareId()Ljava/lang/String;

    move-result-object v35

    .line 55
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->getCoinCellBatteryVoltage()Ljava/lang/Float;

    move-result-object v36

    .line 56
    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->isUsbConnected()Ljava/lang/Boolean;

    move-result-object v37

    .line 34
    new-instance v1, Lcom/stripe/stripeterminal/external/models/Reader;

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p6

    move-object/from16 v3, p7

    move-object/from16 v5, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move/from16 v6, p16

    invoke-direct/range {v1 .. v37}, Lcom/stripe/stripeterminal/external/models/Reader;-><init>(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Lcom/stripe/stripeterminal/external/models/LocationStatus;Ljava/lang/String;ZLcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/Location;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-object v1
.end method
