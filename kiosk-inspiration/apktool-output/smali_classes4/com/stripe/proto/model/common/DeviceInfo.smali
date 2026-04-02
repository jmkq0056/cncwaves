.class public final Lcom/stripe/proto/model/common/DeviceInfo;
.super Lcom/squareup/wire/Message;
.source "DeviceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/DeviceInfo$Builder;,
        Lcom/stripe/proto/model/common/DeviceInfo$Companion;,
        Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "Lcom/stripe/proto/model/common/DeviceInfo$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003$%&B\u00ab\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0002\u0010\u001aJ\u00ac\u0001\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00062\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0002H\u0016J\u0008\u0010#\u001a\u00020\u0006H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/DeviceInfo$Builder;",
        "device_class",
        "Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;",
        "device_uuid",
        "",
        "hardware_model",
        "Lcom/stripe/proto/model/common/HardwareModel;",
        "app_model",
        "Lcom/stripe/proto/model/common/ApplicationModel;",
        "device_ip",
        "host_hw_version",
        "host_os_version",
        "hostname",
        "connectivity_source",
        "Lcom/stripe/proto/model/common/InternetConnectionSource;",
        "bbpos_firmware",
        "bbpos_base_config",
        "bbpos_key_profile",
        "bbpos_rom",
        "stripe_config_hash",
        "location",
        "Lcom/stripe/proto/model/common/Location;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;)V",
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
        "DeviceClass",
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
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/DeviceInfo$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final app_model:Lcom/stripe/proto/model/common/ApplicationModel;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ApplicationModel#ADAPTER"
        jsonName = "appModel"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x7
    .end annotation
.end field

.field public final bbpos_base_config:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "bbposBaseConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final bbpos_firmware:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "bbposFirmware"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final bbpos_key_profile:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "bbposKeyProfile"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final bbpos_rom:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "bbposRom"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.InternetConnectionSource#ADAPTER"
        jsonName = "connectivitySource"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo$DeviceClass#ADAPTER"
        jsonName = "deviceClass"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final device_ip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "deviceIp"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x4
    .end annotation
.end field

.field public final device_uuid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "deviceUuid"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final hardware_model:Lcom/stripe/proto/model/common/HardwareModel;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.HardwareModel#ADAPTER"
        jsonName = "hardwareModel"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final host_hw_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "hostHwVersion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x5
    .end annotation
.end field

.field public final host_os_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "hostOsVersion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x6
    .end annotation
.end field

.field public final hostname:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final location:Lcom/stripe/proto/model/common/Location;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.Location#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final stripe_config_hash:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "stripeConfigHash"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/common/DeviceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/DeviceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->Companion:Lcom/stripe/proto/model/common/DeviceInfo$Companion;

    .line 479
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 478
    const-class v1, Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 482
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 478
    new-instance v3, Lcom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/DeviceInfo$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    const v17, 0xffff

    const/16 v18, 0x0

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

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;)V
    .locals 12

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p16

    const-string v11, "device_class"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "device_uuid"

    invoke-static {p2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "device_ip"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "host_hw_version"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "host_os_version"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "hostname"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "connectivity_source"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "bbpos_firmware"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "bbpos_base_config"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "bbpos_key_profile"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "bbpos_rom"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "stripe_config_hash"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "unknownFields"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object v11, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v11, v10}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 46
    iput-object p2, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    move-object p1, p3

    .line 58
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    move-object/from16 p1, p4

    .line 70
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    .line 82
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    .line 126
    iput-object v4, p0, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    .line 138
    iput-object v5, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    .line 147
    iput-object v6, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    .line 156
    iput-object v7, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    .line 168
    iput-object v8, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    .line 180
    iput-object v9, p0, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 189
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->INVALID:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    .line 33
    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v3

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v3

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v3

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v3

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    .line 134
    sget-object v11, Lcom/stripe/proto/model/common/InternetConnectionSource;->UNKNOWN:Lcom/stripe/proto/model/common/InternetConnectionSource;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    move-object v12, v3

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    move-object v13, v3

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    move-object v14, v3

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    move-object v15, v3

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_d

    goto :goto_d

    :cond_d
    move-object/from16 v3, p14

    :goto_d
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v5, p15

    :goto_e
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_f

    .line 197
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p17, v0

    goto :goto_f

    :cond_f
    move-object/from16 p17, p16

    :goto_f
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p15, v3

    move-object/from16 p4, v4

    move-object/from16 p16, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    .line 33
    invoke-direct/range {p1 .. p17}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, v0, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, v0, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, v0, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 290
    iget-object v5, v0, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 291
    iget-object v6, v0, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 292
    iget-object v7, v0, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 293
    iget-object v8, v0, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 294
    iget-object v9, v0, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 295
    iget-object v10, v0, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 296
    iget-object v11, v0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 297
    iget-object v12, v0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 298
    iget-object v13, v0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 299
    iget-object v14, v0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 300
    iget-object v15, v0, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 301
    iget-object v2, v0, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    .line 302
    invoke-virtual {v0}, Lcom/stripe/proto/model/common/DeviceInfo;->unknownFields()Lokio/ByteString;

    move-result-object v1

    move-object/from16 p17, v1

    goto :goto_f

    :cond_f
    move-object/from16 p17, p16

    :goto_f
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    .line 286
    invoke-virtual/range {p1 .. p17}, Lcom/stripe/proto/model/common/DeviceInfo;->copy(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;)Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;)Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 18

    const-string v0, "device_class"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device_uuid"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device_ip"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host_hw_version"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host_os_version"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostname"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivity_source"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbpos_firmware"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbpos_base_config"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbpos_key_profile"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbpos_rom"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_config_hash"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/stripe/proto/model/common/DeviceInfo;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 222
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceInfo;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/DeviceInfo;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    if-eq v1, v3, :cond_3

    return v2

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 227
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 228
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 229
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 230
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 231
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 232
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    if-eq v1, v3, :cond_b

    return v2

    .line 233
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 234
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 235
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 236
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 237
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 238
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    iget-object p1, p1, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 243
    iget v0, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode:I

    if-nez v0, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceInfo;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 246
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 247
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 248
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/HardwareModel;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 249
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ApplicationModel;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 250
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 251
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 252
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 253
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 254
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/InternetConnectionSource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 256
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 257
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 258
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 259
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 260
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/Location;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 261
    iput v0, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceInfo;->newBuilder()Lcom/stripe/proto/model/common/DeviceInfo$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 2

    .line 200
    new-instance v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/DeviceInfo$Builder;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 202
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_uuid:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    .line 205
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_ip:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->host_hw_version:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->host_os_version:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->hostname:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    .line 210
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_firmware:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_base_config:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_key_profile:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_rom:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->stripe_config_hash:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->location:Lcom/stripe/proto/model/common/Location;

    .line 216
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceInfo;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 268
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_class="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_uuid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hardware_model="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app_model="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_ip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->device_ip:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "host_hw_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_hw_version:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "host_os_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->host_os_version:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hostname="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->hostname:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connectivity_source="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbpos_firmware="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_firmware:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbpos_base_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_base_config:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbpos_key_profile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_key_profile:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbpos_rom="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->bbpos_rom:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_config_hash="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->stripe_config_hash:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DeviceInfo{"

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
