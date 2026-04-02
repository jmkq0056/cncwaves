.class public final Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CheckAppVersionsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckAppVersionsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAppVersionsRequest.kt\ncom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n463#2,7:429\n1#3:436\n*S KotlinDebug\n*F\n+ 1 CheckAppVersionsRequest.kt\ncom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1\n*L\n383#1:429,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
        "environment_variablesAdapter",
        "",
        "",
        "getEnvironment_variablesAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "environment_variablesAdapter$delegate",
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


# instance fields
.field private final environment_variablesAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 332
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/api/armada/warden_service.proto"

    .line 326
    const-string v3, "type.googleapis.com/com.stripe.proto.api.warden.CheckAppVersionsRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget-object p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1$environment_variablesAdapter$2;->INSTANCE:Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1$environment_variablesAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->environment_variablesAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getEnvironment_variablesAdapter()Lcom/squareup/wire/ProtoAdapter;
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

    .line 334
    iget-object v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->environment_variablesAdapter$delegate:Lkotlin/Lazy;

    .line 335
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 378
    sget-object v0, Lcom/stripe/proto/model/common/LaneStatus;->OPEN:Lcom/stripe/proto/model/common/LaneStatus;

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    .line 381
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v8, v2

    check-cast v8, Ljava/util/Map;

    .line 429
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v10, v6

    move v11, v9

    move-object v6, v5

    move-object v9, v10

    :goto_0
    move-object v5, v0

    .line 431
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v12

    const/4 v0, -0x1

    if-eq v12, v0, :cond_0

    packed-switch v12, :pswitch_data_0

    .line 397
    invoke-virtual {v1, v12}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 396
    :pswitch_0
    sget-object v0, Lcom/stripe/proto/api/warden/ReaderCapabilities;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    .line 395
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->getEnvironment_variablesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 394
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    :pswitch_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v11, v0

    goto :goto_1

    .line 389
    :pswitch_4
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/common/LaneStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 391
    sget-object v13, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 387
    :pswitch_5
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    :pswitch_6
    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    .line 385
    :pswitch_7
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 435
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 400
    new-instance v1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    .line 401
    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    .line 402
    move-object v3, v9

    check-cast v3, Lcom/stripe/proto/model/common/DeviceInfo;

    .line 404
    check-cast v5, Lcom/stripe/proto/model/common/LaneStatus;

    .line 408
    move-object v9, v10

    check-cast v9, Lcom/stripe/proto/api/warden/ReaderCapabilities;

    move-object v10, v0

    move v6, v11

    .line 400
    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;)V

    return-object v1

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

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 352
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 353
    :cond_1
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 354
    iget-object v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    sget-object v1, Lcom/stripe/proto/model/common/LaneStatus;->OPEN:Lcom/stripe/proto/model/common/LaneStatus;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/LaneStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 355
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 356
    :cond_3
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 357
    invoke-direct {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->getEnvironment_variablesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 358
    iget-object v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/api/warden/ReaderCapabilities;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 359
    :cond_4
    invoke-virtual {p2}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 326
    check-cast p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 364
    iget-object v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/api/warden/ReaderCapabilities;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->getEnvironment_variablesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 366
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 367
    iget-boolean v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 368
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    sget-object v1, Lcom/stripe/proto/model/common/LaneStatus;->OPEN:Lcom/stripe/proto/model/common/LaneStatus;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/LaneStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 369
    :cond_2
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 370
    iget-object v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 371
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 326
    check-cast p2, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 339
    iget-object v1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_1
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    iget-object v1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    sget-object v2, Lcom/stripe/proto/model/common/LaneStatus;->OPEN:Lcom/stripe/proto/model/common/LaneStatus;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/stripe/proto/model/common/LaneStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_2
    iget-boolean v1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_3
    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    invoke-direct {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->getEnvironment_variablesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    iget-object v1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/api/warden/ReaderCapabilities;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object p1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 326
    check-cast p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;
    .locals 14

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    iget-object v0, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/DeviceInfo;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 415
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    sget-object v2, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v2}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v5

    .line 416
    iget-object v0, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    sget-object v2, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v2}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v8

    .line 417
    iget-object v0, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/stripe/proto/api/warden/ReaderCapabilities;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/api/warden/ReaderCapabilities;

    :cond_1
    move-object v10, v1

    .line 418
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v12, 0x59

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 413
    invoke-static/range {v2 .. v13}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->copy$default(Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 326
    check-cast p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    move-result-object p1

    return-object p1
.end method
