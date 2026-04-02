.class public final Lcom/stripe/proto/model/config/MobileClientConfig;
.super Lcom/squareup/wire/Message;
.source "MobileClientConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/MobileClientConfig$Builder;,
        Lcom/stripe/proto/model/config/MobileClientConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "Lcom/stripe/proto/model/config/MobileClientConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002#$B\u0085\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J\u0086\u0001\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u0008\u0010\"\u001a\u00020\u0008H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/MobileClientConfig$Builder;",
        "client_visual_config",
        "Lcom/stripe/proto/model/config/ClientVisualConfig;",
        "client_checkout_options",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        "client_config_version",
        "",
        "bbpos_config",
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
        "tipping_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "offline_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "bluetooth_auto_reconnect_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "usb_auto_reconnect_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "forms_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
        "logging_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/config/MobileClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/MobileClientConfig$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.BBPOSConfig#ADAPTER"
        jsonName = "bbposConfig"
        oneofName = "mobile_configs"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb#ADAPTER"
        jsonName = "bluetoothAutoReconnectConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ClientCheckoutOptions#ADAPTER"
        jsonName = "clientCheckoutOptions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final client_config_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "clientConfigVersion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ClientVisualConfig#ADAPTER"
        jsonName = "clientVisualConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb#ADAPTER"
        jsonName = "formsConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.LoggingConfigPb#ADAPTER"
        jsonName = "loggingConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb#ADAPTER"
        jsonName = "offlineConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb#ADAPTER"
        jsonName = "tippingConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb#ADAPTER"
        jsonName = "usbAutoReconnectConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/MobileClientConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/MobileClientConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/MobileClientConfig;->Companion:Lcom/stripe/proto/model/config/MobileClientConfig$Companion;

    .line 310
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 309
    const-class v1, Lcom/stripe/proto/model/config/MobileClientConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 313
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 309
    new-instance v3, Lcom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/MobileClientConfig$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/MobileClientConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/model/config/MobileClientConfig;-><init>(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;)V
    .locals 1

    const-string v0, "client_config_version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/stripe/proto/model/config/MobileClientConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    .line 43
    iput-object p2, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 52
    iput-object p3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    .line 70
    iput-object p5, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 79
    iput-object p6, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 88
    iput-object p7, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    .line 97
    iput-object p8, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    .line 106
    iput-object p9, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    .line 115
    iput-object p10, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

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

    .line 60
    const-string p3, ""

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move-object p6, v0

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

    .line 124
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

    .line 33
    invoke-direct/range {p1 .. p12}, Lcom/stripe/proto/model/config/MobileClientConfig;-><init>(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 197
    iget-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 198
    iget-object p2, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 199
    iget-object p3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 200
    iget-object p4, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 201
    iget-object p5, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 202
    iget-object p6, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 203
    iget-object p7, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 204
    iget-object p8, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 205
    iget-object p9, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    .line 206
    iget-object p10, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 207
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/MobileClientConfig;->unknownFields()Lokio/ByteString;

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

    .line 196
    invoke-virtual/range {p2 .. p13}, Lcom/stripe/proto/model/config/MobileClientConfig;->copy(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;)Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 13

    const-string v0, "client_config_version"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/stripe/proto/model/config/MobileClientConfig;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/model/config/MobileClientConfig;-><init>(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 147
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/MobileClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/MobileClientConfig;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/MobileClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 154
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 155
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 156
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 157
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 158
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    iget-object p1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 163
    iget v0, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->hashCode:I

    if-nez v0, :cond_9

    .line 165
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/MobileClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ClientVisualConfig;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 168
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/BBPOSConfig;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 175
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    .line 176
    iput v0, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->hashCode:I

    :cond_9
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/MobileClientConfig;->newBuilder()Lcom/stripe/proto/model/config/MobileClientConfig$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 2

    .line 130
    new-instance v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_config_version:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    .line 135
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 136
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 137
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    .line 138
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    .line 139
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    .line 141
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/MobileClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 183
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_visual_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_checkout_options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_config_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbpos_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tipping_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bluetooth_auto_reconnect_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "usb_auto_reconnect_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_6
    iget-object v2, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forms_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "logging_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_8
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "MobileClientConfig{"

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
