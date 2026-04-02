.class public final Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "BluetoothDeviceNameToSerialMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothDeviceNameToSerialMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothDeviceNameToSerialMap.kt\ncom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,153:1\n463#2,7:154\n*S KotlinDebug\n*F\n+ 1 BluetoothDeviceNameToSerialMap.kt\ncom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1\n*L\n130#1:154,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;",
        "mapAdapter",
        "",
        "",
        "getMapAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "mapAdapter$delegate",
        "Lkotlin/Lazy;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
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
.field private final mapAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 107
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/sdk/bluetooth_device_name_serial_map.proto"

    .line 101
    const-string v3, "type.googleapis.com/com.stripe.proto.model.sdk.BluetoothDeviceNameToSerialMap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object p1, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1$mapAdapter$2;->INSTANCE:Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1$mapAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->mapAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMapAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->mapAdapter$delegate:Lkotlin/Lazy;

    .line 110
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;
    .locals 5

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 154
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 156
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->getMapAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 136
    new-instance v1, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    invoke-direct {v1, v0, p1}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;-><init>(Ljava/util/Map;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->getMapAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;->map:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 120
    invoke-virtual {p2}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p2, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 125
    invoke-direct {p0}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->getMapAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;->map:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p2, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)I
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 114
    invoke-direct {p0}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->getMapAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p1, p1, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;->map:Ljava/util/Map;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 101
    check-cast p1, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-static {p1, v2, v0, v1, v2}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;->copy$default(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;Ljava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;

    move-result-object p1

    return-object p1
.end method
