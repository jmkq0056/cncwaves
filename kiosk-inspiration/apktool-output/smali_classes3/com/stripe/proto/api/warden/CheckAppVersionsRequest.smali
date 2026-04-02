.class public final Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;
.super Lcom/squareup/wire/Message;
.source "CheckAppVersionsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;,
        Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002%&B{\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0008\u0012\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0002\u0010\u0016J|\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00082\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u001e\u001a\u00020\r2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0008\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0002H\u0016J\u0008\u0010$\u001a\u00020\u0004H\u0016R\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00118\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0019\u0010\u0018R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001a\u0010\u0018R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001b\u0010\u0018R\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001c\u0010\u0018\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;",
        "store_id",
        "",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "version_info",
        "",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "lane_status",
        "Lcom/stripe/proto/model/common/LaneStatus;",
        "is_debug",
        "",
        "asset_versions",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
        "environment_variables",
        "",
        "capabilities",
        "Lcom/stripe/proto/api/warden/ReaderCapabilities;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;)V",
        "getEnvironment_variables$annotations",
        "()V",
        "is_debug$annotations",
        "getLane_status$annotations",
        "getStore_id$annotations",
        "getVersion_info$annotations",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final asset_versions:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceAssetInfo#ADAPTER"
        jsonName = "assetVersions"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.warden.ReaderCapabilities#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final device_info:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        jsonName = "deviceInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final environment_variables:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "environmentVariables"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final is_debug:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "isDebug"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final lane_status:Lcom/stripe/proto/model/common/LaneStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.LaneStatus#ADAPTER"
        jsonName = "laneStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final store_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "storeId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final version_info:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "versionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->Companion:Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion;

    .line 327
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 326
    const-class v1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 330
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 326
    new-instance v3, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            ">;",
            "Lcom/stripe/proto/model/common/LaneStatus;",
            "Z",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/api/warden/ReaderCapabilities;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "store_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version_info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lane_status"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset_versions"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "environment_variables"

    invoke-static {p7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "unknownFields"

    invoke-static {p9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v3, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v3, p9}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 42
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 65
    iput-object p4, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    .line 78
    iput-boolean p5, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    .line 93
    iput-object p8, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    .line 115
    invoke-static {v0, p3}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    .line 129
    invoke-static {v1, p6}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    .line 144
    invoke-static {v2, p7}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    .line 51
    const-string p1, ""

    :cond_0
    and-int/lit8 p11, p10, 0x2

    const/4 v0, 0x0

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    .line 61
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 74
    sget-object p4, Lcom/stripe/proto/model/common/LaneStatus;->OPEN:Lcom/stripe/proto/model/common/LaneStatus;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    .line 88
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 89
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p7

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 101
    sget-object p9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 38
    invoke-direct/range {p2 .. p11}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    .line 206
    iget-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    .line 207
    iget-object p2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    .line 208
    iget-object p3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 209
    iget-object p4, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    .line 210
    iget-boolean p5, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    .line 211
    iget-object p6, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 212
    iget-object p7, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 213
    iget-object p8, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 214
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->unknownFields()Lokio/ByteString;

    move-result-object p9

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 205
    invoke-virtual/range {p2 .. p11}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->copy(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEnvironment_variables$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "environment_variables is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getLane_status$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "lane_status is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getStore_id$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "store_id is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getVersion_info$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "version_info is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic is_debug$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "is_debug is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            ">;",
            "Lcom/stripe/proto/model/common/LaneStatus;",
            "Z",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/api/warden/ReaderCapabilities;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;"
        }
    .end annotation

    const-string v0, "store_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version_info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lane_status"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset_versions"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment_variables"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance v1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 162
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 166
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    if-eq v1, v3, :cond_6

    return v2

    .line 168
    :cond_6
    iget-boolean v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 169
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 170
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 171
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    iget-object p1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 176
    iget v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->hashCode:I

    if-nez v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 179
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 180
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 181
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/LaneStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 183
    iget-boolean v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 184
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 185
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 186
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/warden/ReaderCapabilities;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 187
    iput v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->newBuilder()Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
    .locals 2

    .line 147
    new-instance v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->store_id:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->version_info:Ljava/util/List;

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    .line 152
    iget-boolean v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->is_debug:Z

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->asset_versions:Ljava/util/List;

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->environment_variables:Ljava/util/Map;

    .line 155
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    .line 156
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 194
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "store_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->store_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->version_info:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lane_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_debug="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->is_debug:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asset_versions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->asset_versions:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "environment_variables="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->environment_variables:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "capabilities="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CheckAppVersionsRequest{"

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
