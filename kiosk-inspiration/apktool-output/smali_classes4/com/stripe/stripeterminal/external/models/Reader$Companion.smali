.class public final Lcom/stripe/stripeterminal/external/models/Reader$Companion;
.super Ljava/lang/Object;
.source "Reader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0002J\u000f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/Reader$Companion;",
        "",
        "()V",
        "nameFromBluetoothDevice",
        "",
        "bluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "Lcom/stripe/stripeterminal/external/models/BluetoothDevice;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/external/models/Reader$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$nameFromBluetoothDevice(Lcom/stripe/stripeterminal/external/models/Reader$Companion;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 407
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/Reader$Companion;->nameFromBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final nameFromBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/stripe/stripeterminal/external/json/ReaderSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ReaderSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
