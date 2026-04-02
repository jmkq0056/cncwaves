.class public final Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;
.super Lcom/squareup/wire/Message;
.source "ActivateConnectionTokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;,
        Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002$%B\u00af\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n\u0012\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J\u00b5\u0001\u0010\u001b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n2\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00162\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0002H\u0016J\u0008\u0010#\u001a\u00020\u0004H\u0016R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;",
        "pos_device_id",
        "",
        "device_type",
        "device_serial_number",
        "reader_",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "reader_version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "pos_device_info",
        "pos_version_info",
        "reported_reader_config",
        "Lcom/stripe/proto/api/rest/ReportedReaderConfig;",
        "register_to_location",
        "connection_type",
        "Lcom/stripe/proto/api/rest/ConnectionType;",
        "pos_secondary_version_info",
        "expand",
        "",
        "generate_offline_stripe_session_token",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
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
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final connection_type:Lcom/stripe/proto/api/rest/ConnectionType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.ConnectionType#ADAPTER"
        jsonName = "connectionType"
        oneofName = "optional_connection_type"
        schemaIndex = 0x9
        tag = 0xb
    .end annotation
.end field

.field public final device_serial_number:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "deviceSerialNumber"
        schemaIndex = 0x2
        tag = 0x4
    .end annotation
.end field

.field public final device_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "deviceType"
        schemaIndex = 0x1
        tag = 0x3
    .end annotation
.end field

.field public final expand:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final generate_offline_stripe_session_token:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "generateOfflineStripeSessionToken"
        schemaIndex = 0xc
        tag = 0xe
    .end annotation
.end field

.field public final pos_device_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "posDeviceId"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        jsonName = "posDeviceInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x7
    .end annotation
.end field

.field public final pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "posSecondaryVersionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xc
    .end annotation
.end field

.field public final pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "posVersionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x8
    .end annotation
.end field

.field public final reader_:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        declaredName = "reader"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "readerVersionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x6
    .end annotation
.end field

.field public final register_to_location:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "registerToLocation"
        schemaIndex = 0x8
        tag = 0xa
    .end annotation
.end field

.field public final reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.ReportedReaderConfig#ADAPTER"
        jsonName = "reportedReaderConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->Companion:Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion;

    .line 438
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 437
    const-class v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 441
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 437
    new-instance v3, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    const/16 v15, 0x3fff

    const/16 v16, 0x0

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

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/api/rest/ReportedReaderConfig;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ConnectionType;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p12

    move-object/from16 v1, p14

    const-string v2, "expand"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "unknownFields"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v3, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v3, v1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 84
    iput-object p5, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 96
    iput-object p6, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 108
    iput-object p7, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 120
    iput-object p8, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    .line 132
    iput-object p9, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    .line 140
    iput-object p10, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    .line 152
    iput-object p11, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object/from16 p1, p13

    .line 162
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    .line 179
    invoke-static {v2, v0}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 161
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 170
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p15, v0

    goto :goto_d

    :cond_d
    move-object/from16 p15, p14

    :goto_d
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p14, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    .line 35
    invoke-direct/range {p1 .. p15}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 266
    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 267
    iget-object v4, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 268
    iget-object v5, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 269
    iget-object v6, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 270
    iget-object v7, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 271
    iget-object v8, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    .line 272
    iget-object v9, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    .line 273
    iget-object v10, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    .line 274
    iget-object v11, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    goto :goto_a

    :cond_a
    move-object/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    .line 275
    iget-object v12, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    .line 276
    iget-object v13, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 277
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    move-object/from16 p15, v0

    goto :goto_d

    :cond_d
    move-object/from16 p15, p14

    :goto_d
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    .line 263
    invoke-virtual/range {p1 .. p15}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/api/rest/ReportedReaderConfig;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ConnectionType;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;"
        }
    .end annotation

    const-string v0, "expand"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    new-instance v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    move-object/from16 v2, p1

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

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 205
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 210
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 211
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 212
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 213
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 214
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 215
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 216
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eq v1, v3, :cond_c

    return v2

    .line 217
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 218
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 219
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 224
    iget v0, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->hashCode:I

    if-nez v0, :cond_c

    .line 226
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 227
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

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

    .line 228
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 229
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 230
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 231
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/VersionInfoPb;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 232
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 233
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/VersionInfoPb;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 234
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/ReportedReaderConfig;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 235
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 236
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/ConnectionType;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 237
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/VersionInfoPb;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 238
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 239
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_b
    add-int/2addr v0, v2

    .line 240
    iput v0, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->hashCode:I

    :cond_c
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->newBuilder()Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 2

    .line 185
    new-instance v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_device_id:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->device_type:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->device_serial_number:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 190
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 191
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 192
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 193
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    .line 194
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->register_to_location:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    .line 196
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 197
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->expand:Ljava/util/List;

    .line 198
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    .line 199
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 247
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_device_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_serial_number="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_device_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reported_reader_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register_to_location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_secondary_version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expand="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generate_offline_stripe_session_token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_c
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ActivateConnectionTokenRequest{"

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
