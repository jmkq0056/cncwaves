.class public final Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BluetoothDeviceNameToSerialMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;",
        "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u001a\u0010\u0004\u001a\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005R\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;",
        "()V",
        "map",
        "",
        "",
        "build",
        "internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 81
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;->build()Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;
    .locals 3

    .line 92
    new-instance v0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;->map:Ljava/util/Map;

    .line 94
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 92
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;-><init>(Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final map(Ljava/util/Map;)Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Builder;->map:Ljava/util/Map;

    return-object p0
.end method
