.class public final Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
.super Lcom/squareup/wire/Message;
.source "ActivateTerminalRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;,
        Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002#$B{\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J|\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u0008\u0010\"\u001a\u00020\u0004H\u0016R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0018\u0010\u0017R\u0016\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0019\u0010\u0017R\u0016\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001a\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;",
        "pos_activation_token",
        "",
        "pos_device_id",
        "pos_hardware_info",
        "Lcom/stripe/proto/model/sdk/PosHardwareInfo;",
        "pos_software_info",
        "Lcom/stripe/proto/model/sdk/PosSoftwareInfo;",
        "fail_if_in_use",
        "",
        "pos_secondary_version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "terminal_id",
        "terminal_ip",
        "store_name",
        "store_address",
        "Lcom/stripe/proto/api/sdk/Address;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;)V",
        "getStore_address$annotations",
        "()V",
        "getStore_name$annotations",
        "getTerminal_id$annotations",
        "getTerminal_ip$annotations",
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
        "internal_release"
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
            "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final fail_if_in_use:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "failIfInUse"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x9
    .end annotation
.end field

.field public final pos_activation_token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "posActivationToken"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        redacted = true
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final pos_device_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "posDeviceId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x6
    .end annotation
.end field

.field public final pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.PosHardwareInfo#ADAPTER"
        jsonName = "posHardwareInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x4
    .end annotation
.end field

.field public final pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "posSecondaryVersionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0xa
    .end annotation
.end field

.field public final pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.PosSoftwareInfo#ADAPTER"
        jsonName = "posSoftwareInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final store_address:Lcom/stripe/proto/api/sdk/Address;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.Address#ADAPTER"
        jsonName = "storeAddress"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0x8
    .end annotation
.end field

.field public final store_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "storeName"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x7
    .end annotation
.end field

.field public final terminal_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "terminalId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x2
    .end annotation
.end field

.field public final terminal_ip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "terminalIp"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->Companion:Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion;

    .line 377
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 376
    const-class v1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 380
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 376
    new-instance v3, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;)V
    .locals 1

    const-string v0, "pos_activation_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pos_device_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_id"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_ip"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store_name"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    .line 75
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    .line 87
    iput-boolean p5, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    .line 96
    iput-object p6, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 109
    iput-object p7, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    .line 122
    iput-object p8, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    .line 137
    iput-object p9, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    .line 150
    iput-object p10, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p13, p12, 0x1

    .line 34
    const-string v0, ""

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    const/4 v1, 0x0

    if-eqz p13, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    const/4 p5, 0x0

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

    move-object p10, v1

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 160
    sget-object p11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_a
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p12}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 230
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 231
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 232
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 233
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 234
    iget-boolean p5, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 235
    iget-object p6, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 236
    iget-object p7, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 237
    iget-object p8, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 238
    iget-object p9, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    .line 239
    iget-object p10, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 240
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->unknownFields()Lokio/ByteString;

    move-result-object p11

    :cond_a
    move-object p12, p10

    move-object p13, p11

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

    .line 229
    invoke-virtual/range {p2 .. p13}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getStore_address$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "store_address is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getStore_name$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "store_name is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getTerminal_id$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "terminal_id is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getTerminal_ip$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "terminal_ip is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
    .locals 13

    const-string v0, "pos_activation_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pos_device_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_id"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_ip"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store_name"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 180
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 184
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 185
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 186
    :cond_6
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 187
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 188
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 189
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 190
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 191
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 196
    iget v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->hashCode:I

    if-nez v0, :cond_4

    .line 198
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 199
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 200
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 201
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/PosHardwareInfo;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 202
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 203
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/VersionInfoPb;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 205
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 208
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/Address;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 209
    iput v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->newBuilder()Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 2

    .line 163
    new-instance v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_activation_token:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_device_id:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    .line 168
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->fail_if_in_use:Z

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->terminal_id:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->terminal_ip:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->store_name:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->store_address:Lcom/stripe/proto/api/sdk/Address;

    .line 174
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 216
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "pos_activation_token=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_device_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_hardware_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_software_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail_if_in_use="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_secondary_version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_ip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "store_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "store_address="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ActivateTerminalRequest{"

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
