.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "USBDeviceStateEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUSBDeviceStateEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 USBDeviceStateEvent.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,250:1\n463#2,7:251\n*S KotlinDebug\n*F\n+ 1 USBDeviceStateEvent.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion$ADAPTER$1\n*L\n190#1:251,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;",
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
        "terminal_release"
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
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 162
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/message/observability_schema/accessories/accessories_model.proto"

    .line 156
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.message.observability_schema.accessories.USBDeviceStateEvent"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;->USB_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    .line 251
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v3, ""

    move-object v4, v3

    .line 253
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 199
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 195
    :cond_0
    :try_start_0
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 197
    sget-object v7, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v6, v6, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v7, v6}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_1
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 192
    :cond_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 202
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 203
    check-cast v3, Ljava/lang/String;

    .line 204
    check-cast v4, Ljava/lang/String;

    .line 205
    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    .line 202
    invoke-direct {v1, v3, v4, v0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->product_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->product_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 174
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->vendor_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->vendor_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 175
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;->USB_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 176
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 181
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;->USB_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 182
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->vendor_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->vendor_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 183
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->product_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->product_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 166
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->product_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->product_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->vendor_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->vendor_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;->USB_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 156
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 210
    invoke-static/range {v1 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;->copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 156
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    move-result-object p1

    return-object p1
.end method
