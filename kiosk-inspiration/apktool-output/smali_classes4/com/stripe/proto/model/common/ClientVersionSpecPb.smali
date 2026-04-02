.class public final Lcom/stripe/proto/model/common/ClientVersionSpecPb;
.super Lcom/squareup/wire/Message;
.source "ClientVersionSpecPb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;,
        Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion;,
        Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003 !\"Ba\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013Jb\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0002H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0014\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "client_upgrade_arg",
        "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
        "version_metadata",
        "Lcom/stripe/proto/model/common/SignedAssetPb;",
        "presigned_url",
        "Lcom/stripe/proto/model/common/UrlPb;",
        "install_type",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;",
        "asset_version",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
        "asset_version_metadata",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;)V",
        "getVersion_metadata$annotations",
        "()V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "InstallType",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceAssetInfo#ADAPTER"
        jsonName = "assetVersion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x7
    .end annotation
.end field

.field public final asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceAssetVersionMetadata#ADAPTER"
        jsonName = "assetVersionMetadata"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x8
    .end annotation
.end field

.field public final client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientUpgradeArgumentPb#ADAPTER"
        jsonName = "clientUpgradeArg"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x3
    .end annotation
.end field

.field public final install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientVersionSpecPb$InstallType#ADAPTER"
        jsonName = "installType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x6
    .end annotation
.end field

.field public final presigned_url:Lcom/stripe/proto/model/common/UrlPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.UrlPb#ADAPTER"
        jsonName = "presignedUrl"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final version_info:Lcom/stripe/proto/model/common/VersionInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "versionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.SignedAssetPb#ADAPTER"
        jsonName = "versionMetadata"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->Companion:Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion;

    .line 282
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 281
    const-class v1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 285
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 281
    new-instance v3, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;)V
    .locals 1

    const-string v0, "install_type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p8}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 49
    iput-object p2, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 61
    iput-object p3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 74
    iput-object p4, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    .line 86
    iput-object p5, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    .line 98
    iput-object p6, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    .line 110
    iput-object p7, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 94
    sget-object p5, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->INCREMENTAL:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 119
    sget-object p8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_7
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 33
    invoke-direct/range {p1 .. p9}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 177
    iget-object p1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 178
    iget-object p2, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    .line 179
    iget-object p3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 180
    iget-object p4, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 181
    iget-object p5, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 182
    iget-object p6, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    .line 183
    iget-object p7, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 184
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->unknownFields()Lokio/ByteString;

    move-result-object p8

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 176
    invoke-virtual/range {p2 .. p10}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->copy(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;)Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getVersion_metadata$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "version_metadata is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;)Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 10

    const-string v0, "install_type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 141
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 142
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    if-eq v1, v3, :cond_7

    return v2

    .line 143
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 144
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 149
    iget v0, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->hashCode:I

    if-nez v0, :cond_6

    .line 151
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

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

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/SignedAssetPb;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 155
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/UrlPb;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 156
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 157
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceAssetInfo;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 158
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    .line 159
    iput v0, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->hashCode:I

    :cond_6
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->newBuilder()Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;
    .locals 2

    .line 122
    new-instance v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 124
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    .line 130
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_upgrade_arg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "presigned_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v2, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asset_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asset_version_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_5
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ClientVersionSpecPb{"

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
