.class final Lcom/stripe/bbpos/bbdevice/aaa009zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;
    }
.end annotation


# static fields
.field private static final aaa035:I

.field private static final aaa036:Ljava/util/concurrent/TimeUnit;

.field private static final aaa037:Ljava/lang/Object;

.field static final aaa038:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final aaa039:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static aaa040:Z

.field static aaa041:Z

.field private static aaa042:[B

.field static aaa043:Z

.field static aaa044:[B

.field private static final aaa045:Ljava/lang/String;


# instance fields
.field final aaa000:Ljava/lang/Object;

.field aaa001:Z

.field final aaa002:Ljava/lang/Object;

.field private final aaa003:Ljava/lang/Object;

.field final aaa004:Ljava/lang/Object;

.field private final aaa005:Ljava/lang/Object;

.field aaa006:Z

.field final aaa007:Ljava/lang/Object;

.field final aaa008:Ljava/lang/Object;

.field final aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

.field private final aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

.field aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

.field private aaa012:Lcom/stripe/bbpos/bbdevice/ccc011zz;

.field private aaa013:Landroid/bluetooth/BluetoothSocket;

.field private aaa014:Landroid/bluetooth/BluetoothGatt;

.field aaa015:Ljava/io/ByteArrayOutputStream;

.field private aaa016:Ljava/lang/Object;

.field private aaa017:Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;

.field aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

.field private final aaa019:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final aaa020:Ljava/util/concurrent/ThreadPoolExecutor;

.field aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

.field private final aaa022:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final aaa023:Ljava/util/concurrent/ThreadPoolExecutor;

.field aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

.field private aaa025:Z

.field aaa026:Z

.field private final aaa027:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/aaa010zz;",
            ">;"
        }
    .end annotation
.end field

.field private aaa028:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private aaa029:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private aaa030:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private aaa031:I

.field private aaa032:I

.field aaa033:I

.field aaa034:I


# direct methods
.method public static synthetic $r8$lambda$mkSstfShc2Kq4WqBBWW4aTzZPus(Lcom/stripe/bbpos/bbdevice/aaa009zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa035:I

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa036:Ljava/util/concurrent/TimeUnit;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa037:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa038:Ljava/util/Hashtable;

    .line 15
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa039:Ljava/util/Hashtable;

    const/4 v2, 0x0

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 45
    sput-boolean v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa040:Z

    .line 46
    sput-boolean v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa041:Z

    .line 47
    new-array v4, v2, [B

    sput-object v4, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa042:[B

    .line 48
    sput-boolean v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa043:Z

    .line 49
    new-array v2, v2, [B

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa044:[B

    .line 51
    const-class v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa045:Ljava/lang/String;

    .line 60
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/16 v5, 0x7d0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v1, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v7, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v1, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v8, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/16 v9, 0xbb8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v9, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v1, v9, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffff

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x100

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x80

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v0, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MI PAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    .line 1
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000:Ljava/lang/Object;

    const/4 v9, 0x0

    .line 3
    iput-boolean v9, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001:Z

    .line 4
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    .line 5
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa003:Ljava/lang/Object;

    .line 6
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004:Ljava/lang/Object;

    .line 7
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa005:Ljava/lang/Object;

    .line 8
    iput-boolean v9, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006:Z

    .line 9
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    .line 10
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa008:Ljava/lang/Object;

    .line 35
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa027:Ljava/util/List;

    const/4 v10, 0x0

    .line 36
    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    .line 37
    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa029:Ljava/util/List;

    .line 38
    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    .line 80
    const-string v10, "[ChannelLayerHandler]"

    invoke-direct {v1, v10}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V

    .line 81
    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-object/from16 v10, p2

    .line 82
    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    .line 83
    iput-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    .line 84
    iput-boolean v9, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    .line 86
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v9, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa019:Ljava/util/concurrent/BlockingQueue;

    .line 87
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v12, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa035:I

    sget-object v16, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa036:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1

    move v13, v12

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v11, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa020:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 89
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v9, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa022:Ljava/util/concurrent/BlockingQueue;

    .line 90
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v17, v16

    const-wide/16 v15, 0x1

    move v14, v13

    move-object/from16 v18, v9

    invoke-direct/range {v12 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v12, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa023:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 92
    sget-object v9, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const-string v11, ""

    if-ne v6, v9, :cond_1

    if-nez v2, :cond_0

    .line 94
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v0, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014()V

    return-void

    .line 103
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 104
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa013:Landroid/bluetooth/BluetoothSocket;

    .line 111
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    .line 112
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc019zz;

    invoke-direct {v2, v1, v3}, Lcom/stripe/bbpos/bbdevice/ccc019zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/OutputStream;)V

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

    .line 113
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc012zz;

    invoke-direct {v2, v1, v0}, Lcom/stripe/bbpos/bbdevice/ccc012zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/InputStream;)V

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa012:Lcom/stripe/bbpos/bbdevice/ccc011zz;

    .line 114
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc011zz;->aaa000()V

    goto/16 :goto_2

    .line 115
    :catch_0
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa013:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Bluetooth error code - 3031"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V

    return-void

    .line 124
    :cond_1
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v6, v2, :cond_4

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    iput-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa014:Landroid/bluetooth/BluetoothGatt;

    move-object/from16 v0, p11

    .line 131
    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa016:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    .line 133
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc020zz;

    move-object/from16 v2, p8

    move-object/from16 v7, p12

    invoke-direct {v0, v3, v4, v2, v7}, Lcom/stripe/bbpos/bbdevice/ccc020zz;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

    .line 134
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc013zz;

    invoke-direct {v0, v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc013zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/PipedInputStream;)V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa012:Lcom/stripe/bbpos/bbdevice/ccc011zz;

    .line 135
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc011zz;->aaa000()V

    goto/16 :goto_2

    .line 136
    :cond_3
    :goto_0
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v0, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa015()V

    return-void

    .line 146
    :cond_4
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v6, v2, :cond_8

    if-eqz v7, :cond_7

    if-nez p10, :cond_5

    goto :goto_1

    .line 152
    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    .line 153
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc021zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc035zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa019:Lcom/stripe/bbpos/bbdevice/ccc036zz;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    move-object/from16 v2, p10

    invoke-direct/range {v0 .. v5}, Lcom/stripe/bbpos/bbdevice/ccc021zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/OutputStream;Lcom/stripe/bbpos/bbdevice/ccc035zz;Lcom/stripe/bbpos/bbdevice/ccc036zz;Lcom/stripe/bbpos/bbdevice/ccc037zz;)V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

    .line 154
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc014zz;

    invoke-direct {v0, v1, v7}, Lcom/stripe/bbpos/bbdevice/ccc014zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/InputStream;)V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa012:Lcom/stripe/bbpos/bbdevice/ccc011zz;

    .line 155
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc011zz;->aaa000()V

    .line 159
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 160
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    const-wide/16 v2, 0x64

    .line 162
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 163
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 164
    :cond_7
    :goto_1
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v0, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa083()V

    return-void

    .line 183
    :cond_8
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v6, v2, :cond_9

    .line 185
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    .line 186
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc023zz;

    invoke-direct {v0, v1, v8}, Lcom/stripe/bbpos/bbdevice/ccc023zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

    .line 187
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc016zz;

    invoke-direct {v0, v1, v8}, Lcom/stripe/bbpos/bbdevice/ccc016zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa012:Lcom/stripe/bbpos/bbdevice/ccc011zz;

    .line 188
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc011zz;->aaa000()V

    goto :goto_2

    .line 190
    :cond_9
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v6, v2, :cond_d

    .line 191
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    .line 192
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc022zz;

    iget-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa040()Lcom/stripe/bbpos/bbdevice/TestChannelInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/stripe/bbpos/bbdevice/TestChannelInterface;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/stripe/bbpos/bbdevice/ccc022zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/OutputStream;)V

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

    .line 193
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc015zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa040()Lcom/stripe/bbpos/bbdevice/TestChannelInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/TestChannelInterface;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/stripe/bbpos/bbdevice/ccc015zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/InputStream;)V

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa012:Lcom/stripe/bbpos/bbdevice/ccc011zz;

    .line 194
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc011zz;->aaa000()V

    .line 201
    :catch_1
    :cond_a
    :goto_2
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;

    invoke-direct {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;)V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v6, v0, :cond_b

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v6, v0, :cond_b

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v6, v0, :cond_b

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v6, v0, :cond_b

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v6, v0, :cond_c

    .line 205
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa009zz$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_c
    return-void

    .line 206
    :cond_d
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v0, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa003:Ljava/lang/Object;

    return-object p0
.end method

.method private aaa000(BBB)V
    .locals 4

    const/4 v0, 0x2

    .line 45
    new-array v1, v0, [B

    .line 49
    sget-boolean v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa043:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 50
    aget-byte v2, v1, v3

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 52
    :cond_0
    aget-byte v2, v1, v3

    or-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    const/4 p1, 0x1

    .line 53
    aget-byte v2, v1, p1

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    and-int/lit8 p3, p3, 0xf

    or-int/2addr p2, p3

    int-to-byte p2, p2

    .line 54
    aput-byte p2, v1, p1

    .line 57
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 59
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 60
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 61
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 62
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001([B)V

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa009zz;Lcom/stripe/bbpos/bbdevice/aaa010zz;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V

    return-void
.end method

.method private aaa000(ZBZ)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 5
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa029:Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    .line 8
    :cond_0
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa032:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    if-nez v1, :cond_2

    return-object v0

    .line 13
    :cond_2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa031:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    const/4 v1, 0x2

    .line 16
    new-array v2, v1, [B

    .line 20
    sget-boolean v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa043:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 21
    aget-byte v3, v2, v4

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    :cond_3
    if-eqz p1, :cond_4

    .line 24
    aget-byte p1, v2, v4

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    .line 26
    :cond_4
    aget-byte p1, v2, v4

    and-int/lit8 p2, p2, 0x7

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    const/4 p1, 0x1

    if-eqz p3, :cond_5

    .line 29
    aget-byte p2, v2, p1

    iget-object p3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa029:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p1

    and-int/lit8 p3, p3, 0xf

    shl-int/lit8 p3, p3, 0x4

    or-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, v2, p1

    .line 30
    iget p3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa032:I

    and-int/lit8 p3, p3, 0xf

    or-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, v2, p1

    goto :goto_1

    .line 32
    :cond_5
    aget-byte p2, v2, p1

    iget-object p3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p1

    and-int/lit8 p3, p3, 0xf

    shl-int/lit8 p3, p3, 0x4

    or-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, v2, p1

    .line 33
    iget p3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa031:I

    and-int/lit8 p3, p3, 0xf

    or-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, v2, p1

    .line 37
    :goto_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    invoke-virtual {p1, v2, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 39
    array-length p2, v0

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 40
    array-length p2, v0

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 41
    array-length p2, v0

    invoke-virtual {p1, v0, v4, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 42
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 44
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic aaa001(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa027:Ljava/util/List;

    return-object p0
.end method

.method private aaa001(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V
    .locals 7

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa037:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa005()V

    .line 7
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-boolean v4, v1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa006:Z

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa009()V

    .line 9
    iget-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002(Z)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002(Z)V

    .line 14
    :goto_0
    monitor-exit v0

    return-void

    .line 19
    :cond_1
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-eqz v1, :cond_f

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb030:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    sput-boolean v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa040:Z

    .line 22
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa004()[B

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v1

    .line 23
    const-string v4, "DF2F"

    invoke-static {v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 24
    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v5, "8C86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v4, "8CF2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    :cond_2
    sput-boolean v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa041:Z

    goto :goto_2

    .line 27
    :cond_3
    sput-boolean v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa041:Z

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    .line 29
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc085:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa004()[B

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v1

    .line 31
    const-string v4, "DF2F"

    invoke-static {v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 32
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v4, "8CCE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    sput-boolean v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa040:Z

    goto :goto_1

    .line 35
    :cond_5
    sput-boolean v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa040:Z

    .line 37
    :goto_1
    sput-boolean v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa041:Z

    goto :goto_2

    .line 39
    :cond_6
    sput-boolean v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa040:Z

    .line 40
    sput-boolean v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa041:Z

    .line 43
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa006()[B

    move-result-object v1

    .line 51
    sget-boolean v4, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa043:Z

    if-ne v4, v2, :cond_7

    if-eqz v1, :cond_7

    .line 53
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v4

    .line 54
    array-length v5, v1

    add-int/2addr v5, v2

    new-array v5, v5, [B

    .line 55
    array-length v6, v1

    invoke-static {v1, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    array-length v1, v1

    aput-byte v4, v5, v1

    .line 57
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa044:[B

    invoke-static {v5, v1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa002([B[B)[B

    move-result-object v1

    .line 61
    :cond_7
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa005()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa029:Ljava/util/List;

    goto :goto_3

    .line 66
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    :goto_3
    move v4, v3

    .line 69
    :goto_4
    array-length v5, v1

    if-ge v4, v5, :cond_a

    .line 70
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa004()I

    move-result v5

    array-length v6, v1

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v6, v5, [B

    .line 71
    invoke-static {v1, v4, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa005()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 73
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa029:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 75
    :cond_9
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :goto_5
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa004()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_4

    .line 86
    :cond_a
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa005()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 87
    iput v3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa032:I

    .line 88
    invoke-direct {p0, v3, v3, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(ZBZ)[B

    move-result-object v1

    goto :goto_6

    .line 90
    :cond_b
    iput v3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa031:I

    .line 91
    invoke-direct {p0, v3, v3, v3}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(ZBZ)[B

    move-result-object v1

    :goto_6
    if-nez v1, :cond_c

    .line 94
    monitor-exit v0

    return-void

    .line 97
    :cond_c
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa005()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v4

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb089:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_e

    .line 101
    invoke-direct {p0, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(ZBZ)[B

    move-result-object v3

    .line 102
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa010zz;)I

    move-result p1

    iput p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa034:I

    .line 104
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_d

    .line 105
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa039:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 107
    :cond_d
    invoke-virtual {p0, v3, p1, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([BIZ)V

    .line 109
    :cond_e
    invoke-virtual {p0, v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001([B)V

    .line 111
    :cond_f
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private aaa001(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic aaa002(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa025:Z

    return p0
.end method

.method static synthetic aaa003(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa005:Ljava/lang/Object;

    return-object p0
.end method

.method private synthetic aaa006()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa005()V

    return-void
.end method


# virtual methods
.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa010zz;)I
    .locals 3

    .line 63
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa039:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p1, :cond_0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb050:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x7

    goto/16 :goto_4

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb044:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb046:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb048:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb024:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0xc

    .line 78
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v1, v2, :cond_17

    goto/16 :goto_2

    .line 81
    :cond_5
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb022:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x4

    .line 83
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v1, v2, :cond_17

    goto/16 :goto_3

    .line 86
    :cond_6
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb052:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_1

    .line 88
    :cond_7
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb054:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_3

    .line 90
    :cond_8
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb063:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_2

    .line 92
    :cond_9
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa043:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0xa

    goto/16 :goto_4

    .line 94
    :cond_a
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa020:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    .line 96
    :cond_b
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa000:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_0
    mul-int/lit8 v0, v0, 0x5

    goto/16 :goto_4

    .line 98
    :cond_c
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc009:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1

    .line 100
    :cond_d
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc033:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2

    .line 102
    :cond_e
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    const-string v2, "8CE4"

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1

    .line 104
    :cond_f
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    const-string v2, "8C14"

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_1
    mul-int/lit8 v0, v0, 0x3

    goto :goto_4

    .line 106
    :cond_10
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd032:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2

    .line 108
    :cond_11
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd034:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2

    .line 110
    :cond_12
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd036:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2

    .line 112
    :cond_13
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd038:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_2
    mul-int/lit8 v0, v0, 0x4

    goto :goto_4

    .line 114
    :cond_14
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd012:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3

    .line 116
    :cond_15
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd014:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_3

    .line 118
    :cond_16
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd016:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_3
    mul-int/lit8 v0, v0, 0x2

    .line 123
    :cond_17
    :goto_4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v1, v2, :cond_18

    goto/16 :goto_6

    .line 124
    :cond_18
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v1, v2, :cond_1b

    .line 125
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc091:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 126
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc093:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 127
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc095:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 128
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc097:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 129
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc099:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 130
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd000:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 131
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd002:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 132
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd004:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_5

    .line 134
    :cond_19
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object p1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa002:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_1a
    :goto_5
    mul-int/lit8 v0, v0, 0x5

    :cond_1b
    :goto_6
    const/16 p1, 0x3a98

    if-le v0, p1, :cond_1c

    return p1

    :cond_1c
    return v0
.end method

.method aaa000()V
    .locals 6

    .line 921
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    if-eqz v1, :cond_1

    .line 936
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa000()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    :try_start_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa004:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 939
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 943
    :try_start_2
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 951
    :catch_1
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa019:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 952
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa019:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 957
    aget-object v4, v2, v3

    .line 958
    instance-of v5, v4, Lcom/stripe/bbpos/bbdevice/ccc026zz;

    if-eqz v5, :cond_2

    .line 959
    move-object v5, v4

    check-cast v5, Lcom/stripe/bbpos/bbdevice/ccc026zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa000()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 961
    :try_start_4
    move-object v5, v4

    check-cast v5, Lcom/stripe/bbpos/bbdevice/ccc026zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa004:Ljava/lang/Thread;

    if-eqz v5, :cond_2

    .line 962
    check-cast v4, Lcom/stripe/bbpos/bbdevice/ccc026zz;

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa004:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 970
    :catch_3
    :cond_3
    :try_start_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc027zz;)V
    .locals 2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ccc021zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa001()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000(Ljava/io/OutputStream;)V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa012:Lcom/stripe/bbpos/bbdevice/ccc011zz;

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ccc014zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa000(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method aaa000(Ljava/lang/String;)V
    .locals 7

    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const-string v4, "D0000000070100"

    const-string v5, "0000000D"

    const-string v6, ""

    if-ne v2, v3, :cond_0

    .line 139
    :try_start_0
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 140
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 141
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 144
    :cond_0
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v2, v3, :cond_1

    .line 146
    :try_start_1
    const-string v2, "0000000B"

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 147
    const-string v2, "D000000005"

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 151
    :cond_1
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v2, v3, :cond_2

    .line 153
    :try_start_2
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 154
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 155
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 160
    :cond_2
    :try_start_3
    const-string v2, "5080000810"

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 163
    :catch_0
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa000()I

    move-result v2

    if-gtz v2, :cond_3

    .line 165
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v0, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_3
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 168
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v2, v2, 0xff

    .line 169
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 176
    :catch_1
    :goto_0
    :try_start_4
    const-string v2, "00"

    const-string v3, "DF8303"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 188
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v3, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa033(Ljava/lang/String;)V

    .line 191
    :try_start_5
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 193
    :catch_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v3, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 196
    :goto_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v3, :cond_5

    .line 198
    :cond_4
    :try_start_6
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 199
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 204
    :catch_3
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq p1, v1, :cond_6

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v1, :cond_a

    .line 207
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 208
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 v1, 0xaa

    .line 209
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x0

    .line 210
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_9

    .line 211
    aget-byte v2, p1, v1

    const/16 v3, -0x56

    if-eq v2, v3, :cond_7

    const/16 v3, -0x45

    if-eq v2, v3, :cond_7

    const/16 v3, -0x34

    if-ne v2, v3, :cond_8

    :cond_7
    const/16 v2, 0xcc

    .line 212
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 214
    :cond_8
    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const/16 p1, 0xbb

    .line 216
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 219
    :cond_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa039:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([BIZ)V

    .line 220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001([B)V

    return-void

    .line 221
    :cond_b
    :try_start_7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v0, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    return-void

    .line 225
    :catch_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v0, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void
.end method

.method aaa000([B)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 226
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa025()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_5c

    .line 227
    array-length v2, v0

    if-lez v2, :cond_5c

    .line 228
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa019(Ljava/lang/String;)V

    return-void

    .line 231
    :cond_0
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa025()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_5c

    .line 232
    array-length v2, v0

    if-lez v2, :cond_5c

    .line 233
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa020(Ljava/lang/String;)V

    return-void

    .line 238
    :cond_1
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v2, v5, :cond_2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v2, v5, :cond_2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v2, v5, :cond_2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v2, v5, :cond_3

    .line 243
    :cond_2
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    array-length v5, v0

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 244
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 245
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007()V

    .line 248
    :cond_3
    array-length v2, v0

    if-nez v2, :cond_4

    goto/16 :goto_20

    .line 254
    :cond_4
    iget-boolean v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x1

    if-nez v2, :cond_3e

    .line 255
    aget-byte v2, v0, v4

    const/16 v13, 0x51

    if-ne v2, v13, :cond_9

    .line 256
    array-length v2, v0

    if-lt v2, v10, :cond_5b

    .line 257
    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v7

    aget-byte v5, v0, v9

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    .line 258
    array-length v5, v0

    add-int/lit8 v6, v2, 0x5

    if-lt v5, v6, :cond_8

    add-int/lit8 v5, v2, 0x4

    .line 259
    new-array v6, v5, [B

    .line 260
    invoke-static {v0, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object v7, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v7, v3, :cond_6

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v7, v3, :cond_6

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v7, v3, :cond_6

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v7, v3, :cond_6

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v7, v3, :cond_5

    goto :goto_0

    :cond_5
    move v12, v4

    goto :goto_1

    .line 262
    :cond_6
    :goto_0
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 263
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    add-int/2addr v2, v11

    array-length v7, v0

    sub-int/2addr v7, v5

    sub-int/2addr v7, v12

    invoke-virtual {v3, v0, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 266
    :goto_1
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v2

    aget-byte v0, v0, v5

    if-ne v2, v0, :cond_7

    .line 267
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "error code - 7001"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 269
    :cond_7
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "CRC error (1)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 272
    :cond_8
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "Incorrect length (1)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_9
    const/16 v13, -0xf

    if-ne v2, v13, :cond_c

    .line 276
    array-length v2, v0

    if-lt v2, v10, :cond_b

    .line 277
    new-array v2, v10, [B

    .line 278
    invoke-static {v0, v4, v2, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v2

    aget-byte v0, v0, v10

    if-ne v2, v0, :cond_a

    .line 280
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "error code - 7002"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 282
    :cond_a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "CRC error (2)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 285
    :cond_b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "Incorrect length (2)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_c
    const/16 v13, 0x66

    if-ne v2, v13, :cond_11

    .line 288
    array-length v2, v0

    if-le v2, v6, :cond_5b

    .line 289
    aget-byte v2, v0, v12

    and-int/lit16 v2, v2, 0xff

    .line 290
    array-length v5, v0

    add-int/lit8 v6, v2, 0x3

    if-lt v5, v6, :cond_10

    add-int/lit8 v5, v2, 0x2

    .line 291
    new-array v6, v5, [B

    .line 292
    invoke-static {v0, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iget-object v7, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v7, v3, :cond_e

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v7, v3, :cond_e

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v7, v3, :cond_e

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v7, v3, :cond_e

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v7, v3, :cond_d

    goto :goto_2

    :cond_d
    move v2, v4

    goto :goto_3

    .line 294
    :cond_e
    :goto_2
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 295
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    add-int/2addr v2, v9

    array-length v7, v0

    sub-int/2addr v7, v5

    sub-int/2addr v7, v12

    invoke-virtual {v3, v0, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v2, v12

    .line 298
    :goto_3
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa001([B)B

    move-result v3

    aget-byte v0, v0, v5

    if-ne v3, v0, :cond_f

    .line 299
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 301
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    monitor-enter v3

    .line 302
    :try_start_0
    iput-boolean v12, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001:Z

    .line 303
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 304
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_f
    :goto_4
    move v12, v2

    goto/16 :goto_1f

    .line 307
    :cond_10
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "Incorrect length (7)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 311
    :cond_11
    array-length v2, v0

    if-lt v2, v10, :cond_5b

    .line 312
    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v7

    aget-byte v13, v0, v9

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v2, v13

    .line 313
    array-length v13, v0

    add-int/lit8 v14, v2, 0x5

    if-lt v13, v14, :cond_5b

    add-int/lit8 v13, v2, 0x4

    .line 314
    new-array v14, v13, [B

    .line 315
    invoke-static {v0, v4, v14, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    iget-object v15, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v15, v3, :cond_13

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v15, v3, :cond_13

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v15, v3, :cond_13

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v15, v3, :cond_13

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v15, v3, :cond_12

    goto :goto_5

    :cond_12
    move v3, v4

    move/from16 p1, v7

    goto :goto_6

    .line 317
    :cond_13
    :goto_5
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 318
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v15, v2, 0x5

    move/from16 p1, v7

    array-length v7, v0

    sub-int/2addr v7, v13

    sub-int/2addr v7, v12

    invoke-virtual {v3, v0, v15, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v3, v12

    .line 321
    :goto_6
    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v7

    aget-byte v13, v0, v13

    if-ne v7, v13, :cond_3d

    .line 322
    aget-byte v7, v0, v4

    .line 325
    aget-byte v7, v0, v12

    .line 328
    new-array v7, v2, [B

    .line 329
    invoke-static {v0, v10, v7, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-le v2, v6, :cond_5a

    .line 332
    aget-byte v0, v7, v4

    const/16 v13, 0x50

    if-ne v0, v13, :cond_28

    aget-byte v14, v7, v12

    if-ne v14, v12, :cond_28

    if-lt v2, v11, :cond_5a

    .line 334
    aget-byte v0, v7, v9

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, v7, v10

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x6

    if-lt v2, v5, :cond_27

    add-int/lit8 v2, v0, 0x5

    .line 336
    new-array v5, v2, [B

    .line 337
    invoke-static {v7, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v5

    aget-byte v2, v7, v2

    if-ne v5, v2, :cond_26

    .line 339
    new-array v2, v0, [B

    .line 340
    invoke-static {v7, v11, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v0

    .line 343
    const-string v2, "DF8716"

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 344
    iget-object v5, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 345
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SP-WC Connection Health Check : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 349
    :cond_14
    const-string v2, "D7"

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    .line 350
    const-string v5, "D3"

    invoke-static {v0, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    .line 351
    const-string v7, "DF3A"

    invoke-static {v0, v7}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v7

    .line 352
    const-string v9, "DF8607"

    invoke-static {v0, v9}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v9

    .line 353
    const-string v10, "DF8608"

    invoke-static {v0, v10}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v10

    .line 354
    const-string v11, "DF8528"

    invoke-static {v0, v11}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v11

    .line 355
    const-string v14, "DF8664"

    invoke-static {v0, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    .line 356
    const-string v15, "DF866B"

    invoke-static {v0, v15}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v15

    move/from16 v16, v6

    .line 357
    const-string v6, "DE"

    invoke-static {v0, v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v6

    const/16 v17, 0x6

    .line 358
    const-string v8, "DF8757"

    invoke-static {v0, v8}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 360
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v8

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa002(Ljava/lang/String;)V

    if-eqz v2, :cond_15

    .line 362
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    new-instance v8, Ljava/lang/String;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v8}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001(Ljava/lang/String;)V

    goto :goto_7

    .line 364
    :cond_15
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001(Ljava/lang/String;)V

    .line 367
    :goto_7
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v2

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001(I)V

    const/16 v2, 0x10

    if-eqz v10, :cond_16

    .line 370
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    iget-object v8, v10, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v8, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(I)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;)V

    goto :goto_8

    .line 372
    :cond_16
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    sget-object v8, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    invoke-virtual {v5, v8}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;)V

    :goto_8
    if-eqz v9, :cond_17

    .line 377
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    iget-object v8, v9, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v8, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001(I)V

    .line 380
    :cond_17
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa014:Landroid/bluetooth/BluetoothGatt;

    if-eqz v5, :cond_18

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "[dataReceived] requestMtu : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V

    .line 382
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa014:Landroid/bluetooth/BluetoothGatt;

    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 384
    :cond_18
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

    instance-of v8, v5, Lcom/stripe/bbpos/bbdevice/ccc020zz;

    if-eqz v8, :cond_19

    .line 385
    check-cast v5, Lcom/stripe/bbpos/bbdevice/ccc020zz;

    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa000(I)V

    .line 388
    :cond_19
    const-string v5, "[dataReceived] start wait setting MTU"

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V

    .line 389
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa016:Ljava/lang/Object;

    if-eqz v5, :cond_1a

    .line 390
    const-string v5, "[dataReceived] start wait setting MTU (2)"

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V

    .line 391
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa016:Ljava/lang/Object;

    monitor-enter v5

    .line 393
    :try_start_1
    const-string v8, "[dataReceived] start wait setting MTU (3)"

    invoke-direct {v1, v8}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V

    .line 394
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa016:Ljava/lang/Object;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    .line 397
    :catch_0
    :goto_9
    :try_start_2
    monitor-exit v5

    goto :goto_b

    :goto_a
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 399
    :cond_1a
    :goto_b
    const-string v5, "[dataReceived] end wait setting MTU"

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V

    if-eqz v11, :cond_1b

    .line 404
    :try_start_3
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    iget-object v8, v11, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v8, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa002(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 410
    :catch_1
    :cond_1b
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001(Z)V

    if-eqz v14, :cond_1c

    .line 413
    :try_start_4
    iget-object v5, v14, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1c

    .line 415
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 420
    :catch_2
    :cond_1c
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa004(I)V

    if-eqz v15, :cond_1d

    .line 423
    :try_start_5
    iget-object v5, v15, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1d

    .line 425
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa004(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1d
    if-nez v6, :cond_1e

    .line 432
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa002(I)V

    goto :goto_c

    .line 434
    :cond_1e
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5, v12}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa002(I)V

    :goto_c
    if-eqz v0, :cond_22

    .line 437
    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 438
    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v0

    .line 439
    array-length v5, v0

    sub-int/2addr v5, v12

    aget-byte v5, v0, v5

    and-int/2addr v5, v12

    if-ne v5, v12, :cond_1f

    .line 440
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa002(Z)V

    goto :goto_d

    .line 442
    :cond_1f
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa002(Z)V

    .line 445
    :goto_d
    array-length v5, v0

    sub-int/2addr v5, v12

    aget-byte v5, v0, v5

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    if-ne v5, v12, :cond_20

    .line 446
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000(Z)V

    goto :goto_e

    .line 448
    :cond_20
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000(Z)V

    .line 451
    :goto_e
    array-length v5, v0

    sub-int/2addr v5, v12

    aget-byte v0, v0, v5

    shr-int/lit8 v0, v0, 0x2

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_21

    .line 452
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003(Z)V

    goto :goto_f

    .line 454
    :cond_21
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003(Z)V

    .line 458
    :cond_22
    :goto_f
    iput-boolean v12, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-eqz v7, :cond_23

    .line 460
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    iget-object v5, v7, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa038:Ljava/util/Hashtable;

    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003(I)V

    goto :goto_10

    .line 462
    :cond_23
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa038:Ljava/util/Hashtable;

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003(I)V

    .line 465
    :goto_10
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v2, :cond_25

    .line 466
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa002()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    if-ne v0, v2, :cond_24

    .line 467
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa004()I

    move-result v2

    const/16 v5, 0x82

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003(I)V

    goto :goto_11

    .line 468
    :cond_24
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa002()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    if-ne v0, v2, :cond_25

    .line 469
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa004()I

    move-result v2

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003(I)V

    .line 473
    :cond_25
    :goto_11
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 475
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    monitor-enter v2

    .line 476
    :try_start_6
    iput-boolean v12, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001:Z

    .line 477
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 478
    monitor-exit v2

    goto/16 :goto_1d

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 480
    :cond_26
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "CRC error (3)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 483
    :cond_27
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "Incorrect length (3)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_28
    const/16 v6, 0xc

    const/16 v8, -0x6a

    if-ne v0, v6, :cond_30

    .line 486
    aget-byte v6, v7, v12

    if-ne v6, v8, :cond_30

    if-lt v2, v11, :cond_5a

    .line 488
    aget-byte v0, v7, v9

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, v7, v10

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x6

    if-lt v2, v5, :cond_2f

    add-int/lit8 v2, v0, 0x5

    .line 490
    new-array v5, v2, [B

    .line 491
    invoke-static {v7, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v5

    aget-byte v2, v7, v2

    if-ne v5, v2, :cond_2e

    .line 493
    new-array v2, v0, [B

    .line 494
    invoke-static {v7, v11, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v0

    .line 497
    const-string v2, "DF8270"

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    .line 498
    const-string v5, "DF8271"

    invoke-static {v0, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    .line 499
    const-string v6, "DF8272"

    invoke-static {v0, v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    if-eqz v2, :cond_2d

    .line 502
    iget-object v6, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 503
    iget-object v6, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v7, "80"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 505
    const-string v2, ""

    if-eqz v5, :cond_29

    .line 506
    iget-object v6, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Tamper Status : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_29
    if-eqz v0, :cond_2b

    .line 509
    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 510
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 513
    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Tamper Time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    :cond_2b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0, v12}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa009(Z)V

    .line 516
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa022(Ljava/lang/String;)V

    .line 517
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa025:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v0, v5, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 520
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Integrity Check Error Code: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2, v12}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa002(Z)V

    .line 522
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2, v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa007(Ljava/lang/String;)V

    .line 523
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa033:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v2, v5, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 526
    :cond_2d
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v5, "Missing DF8270. (error code - 9023)"

    invoke-virtual {v0, v2, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 529
    :cond_2e
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "CRC error (4)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 532
    :cond_2f
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "Incorrect length (4)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_30
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_38

    .line 535
    aget-byte v6, v7, v12

    if-ne v6, v8, :cond_38

    if-lt v2, v11, :cond_5a

    .line 537
    aget-byte v0, v7, v9

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, v7, v10

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x6

    if-lt v2, v5, :cond_37

    add-int/lit8 v2, v0, 0x5

    .line 539
    new-array v5, v2, [B

    .line 540
    invoke-static {v7, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v5

    aget-byte v2, v7, v2

    if-ne v5, v2, :cond_36

    .line 542
    new-array v2, v0, [B

    .line 543
    invoke-static {v7, v11, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v0

    .line 546
    const-string v2, "DF8270"

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    .line 547
    const-string v5, "DF8271"

    invoke-static {v0, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    .line 548
    const-string v6, "DF8272"

    invoke-static {v0, v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 549
    const-string v6, ""

    if-eqz v2, :cond_31

    .line 550
    iget-object v7, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_31

    .line 551
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Tamper Mode : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_31
    if-eqz v5, :cond_33

    .line 553
    iget-object v2, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 554
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 557
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Tamper Status : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_33
    if-eqz v0, :cond_35

    .line 559
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 560
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 563
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Tamper Time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 565
    :cond_35
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0, v12}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa009(Z)V

    .line 566
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0, v6}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa022(Ljava/lang/String;)V

    .line 567
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa025:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v0, v2, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 569
    :cond_36
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "CRC error (5)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 572
    :cond_37
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "Incorrect length (5)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_38
    if-ne v0, v13, :cond_39

    .line 575
    aget-byte v6, v7, v12

    const/16 v8, 0x9

    if-ne v6, v8, :cond_39

    .line 576
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    goto/16 :goto_1d

    :cond_39
    if-ne v0, v13, :cond_5a

    .line 577
    aget-byte v0, v7, v12

    if-ne v0, v11, :cond_5a

    if-lt v2, v11, :cond_5a

    .line 579
    aget-byte v0, v7, v9

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v6, v7, v10

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x6

    if-lt v2, v6, :cond_3c

    add-int/lit8 v2, v0, 0x5

    .line 581
    new-array v6, v2, [B

    .line 582
    invoke-static {v7, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v6

    aget-byte v2, v7, v2

    if-ne v6, v2, :cond_3b

    .line 584
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 585
    new-array v2, v0, [B

    .line 586
    invoke-static {v7, v11, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v0

    .line 588
    const-string v2, "DF822D"

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 589
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v2, v6, :cond_5a

    .line 590
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa018:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    if-nez v0, :cond_3a

    const/4 v5, 0x0

    goto :goto_12

    :cond_3a
    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    :goto_12
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 593
    :cond_3b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "CRC error (9)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 596
    :cond_3c
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "Incorrect length (9)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 602
    :cond_3d
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "CRC error (6)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_3e
    move/from16 v16, v6

    move/from16 p1, v7

    const/16 v17, 0x6

    .line 608
    array-length v2, v0

    if-lt v2, v10, :cond_5b

    .line 609
    aget-byte v2, v0, v16

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v6, v0, v9

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    .line 610
    array-length v6, v0

    add-int/lit8 v7, v2, 0x5

    if-lt v6, v7, :cond_5b

    add-int/lit8 v6, v2, 0x4

    .line 611
    new-array v7, v6, [B

    .line 612
    invoke-static {v0, v4, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v8, v3, :cond_40

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v8, v3, :cond_40

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v8, v3, :cond_40

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v8, v3, :cond_40

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v8, v3, :cond_3f

    goto :goto_13

    :cond_3f
    move v3, v4

    goto :goto_14

    .line 614
    :cond_40
    :goto_13
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 615
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v8, v2, 0x5

    array-length v13, v0

    sub-int/2addr v13, v6

    sub-int/2addr v13, v12

    invoke-virtual {v3, v0, v8, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v3, v12

    .line 618
    :goto_14
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v7

    aget-byte v6, v0, v6

    if-ne v7, v6, :cond_59

    .line 619
    aget-byte v6, v0, v4

    shr-int/lit8 v7, v6, 0x7

    and-int/2addr v7, v12

    if-ne v7, v12, :cond_41

    move v7, v12

    goto :goto_15

    :cond_41
    move v7, v4

    :goto_15
    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v8, v12

    if-ne v8, v12, :cond_42

    move v8, v12

    goto :goto_16

    :cond_42
    move v8, v4

    :goto_16
    const/4 v13, 0x7

    and-int/2addr v6, v13

    int-to-byte v6, v6

    .line 622
    aget-byte v14, v0, v12

    shr-int/lit8 v15, v14, 0x4

    and-int/lit8 v15, v15, 0xf

    int-to-byte v15, v15

    and-int/lit8 v14, v14, 0xf

    int-to-byte v14, v14

    .line 625
    new-array v5, v2, [B

    .line 626
    invoke-static {v0, v10, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v8, :cond_43

    .line 630
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa042:[B

    if-eqz v0, :cond_43

    .line 631
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v12

    goto :goto_17

    :cond_43
    move v0, v4

    .line 635
    :goto_17
    sput-object v5, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa042:[B

    if-ne v6, v9, :cond_44

    .line 637
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    monitor-enter v8

    .line 638
    :try_start_7
    iput-boolean v12, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006:Z

    .line 639
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 640
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 641
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 642
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->INVALID_SESSION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v0

    .line 643
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_44
    if-ne v6, v11, :cond_45

    .line 650
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    monitor-enter v8

    .line 651
    :try_start_9
    iput-boolean v12, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006:Z

    .line 652
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 653
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 654
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 655
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa022:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :catchall_4
    move-exception v0

    .line 656
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :cond_45
    if-ne v6, v13, :cond_46

    .line 663
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    monitor-enter v8

    .line 664
    :try_start_b
    iput-boolean v12, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006:Z

    .line 665
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 666
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 667
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 668
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Communication error (error code - 9010)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :catchall_5
    move-exception v0

    .line 669
    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :cond_46
    move/from16 v13, v17

    if-ne v6, v13, :cond_48

    .line 676
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 677
    iput v14, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa031:I

    .line 678
    invoke-direct {v1, v12, v4, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(ZBZ)[B

    move-result-object v0

    if-nez v0, :cond_47

    if-eqz v3, :cond_5c

    .line 681
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 682
    new-array v0, v4, [B

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    return-void

    .line 687
    :cond_47
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa039:Ljava/util/Hashtable;

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([BIZ)V

    .line 688
    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001([B)V

    if-eqz v3, :cond_5c

    .line 690
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 691
    new-array v0, v4, [B

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    return-void

    :cond_48
    if-eqz v6, :cond_49

    if-eqz v3, :cond_5c

    .line 697
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 698
    new-array v0, v4, [B

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    return-void

    :cond_49
    if-nez v6, :cond_4e

    if-nez v2, :cond_4e

    .line 706
    iget v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa031:I

    add-int/2addr v0, v12

    iput v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa031:I

    .line 707
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 708
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    if-eqz v0, :cond_4b

    iget v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa031:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4b

    .line 709
    invoke-direct {v1, v4, v4, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(ZBZ)[B

    move-result-object v0

    if-nez v0, :cond_4a

    if-eqz v3, :cond_5c

    .line 712
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 713
    new-array v0, v4, [B

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    return-void

    .line 718
    :cond_4a
    invoke-direct {v1, v12, v4, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(ZBZ)[B

    move-result-object v2

    .line 719
    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa039:Ljava/util/Hashtable;

    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v2, v5, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([BIZ)V

    .line 720
    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001([B)V

    goto :goto_18

    .line 721
    :cond_4b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    if-eqz v0, :cond_4d

    iget v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa031:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4d

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v2, v16

    if-lt v0, v2, :cond_4d

    .line 723
    iput v4, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa031:I

    .line 724
    invoke-direct {v1, v4, v4, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(ZBZ)[B

    move-result-object v0

    if-nez v0, :cond_4c

    if-eqz v3, :cond_5c

    .line 727
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 728
    new-array v0, v4, [B

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    return-void

    .line 733
    :cond_4c
    invoke-direct {v1, v12, v4, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(ZBZ)[B

    move-result-object v0

    .line 734
    iget v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa034:I

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa039:Ljava/util/Hashtable;

    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([BIZ)V

    :cond_4d
    :goto_18
    if-eqz v3, :cond_5c

    .line 737
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 738
    new-array v0, v4, [B

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    return-void

    :cond_4e
    if-nez v14, :cond_4f

    const/4 v13, 0x6

    if-ne v2, v13, :cond_4f

    .line 745
    aget-byte v2, v5, v4

    const/16 v6, -0x10

    if-ne v2, v6, :cond_4f

    aget-byte v2, v5, v12

    if-ne v2, v12, :cond_4f

    aget-byte v2, v5, v11

    const/16 v6, 0x1f

    if-ne v2, v6, :cond_4f

    .line 746
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v2, v5, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BZ)V

    return-void

    :cond_4f
    if-nez v14, :cond_50

    .line 752
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    if-nez v2, :cond_51

    .line 753
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    goto :goto_19

    .line 755
    :cond_50
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    if-nez v2, :cond_51

    const/4 v13, 0x6

    .line 756
    invoke-direct {v1, v13, v15, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(BBB)V

    if-eqz v3, :cond_5c

    .line 758
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 759
    new-array v0, v4, [B

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    return-void

    .line 765
    :cond_51
    :goto_19
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v14, :cond_52

    .line 766
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 767
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    invoke-interface {v2, v14, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-lez v15, :cond_54

    .line 769
    invoke-direct {v1, v4, v15, v14}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(BBB)V

    goto :goto_1a

    .line 771
    :cond_52
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v14, :cond_53

    .line 772
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v15, :cond_54

    .line 774
    invoke-direct {v1, v4, v15, v14}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(BBB)V

    goto :goto_1a

    .line 777
    :cond_53
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    const/4 v13, 0x6

    invoke-direct {v1, v13, v15, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(BBB)V

    :cond_54
    :goto_1a
    if-ne v14, v15, :cond_5a

    .line 784
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v5, v4

    .line 785
    :goto_1b
    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_55

    if-gt v5, v15, :cond_55

    .line 786
    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 787
    array-length v8, v6

    invoke-virtual {v2, v6, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 790
    :cond_55
    iput-boolean v4, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa025:Z

    .line 791
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000:Ljava/lang/Object;

    monitor-enter v5

    .line 792
    :try_start_d
    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 793
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const/4 v5, 0x0

    .line 794
    iput-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa030:Ljava/util/List;

    .line 797
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 799
    new-array v5, v4, [B

    .line 801
    :try_start_e
    sget-boolean v6, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa043:Z

    if-ne v6, v12, :cond_57

    if-eqz v7, :cond_57

    .line 802
    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa035()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v2, v6}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa000([B[B)[B

    move-result-object v2

    .line 803
    array-length v6, v2

    sub-int/2addr v6, v12

    aget-byte v6, v2, v6

    move/from16 v7, p1

    if-gt v6, v7, :cond_56

    if-ltz v6, :cond_56

    .line 808
    array-length v7, v2

    sub-int/2addr v7, v6

    new-array v6, v7, [B

    .line 809
    invoke-static {v2, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    goto :goto_1c

    .line 810
    :cond_56
    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa035()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v2, v6}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa000([B[B)[B

    move-result-object v5

    .line 811
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 818
    :catch_4
    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error decrypted payload: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    .line 827
    :cond_57
    :goto_1c
    array-length v5, v2

    if-le v5, v11, :cond_58

    .line 828
    aget-byte v5, v2, v9

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0x8

    shl-int/2addr v5, v7

    aget-byte v6, v2, v10

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 829
    array-length v6, v2

    add-int/lit8 v7, v5, 0x6

    if-lt v6, v7, :cond_58

    add-int/2addr v5, v11

    .line 830
    new-array v6, v5, [B

    .line 831
    invoke-static {v2, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v6

    aget-byte v5, v2, v5

    if-ne v6, v5, :cond_58

    .line 833
    new-instance v5, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    invoke-direct {v5, v2}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([B)V

    .line 834
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa005()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 837
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001()V

    .line 844
    :cond_58
    array-length v5, v2

    if-lez v5, :cond_5a

    .line 845
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v5, v2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BZ)V

    .line 846
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc025zz;->aaa000([B)V

    goto :goto_1d

    :catchall_6
    move-exception v0

    .line 847
    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    .line 899
    :cond_59
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v2, "CRC error (7)"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    :cond_5a
    :goto_1d
    move v12, v3

    goto :goto_1f

    :cond_5b
    :goto_1e
    move v12, v4

    :goto_1f
    if-eqz v12, :cond_5c

    .line 906
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 907
    new-array v0, v4, [B

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    :cond_5c
    :goto_20
    return-void
.end method

.method aaa000([BIZ)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 912
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    .line 914
    :cond_0
    new-instance p3, Lcom/stripe/bbpos/bbdevice/ccc026zz;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-direct {p3, p1, p2, p0, v1}, Lcom/stripe/bbpos/bbdevice/ccc026zz;-><init>([BILcom/stripe/bbpos/bbdevice/aaa009zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    .line 915
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa020:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_1

    .line 916
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa020:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 920
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)[B
    .locals 5

    .line 971
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_0

    .line 972
    const-string p1, "0000000BE000000005DF875801000A01"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 973
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const-string v1, "0000000DE0000000070100DF875801003645"

    if-ne p1, v0, :cond_1

    .line 974
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 975
    :cond_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_2

    .line 976
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 977
    :cond_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    .line 978
    :cond_4
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 980
    :try_start_0
    const-string v2, "5680000D10"

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 981
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa000()I

    move-result p1

    if-gtz p1, :cond_5

    return-object v1

    :cond_5
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 985
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 986
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 987
    const-string p1, "DF852C0100DF87580100"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 992
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 993
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 v1, 0xaa

    .line 994
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 995
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_8

    aget-byte v3, p1, v2

    const/16 v4, -0x56

    if-eq v3, v4, :cond_6

    const/16 v4, -0x45

    if-eq v3, v4, :cond_6

    const/16 v4, -0x34

    if-ne v3, v4, :cond_7

    :cond_6
    const/16 v4, 0xcc

    .line 997
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 999
    :cond_7
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/16 p1, 0xbb

    .line 1001
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1002
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized aaa001()V
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa028:Ljava/util/List;

    .line 115
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 116
    :try_start_1
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006:Z

    .line 117
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method aaa001([B)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ccc018zz;->aaa000([B)V

    return-void
.end method

.method aaa002()V
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa008:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa000()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa001:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 46
    :try_start_2
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 52
    :catch_1
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa022:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 53
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa022:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 58
    aget-object v4, v2, v3

    .line 59
    instance-of v5, v4, Lcom/stripe/bbpos/bbdevice/ccc031zz;

    if-eqz v5, :cond_2

    .line 60
    move-object v5, v4

    check-cast v5, Lcom/stripe/bbpos/bbdevice/ccc031zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa000()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    move-object v5, v4

    check-cast v5, Lcom/stripe/bbpos/bbdevice/ccc031zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa001:Ljava/lang/Thread;

    if-eqz v5, :cond_2

    .line 63
    check-cast v4, Lcom/stripe/bbpos/bbdevice/ccc031zz;

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa001:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    :catch_3
    :cond_3
    :try_start_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method aaa002(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa025:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa020:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa005()Z

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa005()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb089:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V

    return-void

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa005:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa027:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 32
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000:Ljava/lang/Object;

    monitor-enter p1

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 35
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method aaa003()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    return-object v0
.end method

.method aaa004()Lcom/stripe/bbpos/bbdevice/aaa003zz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    return-object v0
.end method

.method aaa005()V
    .locals 7

    .line 1
    const-string v0, "[initializeChannel]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/16 v3, 0xd

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    .line 19
    const-string v1, "00000008D0000000020100DFC1"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_1

    .line 20
    :cond_0
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v1, v2, :cond_1

    .line 21
    const-string v1, "00000006D0000000006DCC"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_1

    .line 22
    :cond_1
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v1, v2, :cond_3

    .line 45
    const-string v1, "00000008D0000000020100DFC1"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    const/16 v1, 0x50

    .line 48
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x80

    .line 49
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x8

    .line 51
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x10

    .line 52
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa000()I

    move-result v1

    if-gtz v1, :cond_5

    .line 55
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_5
    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 58
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v1, v1, 0xff

    .line 59
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xdf

    .line 60
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x85

    .line 61
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x2c

    .line 62
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 63
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 64
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 74
    :goto_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v1, v2, :cond_a

    .line 75
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 v2, 0xaa

    .line 77
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v5

    .line 78
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_9

    .line 79
    aget-byte v3, v1, v2

    const/16 v6, -0x56

    if-eq v3, v6, :cond_7

    const/16 v6, -0x45

    if-eq v3, v6, :cond_7

    const/16 v6, -0x34

    if-ne v3, v6, :cond_8

    :cond_7
    const/16 v3, 0xcc

    .line 80
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    :cond_8
    aget-byte v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    const/16 v1, 0xbb

    .line 84
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    :cond_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa039:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([BIZ)V

    .line 99
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    const-string v2, "[initializeChannel] INIT_CHANNEL_LOCK.wait (2)"

    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001([B)V

    .line 103
    iput-boolean v5, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001:Z

    .line 104
    :goto_3
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001:Z

    if-nez v0, :cond_b

    .line 105
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 107
    :cond_b
    const-string v0, "[initializeChannel] INIT_CHANNEL_LOCK.wait (2) End"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 110
    :catch_0
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    const-string v0, "[initializeChannel] checkpoint 1"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_d

    .line 114
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa042()V

    goto/16 :goto_6

    .line 117
    :cond_c
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa013:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, "Bluetooth classic timeout"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V

    goto/16 :goto_6

    .line 120
    :cond_d
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_f

    .line 121
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-eqz v0, :cond_e

    .line 122
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa044()V

    goto/16 :goto_6

    .line 124
    :cond_e
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa014:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, "BLE timeout"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V

    goto/16 :goto_6

    .line 127
    :cond_f
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_11

    .line 128
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-eqz v0, :cond_10

    .line 129
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa068()V

    goto/16 :goto_6

    .line 131
    :cond_10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa018:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, "USB timeout"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V

    goto/16 :goto_6

    .line 134
    :cond_11
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_16

    .line 135
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-eqz v0, :cond_12

    .line 136
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa063()V

    goto/16 :goto_6

    .line 138
    :cond_12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa055()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 139
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa039()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Cannot establish serial connection due to device tampered (error code - 3106)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto :goto_5

    .line 140
    :cond_13
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa048()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 141
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa018()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Cannot establish serial connection due to integrity check error (error code - 3107)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto :goto_5

    .line 143
    :cond_14
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 144
    iput-boolean v4, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    .line 145
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa002(I)V

    .line 146
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa063()V

    return-void

    .line 149
    :cond_15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, "Serial timeout (error code - 3105)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 152
    :goto_5
    :try_start_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc027zz;

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    :catch_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V

    goto :goto_6

    .line 157
    :cond_16
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_18

    .line 158
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-eqz v0, :cond_17

    .line 159
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa066()V

    goto :goto_6

    .line 161
    :cond_17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa034:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, "Test channel timeout (error code - 3202)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V

    :cond_18
    :goto_6
    return-void

    .line 163
    :goto_7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method aaa007()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa008:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002()V

    .line 4
    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc031zz;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/ccc031zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;)V

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    .line 5
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa023:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa023:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method aaa008()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009()V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006:Z

    .line 6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;)V

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 18
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc018zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc018zz;->aaa000()V

    .line 19
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa012:Lcom/stripe/bbpos/bbdevice/ccc011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc011zz;->aaa001()V

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_1

    .line 22
    :try_start_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa013:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa013:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa013:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 36
    :cond_1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_2

    .line 37
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa014:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 42
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa020:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 43
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa023:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method aaa009()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa005:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa027:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa025:Z

    .line 6
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
