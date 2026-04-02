.class public final Lcom/stripe/proto/model/offline_mode/OfflineConnection;
.super Lcom/squareup/wire/Message;
.source "OfflineConnection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;,
        Lcom/stripe/proto/model/offline_mode/OfflineConnection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002%&B\u00b9\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001bJ\u00ba\u0001\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0008\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0002H\u0016J\u0008\u0010$\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;",
        "firmware_version",
        "",
        "config_version",
        "key_id",
        "account_id",
        "id",
        "",
        "reader_id",
        "created_at",
        "device_type",
        "pos_version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "pos_device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "reader_device_info",
        "connection_type",
        "Lcom/stripe/proto/api/rest/ConnectionType;",
        "location",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "location_id",
        "ip_address",
        "base_url",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
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
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/offline_mode/OfflineConnection$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final account_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "accountId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final base_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "baseUrl"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final config_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "configVersion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final connection_type:Lcom/stripe/proto/api/rest/ConnectionType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.ConnectionType#ADAPTER"
        jsonName = "connectionType"
        oneofName = "optional_connection_type"
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final created_at:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        jsonName = "createdAt"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final device_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "deviceType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final firmware_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "firmwareVersion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final ip_address:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "ipAddress"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final key_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "keyId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final location:Lcom/stripe/proto/model/merchant/ApiLocationPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.merchant.ApiLocationPb#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final location_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        jsonName = "locationId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        jsonName = "posDeviceInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "posVersionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        jsonName = "readerDeviceInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final reader_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        jsonName = "readerId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->Companion:Lcom/stripe/proto/model/offline_mode/OfflineConnection$Companion;

    .line 449
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 448
    const-class v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 452
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 448
    new-instance v3, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    const v22, 0x1ffff

    const/16 v23, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v23}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 5

    move-object/from16 v0, p11

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    move-object/from16 v3, p21

    const-string v4, "firmware_version"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "config_version"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "key_id"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "account_id"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "device_type"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ip_address"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "base_url"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "unknownFields"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v4, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v4, v3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 32
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->firmware_version:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->config_version:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->key_id:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    .line 68
    iput-wide p5, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    .line 76
    iput-wide p7, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    .line 85
    iput-wide p9, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    .line 94
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    move-object/from16 p1, p12

    .line 103
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object/from16 p1, p13

    .line 112
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    move-object/from16 p1, p14

    .line 121
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    move-object/from16 p1, p15

    .line 130
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    move-object/from16 p1, p16

    .line 142
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    move-wide/from16 p1, p17

    .line 150
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    .line 159
    iput-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ip_address:Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->base_url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    .line 31
    const-string v2, ""

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

    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p7

    :goto_5
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    const-wide/16 v13, 0x0

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p9

    :goto_6
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_7

    move-object v6, v2

    goto :goto_7

    :cond_7
    move-object/from16 v6, p11

    :goto_7
    and-int/lit16 v15, v0, 0x100

    const/16 v16, 0x0

    if-eqz v15, :cond_8

    move-object/from16 v15, v16

    goto :goto_8

    :cond_8
    move-object/from16 v15, p12

    :goto_8
    and-int/lit16 v7, v0, 0x200

    if-eqz v7, :cond_9

    move-object/from16 v7, v16

    goto :goto_9

    :cond_9
    move-object/from16 v7, p13

    :goto_9
    and-int/lit16 v8, v0, 0x400

    if-eqz v8, :cond_a

    move-object/from16 v8, v16

    goto :goto_a

    :cond_a
    move-object/from16 v8, p14

    :goto_a
    move-object/from16 p23, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    move-object/from16 v1, v16

    goto :goto_b

    :cond_b
    move-object/from16 v1, p15

    :goto_b
    move-object/from16 p3, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v16, p16

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    const-wide/16 v17, 0x0

    goto :goto_d

    :cond_d
    move-wide/from16 v17, p17

    :goto_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    move-object v1, v2

    goto :goto_e

    :cond_e
    move-object/from16 v1, p19

    :goto_e
    const v19, 0x8000

    and-int v19, v0, v19

    if-eqz v19, :cond_f

    goto :goto_f

    :cond_f
    move-object/from16 v2, p20

    :goto_f
    const/high16 v19, 0x10000

    and-int v0, v0, v19

    if-eqz v0, :cond_10

    .line 177
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p22, v0

    goto :goto_10

    :cond_10
    move-object/from16 p22, p21

    :goto_10
    move-object/from16 p1, p0

    move-object/from16 p16, p3

    move-object/from16 p2, p23

    move-object/from16 p20, v1

    move-object/from16 p21, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p12, v6

    move-object/from16 p14, v7

    move-object/from16 p15, v8

    move-wide/from16 p6, v9

    move-wide/from16 p8, v11

    move-wide/from16 p10, v13

    move-object/from16 p13, v15

    move-object/from16 p17, v16

    move-wide/from16 p18, v17

    .line 31
    invoke-direct/range {p1 .. p22}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/offline_mode/OfflineConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->firmware_version:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 275
    iget-object v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->config_version:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 276
    iget-object v4, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->key_id:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 277
    iget-object v5, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 278
    iget-wide v6, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    .line 279
    iget-wide v8, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    .line 280
    iget-wide v10, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    goto :goto_6

    :cond_6
    move-wide/from16 v10, p9

    :goto_6
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_7

    .line 281
    iget-object v12, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v12, p11

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    .line 282
    iget-object v13, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    .line 283
    iget-object v14, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    .line 284
    iget-object v15, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    .line 285
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p15

    :goto_b
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    .line 286
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p16

    :goto_c
    move-object/from16 p3, v2

    and-int/lit16 v2, v1, 0x2000

    move-object/from16 p23, v3

    if-eqz v2, :cond_d

    .line 287
    iget-wide v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    goto :goto_d

    :cond_d
    move-wide/from16 v2, p17

    :goto_d
    move-wide/from16 p4, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 288
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ip_address:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p19

    :goto_e
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_f

    .line 289
    iget-object v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->base_url:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v3, p20

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    .line 290
    invoke-virtual {v0}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->unknownFields()Lokio/ByteString;

    move-result-object v1

    move-object/from16 p22, v1

    goto :goto_10

    :cond_10
    move-object/from16 p22, p21

    :goto_10
    move-object/from16 p16, p2

    move-object/from16 p17, p3

    move-wide/from16 p18, p4

    move-object/from16 p3, p23

    move-object/from16 p20, v2

    move-object/from16 p21, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 273
    invoke-virtual/range {p1 .. p22}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .locals 23

    const-string v0, "firmware_version"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config_version"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_id"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account_id"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device_type"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ip_address"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base_url"

    move-object/from16 v6, p20

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v7, p21

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    new-instance v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-wide/from16 v18, p17

    move-object/from16 v20, p19

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v22}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 206
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-virtual {p1}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->firmware_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->firmware_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->config_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->config_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 210
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->key_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->key_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 211
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 212
    :cond_6
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 213
    :cond_7
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    .line 214
    :cond_8
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    .line 215
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 216
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 217
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 218
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 219
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eq v1, v3, :cond_e

    return v2

    .line 220
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 221
    :cond_f
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    .line 222
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ip_address:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ip_address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 223
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->base_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->base_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 228
    iget v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->hashCode:I

    if-nez v0, :cond_5

    .line 230
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 231
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->firmware_version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 232
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->config_version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 233
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->key_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 234
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 235
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 236
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 237
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 238
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 239
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/VersionInfoPb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 240
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 241
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 242
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/ConnectionType;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 243
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 244
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 245
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ip_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 246
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->base_url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    iput v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->newBuilder()Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 3

    .line 183
    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->firmware_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->firmware_version:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->config_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->config_version:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->key_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->key_id:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->account_id:Ljava/lang/String;

    .line 188
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->id:J

    .line 189
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->reader_id:J

    .line 190
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->created_at:J

    .line 191
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->device_type:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 193
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 194
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 195
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    .line 196
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 197
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->location_id:J

    .line 198
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ip_address:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->ip_address:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->base_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->base_url:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 254
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firmware_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->firmware_version:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->config_version:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->key_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_device_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_device_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ip_address="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ip_address:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "base_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->base_url:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "OfflineConnection{"

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
