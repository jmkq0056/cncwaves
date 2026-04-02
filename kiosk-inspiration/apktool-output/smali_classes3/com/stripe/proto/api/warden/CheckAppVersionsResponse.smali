.class public final Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;
.super Lcom/squareup/wire/Message;
.source "CheckAppVersionsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;,
        Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Companion;,
        Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001c\u001d\u001eB]\u0012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ^\u0010\u0013\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u000bH\u0016R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0012\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;",
        "client_upgrade_spec",
        "",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "default_app_on_device",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;",
        "os_upgrade_spec",
        "firmware_upgrade_spec",
        "device_assets_snapshot_id",
        "",
        "deploy_group_snapshot_ids",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V",
        "getFirmware_upgrade_spec$annotations",
        "()V",
        "getOs_upgrade_spec$annotations",
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
        "DefaultApp",
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
            "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final client_upgrade_spec:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER"
        jsonName = "clientUpgradeSpec"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            ">;"
        }
    .end annotation
.end field

.field public final default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.warden.CheckAppVersionsResponse$DefaultApp#ADAPTER"
        jsonName = "defaultAppOnDevice"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x4
    .end annotation
.end field

.field public final deploy_group_snapshot_ids:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "deployGroupSnapshotIds"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final device_assets_snapshot_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "deviceAssetsSnapshotId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER"
        jsonName = "firmwareUpgradeSpec"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x3
    .end annotation
.end field

.field public final os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER"
        jsonName = "osUpgradeSpec"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->Companion:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Companion;

    .line 247
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 246
    const-class v1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 250
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 246
    new-instance v3, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;-><init>(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            ">;",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "client_upgrade_spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "device_assets_snapshot_id"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deploy_group_snapshot_ids"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "unknownFields"

    invoke-static {p7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v2, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v2, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-object p2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    .line 48
    iput-object p3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 58
    iput-object p4, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 71
    iput-object p5, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->device_assets_snapshot_id:Ljava/lang/String;

    .line 95
    invoke-static {v0, p1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->client_upgrade_spec:Ljava/util/List;

    .line 106
    invoke-static {v1, p6}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->deploy_group_snapshot_ids:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 79
    const-string p5, ""

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 80
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 81
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 33
    invoke-direct/range {p2 .. p9}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;-><init>(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 160
    iget-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->client_upgrade_spec:Ljava/util/List;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 161
    iget-object p2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 162
    iget-object p3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 163
    iget-object p4, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 164
    iget-object p5, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->device_assets_snapshot_id:Ljava/lang/String;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 165
    iget-object p6, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->deploy_group_snapshot_ids:Ljava/util/List;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 166
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 159
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->copy(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFirmware_upgrade_spec$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "firmware_upgrade_spec is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getOs_upgrade_spec$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "os_upgrade_spec is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            ">;",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;"
        }
    .end annotation

    const-string v0, "client_upgrade_spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device_assets_snapshot_id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deploy_group_snapshot_ids"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;-><init>(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 122
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->client_upgrade_spec:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->client_upgrade_spec:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 128
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->device_assets_snapshot_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->device_assets_snapshot_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 129
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->deploy_group_snapshot_ids:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->deploy_group_snapshot_ids:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 134
    iget v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->hashCode:I

    if-nez v0, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 137
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->client_upgrade_spec:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 138
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 139
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 141
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->device_assets_snapshot_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 142
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->deploy_group_snapshot_ids:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    iput v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->newBuilder()Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;
    .locals 2

    .line 109
    new-instance v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->client_upgrade_spec:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->client_upgrade_spec:Ljava/util/List;

    .line 111
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    .line 112
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->device_assets_snapshot_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->device_assets_snapshot_id:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->deploy_group_snapshot_ids:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->deploy_group_snapshot_ids:Ljava/util/List;

    .line 116
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->client_upgrade_spec:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_upgrade_spec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->client_upgrade_spec:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "default_app_on_device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "os_upgrade_spec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firmware_upgrade_spec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_assets_snapshot_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->device_assets_snapshot_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->deploy_group_snapshot_ids:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deploy_group_snapshot_ids="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->deploy_group_snapshot_ids:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CheckAppVersionsResponse{"

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
