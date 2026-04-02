.class public final Lcom/stripe/proto/model/rest/ExpandedLocationReader;
.super Lcom/squareup/wire/Message;
.source "ExpandedLocationReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;,
        Lcom/stripe/proto/model/rest/ExpandedLocationReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/ExpandedLocationReader;",
        "Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\u0093\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u0099\u0001\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0002H\u0016J\u0008\u0010\u001d\u001a\u00020\u0004H\u0016R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/ExpandedLocationReader;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;",
        "id",
        "",
        "object_",
        "device_sw_version",
        "device_type",
        "ip_address",
        "label",
        "location",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "serial_number",
        "status",
        "livemode",
        "",
        "base_url",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ExpandedLocationReader;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/rest/ExpandedLocationReader;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/ExpandedLocationReader$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final base_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "baseUrl"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final device_sw_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "deviceSwVersion"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final device_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "deviceType"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final ip_address:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "ipAddress"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final label:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final livemode:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final location:Lcom/stripe/proto/model/merchant/ApiLocationPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.merchant.ApiLocationPb#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final object_:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        declaredName = "object"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final serial_number:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "serialNumber"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->Companion:Lcom/stripe/proto/model/rest/ExpandedLocationReader$Companion;

    .line 378
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 377
    const-class v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 381
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 377
    new-instance v3, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p12}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->object_:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_type:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    .line 98
    iput-object p7, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 109
    iput-object p8, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    .line 120
    iput-object p9, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    .line 130
    iput-object p10, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    .line 140
    iput-object p11, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x1

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    move-object p11, v0

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 148
    sget-object p12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_b
    move-object p13, p12

    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 30
    invoke-direct/range {p1 .. p13}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/ExpandedLocationReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/ExpandedLocationReader;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    .line 222
    iget-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 223
    iget-object p2, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->object_:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    .line 224
    iget-object p3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    .line 225
    iget-object p4, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_type:Ljava/lang/String;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    .line 226
    iget-object p5, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    .line 227
    iget-object p6, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    .line 228
    iget-object p7, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    .line 229
    iget-object p8, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    .line 230
    iget-object p9, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    .line 231
    iget-object p10, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    .line 232
    iget-object p11, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 233
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->unknownFields()Lokio/ByteString;

    move-result-object p12

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 221
    invoke-virtual/range {p2 .. p14}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ExpandedLocationReader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ExpandedLocationReader;
    .locals 14

    const-string v0, "unknownFields"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v13}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 169
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->object_:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->object_:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 175
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 176
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 177
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 178
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 179
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 180
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 181
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 186
    iget v0, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->hashCode:I

    if-nez v0, :cond_b

    .line 188
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 189
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 190
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->object_:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 191
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 192
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_type:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 193
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 194
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 195
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 196
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 197
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 198
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 199
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_a
    add-int/2addr v0, v2

    .line 200
    iput v0, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->hashCode:I

    :cond_b
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->newBuilder()Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 2

    .line 151
    new-instance v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->id:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->object_:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->object_:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->device_sw_version:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->device_type:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->ip_address:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->label:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 159
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->serial_number:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->status:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->livemode:Ljava/lang/Boolean;

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->base_url:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->object_:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "object_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->object_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_sw_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_sw_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_type:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->device_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ip_address="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->ip_address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "label="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial_number="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->serial_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "base_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;->base_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_a
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ExpandedLocationReader{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
