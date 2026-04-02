.class public final Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;
.super Lcom/squareup/wire/Message;
.source "DeviceAssetVersionMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;,
        Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !Bw\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0002\u0010\u0016Jx\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0002H\u0016J\u0008\u0010\u001f\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;",
        "md5_checksum",
        "",
        "sha256_checksum",
        "android_package_metadata",
        "Lcom/stripe/proto/model/common/AndroidPackageMetadata;",
        "semantic_versioned_metadata",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;",
        "firmware_metadata",
        "Lcom/stripe/proto/model/common/FirmwareMetadata;",
        "uber_language_pack_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;",
        "bbpos_configuration_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;",
        "bbpos_key_profile_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
        "language_pack_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.AndroidPackageMetadata#ADAPTER"
        jsonName = "androidPackageMetadata"
        oneofName = "additional_metadata"
        schemaIndex = 0x2
        tag = 0x2
    .end annotation
.end field

.field public final bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.core.BbposConfigurationMetadata#ADAPTER"
        jsonName = "bbposConfigurationMetadata"
        oneofName = "additional_metadata"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.core.BbposKeyProfileMetadata#ADAPTER"
        jsonName = "bbposKeyProfileMetadata"
        oneofName = "additional_metadata"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.FirmwareMetadata#ADAPTER"
        jsonName = "firmwareMetadata"
        oneofName = "additional_metadata"
        schemaIndex = 0x4
        tag = 0x4
    .end annotation
.end field

.field public final language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.core.LanguagePackAssetMetadata#ADAPTER"
        jsonName = "languagePackMetadata"
        oneofName = "additional_metadata"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final md5_checksum:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "md5Checksum"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.SemanticVersionedAssetMetadata#ADAPTER"
        jsonName = "semanticVersionedMetadata"
        oneofName = "additional_metadata"
        schemaIndex = 0x3
        tag = 0x3
    .end annotation
.end field

.field public final sha256_checksum:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "sha256Checksum"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x5
    .end annotation
.end field

.field public final uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.core.UberLanguagePackAssetMetadata#ADAPTER"
        jsonName = "uberLanguagePackMetadata"
        oneofName = "additional_metadata"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->Companion:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion;

    .line 342
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 341
    const-class v1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 345
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 341
    new-instance v3, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;)V
    .locals 1

    const-string v0, "md5_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sha256_checksum"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 40
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 67
    iput-object p4, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 76
    iput-object p5, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 85
    iput-object p6, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 94
    iput-object p7, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 103
    iput-object p8, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 112
    iput-object p9, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    .line 124
    filled-new-array {p7, p8, p9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p4, p5, p6, p1}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of android_package_metadata, semantic_versioned_metadata, firmware_metadata, uber_language_pack_metadata, bbpos_configuration_metadata, bbpos_key_profile_metadata, language_pack_metadata may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    .line 35
    const-string v0, ""

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    const/4 v0, 0x0

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

    .line 121
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

    .line 35
    invoke-direct/range {p1 .. p11}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    .line 193
    iget-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    .line 194
    iget-object p2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    .line 195
    iget-object p3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    .line 196
    iget-object p4, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    .line 197
    iget-object p5, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    .line 198
    iget-object p6, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    .line 199
    iget-object p7, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    .line 200
    iget-object p8, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    .line 201
    iget-object p9, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 202
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->unknownFields()Lokio/ByteString;

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

    .line 192
    invoke-virtual/range {p2 .. p12}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;
    .locals 12

    const-string v0, "md5_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sha256_checksum"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 146
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 151
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 152
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 153
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 154
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 156
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    iget-object p1, p1, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 161
    iget v0, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->hashCode:I

    if-nez v0, :cond_7

    .line 163
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 165
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/AndroidPackageMetadata;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 168
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/FirmwareMetadata;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    .line 173
    iput v0, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->hashCode:I

    :cond_7
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->newBuilder()Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 2

    .line 130
    new-instance v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->md5_checksum:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->sha256_checksum:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 135
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 136
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 137
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 138
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 139
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    .line 140
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 180
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "md5_checksum="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->md5_checksum:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sha256_checksum="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->sha256_checksum:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android_package_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "semantic_versioned_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firmware_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uber_language_pack_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbpos_configuration_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbpos_key_profile_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "language_pack_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_6
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DeviceAssetVersionMetadata{"

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
