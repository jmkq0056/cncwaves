.class public final Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;
.super Lcom/squareup/wire/Message;
.source "DownloadPosConfigResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;,
        Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;",
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !Bk\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014Jl\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0002H\u0016J\u0008\u0010\u001f\u001a\u00020\u0011H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;",
        "config",
        "Lcom/stripe/proto/model/config/PosConfig;",
        "date_time",
        "Lcom/stripe/proto/model/common/DateTimePb;",
        "time_zone",
        "Lcom/stripe/proto/model/common/TimeZone;",
        "bin_table_asset",
        "Lcom/stripe/proto/model/common/SignedAssetPb;",
        "localization_bundle_asset",
        "reader_metadata",
        "Lcom/stripe/proto/api/armada/ReaderMetadata;",
        "reader_feature_flags",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "checksum",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;)V",
        "getDate_time$annotations",
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
            "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.SignedAssetPb#ADAPTER"
        jsonName = "binTableAsset"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final checksum:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final config:Lcom/stripe/proto/model/config/PosConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.PosConfig#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final date_time:Lcom/stripe/proto/model/common/DateTimePb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DateTimePb#ADAPTER"
        jsonName = "dateTime"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.SignedAssetPb#ADAPTER"
        jsonName = "localizationBundleAsset"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ReaderFeatureFlags#ADAPTER"
        jsonName = "readerFeatureFlags"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.ReaderMetadata#ADAPTER"
        jsonName = "readerMetadata"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final time_zone:Lcom/stripe/proto/model/common/TimeZone;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.TimeZone#ADAPTER"
        jsonName = "timeZone"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->Companion:Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion;

    .line 293
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 292
    const-class v1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 296
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 292
    new-instance v3, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;-><init>(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "time_zone"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checksum"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p9}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    .line 49
    iput-object p2, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    .line 62
    iput-object p3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    .line 74
    iput-object p4, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 86
    iput-object p5, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 95
    iput-object p6, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    .line 104
    iput-object p7, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    .line 113
    iput-object p8, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    .line 70
    sget-object p3, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 120
    const-string p8, ""

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 121
    sget-object p9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_8
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

    .line 33
    invoke-direct/range {p1 .. p10}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;-><init>(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    .line 183
    iget-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    .line 184
    iget-object p2, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    .line 185
    iget-object p3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 186
    iget-object p4, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    .line 187
    iget-object p5, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    .line 188
    iget-object p6, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 189
    iget-object p7, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 190
    iget-object p8, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 191
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object p9

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 182
    invoke-virtual/range {p2 .. p11}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->copy(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDate_time$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "date_time is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;
    .locals 11

    const-string v0, "time_zone"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checksum"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;-><init>(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 139
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    if-eq v1, v3, :cond_5

    return v2

    .line 144
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 145
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 146
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 147
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 148
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 153
    iget v0, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->hashCode:I

    if-nez v0, :cond_6

    .line 155
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 156
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/PosConfig;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 157
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DateTimePb;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 158
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/TimeZone;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 159
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/SignedAssetPb;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 160
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/SignedAssetPb;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/ReaderMetadata;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 163
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    iput v0, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->hashCode:I

    :cond_6
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->newBuilder()Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
    .locals 2

    .line 124
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->config:Lcom/stripe/proto/model/config/PosConfig;

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->checksum:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->config:Lcom/stripe/proto/model/config/PosConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "date_time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time_zone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bin_table_asset="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localization_bundle_asset="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_feature_flags="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checksum="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;->checksum:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DownloadPosConfigResponse{"

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
