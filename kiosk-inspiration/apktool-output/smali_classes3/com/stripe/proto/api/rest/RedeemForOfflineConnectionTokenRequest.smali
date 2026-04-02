.class public final Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;
.super Lcom/squareup/wire/Message;
.source "RedeemForOfflineConnectionTokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;,
        Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001f B{\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u0081\u0001\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0002H\u0016J\u0008\u0010\u001e\u001a\u00020\u0004H\u0016R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;",
        "device_type",
        "",
        "device_serial_number",
        "location",
        "reader_last_activated_online",
        "",
        "reader_id",
        "pos_version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "pos_device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "reader_",
        "connection_type",
        "Lcom/stripe/proto/api/rest/ConnectionType;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        "equals",
        "",
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
            "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final connection_type:Lcom/stripe/proto/api/rest/ConnectionType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.ConnectionType#ADAPTER"
        jsonName = "connectionType"
        oneofName = "optional_connection_type"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final device_serial_number:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "deviceSerialNumber"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final device_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "deviceType"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final location:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        jsonName = "posDeviceInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "posVersionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final reader_:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        declaredName = "reader"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final reader_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "readerId"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final reader_last_activated_online:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "readerLastActivatedOnline"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->Companion:Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion;

    .line 331
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 330
    const-class v1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 334
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 330
    new-instance v3, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x3ff

    const/4 v12, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    .line 80
    iput-object p5, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 103
    iput-object p7, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 115
    iput-object p8, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 124
    iput-object p9, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 133
    sget-object p10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_9
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

    .line 31
    invoke-direct/range {p1 .. p11}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    .line 202
    iget-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    .line 203
    iget-object p2, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    .line 204
    iget-object p3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    .line 205
    iget-object p4, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    .line 206
    iget-object p5, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    .line 207
    iget-object p6, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    .line 208
    iget-object p7, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    .line 209
    iget-object p8, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    .line 210
    iget-object p9, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 211
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object p10

    :cond_9
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

    .line 201
    invoke-virtual/range {p2 .. p12}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;
    .locals 12

    const-string v0, "unknownFields"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 155
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 159
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 160
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 161
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 162
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 163
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 164
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 165
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 170
    iget v0, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->hashCode:I

    if-nez v0, :cond_9

    .line 172
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

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

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 175
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 176
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 177
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/VersionInfoPb;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 179
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 180
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 181
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/ConnectionType;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    .line 182
    iput v0, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->hashCode:I

    :cond_9
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->newBuilder()Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 2

    .line 139
    new-instance v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->device_type:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->device_serial_number:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->location:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->reader_last_activated_online:Ljava/lang/Long;

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->reader_id:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 189
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_serial_number="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_last_activated_online="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_device_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_8
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "RedeemForOfflineConnectionTokenRequest{"

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
