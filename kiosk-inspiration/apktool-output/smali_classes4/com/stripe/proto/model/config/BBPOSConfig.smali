.class public final Lcom/stripe/proto/model/config/BBPOSConfig;
.super Lcom/squareup/wire/Message;
.source "BBPOSConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/BBPOSConfig$Builder;,
        Lcom/stripe/proto/model/config/BBPOSConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
        "Lcom/stripe/proto/model/config/BBPOSConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\u0081\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J\u0082\u0001\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0002H\u0016J\u0008\u0010\u001d\u001a\u00020\tH\u0016R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/BBPOSConfig$Builder;",
        "pinpad_image_assets",
        "Lcom/stripe/proto/model/config/PinpadImageAssets;",
        "firmware_spec",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "config_spec",
        "key_profile_id",
        "",
        "key_profile_name",
        "key_profile_pek0",
        "key_profile_upgrade_arg",
        "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
        "aid_order",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;",
        "minimum_required_firmware_spec",
        "minimum_required_config_spec",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/config/BBPOSConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/BBPOSConfig$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.RegionalAidOrder#ADAPTER"
        jsonName = "aidOrder"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x6
    .end annotation
.end field

.field public final config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER"
        jsonName = "configSpec"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER"
        jsonName = "firmwareSpec"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final key_profile_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "keyProfileId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final key_profile_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "keyProfileName"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final key_profile_pek0:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "keyProfilePek0"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x7
    .end annotation
.end field

.field public final key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientUpgradeArgumentPb#ADAPTER"
        jsonName = "keyProfileUpgradeArg"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x8
    .end annotation
.end field

.field public final minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER"
        jsonName = "minimumRequiredConfigSpec"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER"
        jsonName = "minimumRequiredFirmwareSpec"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.PinpadImageAssets#ADAPTER"
        jsonName = "pinpadImageAssets"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/BBPOSConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/BBPOSConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/BBPOSConfig;->Companion:Lcom/stripe/proto/model/config/BBPOSConfig$Companion;

    .line 303
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 302
    const-class v1, Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 306
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 302
    new-instance v3, Lcom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/BBPOSConfig$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/BBPOSConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/model/config/BBPOSConfig;-><init>(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)V
    .locals 1

    const-string v0, "key_profile_id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_profile_name"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_profile_pek0"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/stripe/proto/model/config/BBPOSConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    .line 40
    iput-object p2, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 49
    iput-object p3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 58
    iput-object p4, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    .line 85
    iput-object p7, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 94
    iput-object p8, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    .line 103
    iput-object p9, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 112
    iput-object p10, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    .line 30
    const-string v1, ""

    if-eqz p13, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move-object p5, v1

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move-object p6, v1

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 121
    sget-object p11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_a
    move-object p12, p11

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

    .line 30
    invoke-direct/range {p1 .. p12}, Lcom/stripe/proto/model/config/BBPOSConfig;-><init>(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/BBPOSConfig;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 191
    iget-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 192
    iget-object p2, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 193
    iget-object p3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 194
    iget-object p4, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 195
    iget-object p5, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 196
    iget-object p6, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 197
    iget-object p7, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 198
    iget-object p8, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 199
    iget-object p9, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    .line 200
    iget-object p10, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 201
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BBPOSConfig;->unknownFields()Lokio/ByteString;

    move-result-object p11

    :cond_a
    move-object p12, p10

    move-object p13, p11

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

    .line 190
    invoke-virtual/range {p2 .. p13}, Lcom/stripe/proto/model/config/BBPOSConfig;->copy(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)Lcom/stripe/proto/model/config/BBPOSConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)Lcom/stripe/proto/model/config/BBPOSConfig;
    .locals 13

    const-string v0, "key_profile_id"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_profile_name"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_profile_pek0"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/stripe/proto/model/config/BBPOSConfig;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/model/config/BBPOSConfig;-><init>(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 141
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BBPOSConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/BBPOSConfig;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 146
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 147
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 148
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 149
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 150
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 151
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 152
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iget-object p1, p1, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 157
    iget v0, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->hashCode:I

    if-nez v0, :cond_7

    .line 159
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BBPOSConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 160
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/PinpadImageAssets;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 163
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 165
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 168
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    .line 170
    iput v0, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->hashCode:I

    :cond_7
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BBPOSConfig;->newBuilder()Lcom/stripe/proto/model/config/BBPOSConfig$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 2

    .line 124
    new-instance v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_id:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_name:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_pek0:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 135
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BBPOSConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 177
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pinpad_image_assets="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firmware_spec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config_spec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key_profile_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key_profile_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key_profile_pek0="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v2, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key_profile_upgrade_arg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aid_order="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minimum_required_firmware_spec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minimum_required_config_spec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_6
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "BBPOSConfig{"

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
