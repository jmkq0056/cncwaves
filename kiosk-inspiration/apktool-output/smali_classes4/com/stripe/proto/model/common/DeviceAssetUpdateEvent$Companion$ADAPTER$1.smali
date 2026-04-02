.class public final Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "DeviceAssetUpdateEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceAssetUpdateEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceAssetUpdateEvent.kt\ncom/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,458:1\n463#2,7:459\n1#3:466\n*S KotlinDebug\n*F\n+ 1 DeviceAssetUpdateEvent.kt\ncom/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion$ADAPTER$1\n*L\n247#1:459,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;",
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
        "common_release"
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
            "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 211
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/common/device_model.proto"

    .line 205
    const-string v3, "type.googleapis.com/com.stripe.proto.model.common.DeviceAssetUpdateEvent"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;->UPDATE_TYPE_INVALID:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    .line 459
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_0
    move-object v4, v0

    .line 461
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v9

    const/4 v0, -0x1

    if-eq v9, v0, :cond_5

    const/4 v0, 0x1

    if-eq v9, v0, :cond_4

    const/4 v0, 0x3

    if-eq v9, v0, :cond_3

    const/4 v0, 0x4

    if-eq v9, v0, :cond_2

    const/4 v0, 0x5

    if-eq v9, v0, :cond_1

    const/4 v0, 0x6

    if-eq v9, v0, :cond_0

    .line 258
    invoke-virtual {v1, v9}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 257
    :cond_0
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 256
    :cond_1
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 255
    :cond_2
    sget-object v0, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 254
    :cond_3
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 250
    :cond_4
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 252
    sget-object v10, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v9, v10, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 465
    :cond_5
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v15

    .line 261
    new-instance v9, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;

    .line 262
    move-object v10, v4

    check-cast v10, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    .line 263
    move-object v11, v5

    check-cast v11, Lcom/stripe/proto/model/common/DeviceAssetInfo;

    .line 264
    move-object v12, v6

    check-cast v12, Lcom/stripe/proto/model/common/InstantPb;

    .line 265
    move-object v13, v7

    check-cast v13, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;

    .line 266
    move-object v14, v8

    check-cast v14, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;

    .line 261
    invoke-direct/range {v9 .. v15}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;-><init>(Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;Lokio/ByteString;)V

    return-object v9
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->update_type:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;->UPDATE_TYPE_INVALID:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->update_type:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 225
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->asset_info:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->asset_info:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 226
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->event_timestamp:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->event_timestamp:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 227
    :cond_2
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->device_asset_update_error:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 228
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->device_asset_update_success:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 229
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 234
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->device_asset_update_success:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 235
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->device_asset_update_error:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 236
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->event_timestamp:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->event_timestamp:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 237
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->asset_info:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->asset_info:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 238
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->update_type:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;->UPDATE_TYPE_INVALID:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->update_type:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 215
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->update_type:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    sget-object v2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;->UPDATE_TYPE_INVALID:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->update_type:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->asset_info:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->asset_info:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->event_timestamp:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->event_timestamp:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_2
    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->device_asset_update_error:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object p1, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->device_asset_update_success:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 205
    check-cast p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;)Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;
    .locals 11

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->asset_info:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 273
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->event_timestamp:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/InstantPb;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 274
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->device_asset_update_error:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 275
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->device_asset_update_success:Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;

    :cond_3
    move-object v7, v1

    .line 276
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    .line 271
    invoke-static/range {v2 .. v10}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;->copy$default(Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 205
    check-cast p1, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;)Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;

    move-result-object p1

    return-object p1
.end method
