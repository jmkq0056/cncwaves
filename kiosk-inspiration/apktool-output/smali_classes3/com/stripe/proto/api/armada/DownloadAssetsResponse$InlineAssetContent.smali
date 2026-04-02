.class public final Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;
.super Lcom/squareup/wire/Message;
.source "DownloadAssetsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadAssetsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InlineAssetContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;,
        Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBA\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJB\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;",
        "asset_type",
        "Lcom/stripe/proto/api/armada/AssetType;",
        "image",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;",
        "bin_config_rules",
        "",
        "Lcom/stripe/proto/model/config/BinConfigRule;",
        "localization_bundle",
        "Lcom/stripe/proto/model/config/LocalizationBundlePb;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final asset_type:Lcom/stripe/proto/api/armada/AssetType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.AssetType#ADAPTER"
        jsonName = "assetType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final bin_config_rules:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.BinConfigRule#ADAPTER"
        jsonName = "binConfigRules"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/BinConfigRule;",
            ">;"
        }
    .end annotation
.end field

.field public final image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImagePb#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.LocalizationBundlePb#ADAPTER"
        jsonName = "localizationBundle"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->Companion:Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Companion;

    .line 560
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 559
    const-class v1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 563
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 559
    new-instance v3, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;-><init>(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/armada/AssetType;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/BinConfigRule;",
            ">;",
            "Lcom/stripe/proto/model/config/LocalizationBundlePb;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "asset_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bin_config_rules"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    sget-object v1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 401
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 413
    iput-object p2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    .line 425
    iput-object p4, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    .line 448
    invoke-static {v0, p3}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->bin_config_rules:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 409
    sget-object p1, Lcom/stripe/proto/api/armada/AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/api/armada/AssetType;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 421
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 434
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 397
    invoke-direct/range {p2 .. p7}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;-><init>(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 494
    iget-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 495
    iget-object p2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 496
    iget-object p3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->bin_config_rules:Ljava/util/List;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 497
    iget-object p4, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 498
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 493
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->copy(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/armada/AssetType;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/BinConfigRule;",
            ">;",
            "Lcom/stripe/proto/model/config/LocalizationBundlePb;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;"
        }
    .end annotation

    const-string v0, "asset_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bin_config_rules"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    new-instance v1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;-><init>(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 462
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 463
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;

    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 464
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    if-eq v1, v3, :cond_3

    return v2

    .line 465
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 466
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->bin_config_rules:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->bin_config_rules:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 467
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    iget-object p1, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 472
    iget v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->hashCode:I

    if-nez v0, :cond_2

    .line 474
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 475
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/AssetType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 476
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 477
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->bin_config_rules:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 478
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/LocalizationBundlePb;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 479
    iput v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->newBuilder()Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;
    .locals 2

    .line 451
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 453
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    .line 454
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->bin_config_rules:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->bin_config_rules:Ljava/util/List;

    .line 455
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    .line 456
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 486
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asset_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "image="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->bin_config_rules:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bin_config_rules="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->bin_config_rules:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localization_bundle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "InlineAssetContent{"

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
