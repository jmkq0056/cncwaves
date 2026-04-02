.class public final Lcom/stripe/proto/model/common/DeviceAssetInfo;
.super Lcom/squareup/wire/Message;
.source "DeviceAssetInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;,
        Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;,
        Lcom/stripe/proto/model/common/DeviceAssetInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019BC\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJD\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;",
        "name",
        "",
        "asset_type",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "installer_package_name",
        "asset_version_id",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "AssetType",
        "Builder",
        "Companion",
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
            "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/DeviceAssetInfo$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceAssetInfo$AssetType#ADAPTER"
        jsonName = "assetType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final asset_version_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "assetVersionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final installer_package_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "installerPackageName"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final version_info:Lcom/stripe/proto/model/common/VersionInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "versionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/DeviceAssetInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->Companion:Lcom/stripe/proto/model/common/DeviceAssetInfo$Companion;

    .line 206
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 205
    const-class v1, Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 209
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 205
    new-instance v3, Lcom/stripe/proto/model/common/DeviceAssetInfo$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/DeviceAssetInfo$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/common/DeviceAssetInfo;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset_type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installer_package_name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset_version_id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 54
    iput-object p3, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 68
    iput-object p4, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->installer_package_name:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_version_id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    .line 33
    const-string v0, ""

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 53
    sget-object p2, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 86
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 33
    invoke-direct/range {p1 .. p7}, Lcom/stripe/proto/model/common/DeviceAssetInfo;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/DeviceAssetInfo;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceAssetInfo;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 136
    iget-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 137
    iget-object p2, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 138
    iget-object p3, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 139
    iget-object p4, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->installer_package_name:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 140
    iget-object p5, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_version_id:Ljava/lang/String;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 141
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetInfo;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 135
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/model/common/DeviceAssetInfo;->copy(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/common/DeviceAssetInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/common/DeviceAssetInfo;
    .locals 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset_type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installer_package_name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset_version_id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/common/DeviceAssetInfo;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/DeviceAssetInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetInfo;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/DeviceAssetInfo;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/DeviceAssetInfo;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    if-eq v1, v3, :cond_4

    return v2

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetInfo;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->installer_package_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetInfo;->installer_package_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_version_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_version_id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 112
    iget v0, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->hashCode:I

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetInfo;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/VersionInfoPb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->installer_package_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_version_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    iput v0, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetInfo;->newBuilder()Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;
    .locals 2

    .line 89
    new-instance v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->name:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->installer_package_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->installer_package_name:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_version_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->asset_version_id:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetInfo;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 127
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asset_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "installer_package_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->installer_package_name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asset_version_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo;->asset_version_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DeviceAssetInfo{"

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
