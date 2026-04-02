.class public final Lcom/stripe/proto/model/merchant/ApiLocationPb;
.super Lcom/squareup/wire/Message;
.source "ApiLocationPb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;,
        Lcom/stripe/proto/model/merchant/ApiLocationPb$Companion;,
        Lcom/stripe/proto/model/merchant/ApiLocationPb$QueryField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003%&\'B\u00e1\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0014\u0008\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0012\u0012\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0012\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0002\u0010\u001aJ\u00e7\u0001\u0010\u001c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0014\u0008\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00122\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u000c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0008\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0002H\u0016J\u0008\u0010$\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;",
        "id",
        "",
        "display_name",
        "address",
        "Lcom/stripe/proto/model/merchant/WrappedAddressPb;",
        "timezone",
        "release_config_id",
        "pinpad_config_id",
        "is_default",
        "",
        "is_livemode",
        "livemode",
        "deleted",
        "merchant",
        "metadata",
        "",
        "device_deploy_groups",
        "zone_id",
        "created_at",
        "Lcom/stripe/proto/model/common/InstantPb;",
        "creation_request",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "QueryField",
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
            "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/merchant/ApiLocationPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.merchant.WrappedAddressPb#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final created_at:Lcom/stripe/proto/model/common/InstantPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER"
        jsonName = "createdAt"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final creation_request:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "creationRequest"
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final deleted:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0x8
    .end annotation
.end field

.field public final device_deploy_groups:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "deviceDeployGroups"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0xc
        tag = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final display_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "displayName"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final is_default:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "isDefault"
        schemaIndex = 0x6
        tag = 0x6
    .end annotation
.end field

.field public final is_livemode:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "isLivemode"
        schemaIndex = 0x7
        tag = 0x7
    .end annotation
.end field

.field public final livemode:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x8
        tag = 0xb
    .end annotation
.end field

.field public final merchant:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0xa
        tag = 0xa
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0xb
        tag = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final pinpad_config_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "pinpadConfigId"
        schemaIndex = 0x5
        tag = 0x5
    .end annotation
.end field

.field public final release_config_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "releaseConfigId"
        schemaIndex = 0x4
        tag = 0x4
    .end annotation
.end field

.field public final timezone:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x3
        tag = 0x9
    .end annotation
.end field

.field public final zone_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "zoneId"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/merchant/ApiLocationPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->Companion:Lcom/stripe/proto/model/merchant/ApiLocationPb$Companion;

    .line 483
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 482
    const-class v1, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 486
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 482
    new-instance v3, Lcom/stripe/proto/model/merchant/ApiLocationPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/merchant/ApiLocationPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 20

    const v18, 0x1ffff

    const/16 v19, 0x0

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

    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v19}, Lcom/stripe/proto/model/merchant/ApiLocationPb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/merchant/WrappedAddressPb;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/InstantPb;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    move-object/from16 v2, p17

    const-string v3, "metadata"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "device_deploy_groups"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "unknownFields"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget-object v5, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v5, v2}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 41
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->display_name:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    .line 64
    iput-object p4, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->timezone:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->release_config_id:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->pinpad_config_id:Ljava/lang/String;

    .line 93
    iput-object p7, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_default:Ljava/lang/Boolean;

    .line 101
    iput-object p8, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_livemode:Ljava/lang/Boolean;

    .line 112
    iput-object p9, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    move/from16 p1, p10

    .line 122
    iput-boolean p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->deleted:Z

    move-object/from16 p1, p11

    .line 130
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->merchant:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 139
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->zone_id:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 150
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    move-object/from16 p1, p16

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->creation_request:Ljava/lang/String;

    .line 179
    invoke-static {v3, v0}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->metadata:Ljava/util/Map;

    .line 193
    invoke-static {v4, v1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->device_deploy_groups:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 137
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v13

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    .line 138
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v14

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_10

    .line 167
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p18, v0

    goto :goto_10

    :cond_10
    move-object/from16 p18, p17

    :goto_10
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    .line 37
    invoke-direct/range {p1 .. p18}, Lcom/stripe/proto/model/merchant/ApiLocationPb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/merchant/ApiLocationPb;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->display_name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 290
    iget-object v5, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->timezone:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 291
    iget-object v6, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->release_config_id:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 292
    iget-object v7, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->pinpad_config_id:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 293
    iget-object v8, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_default:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 294
    iget-object v9, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_livemode:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 295
    iget-object v10, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 296
    iget-boolean v11, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->deleted:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 297
    iget-object v12, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->merchant:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 298
    iget-object v13, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->metadata:Ljava/util/Map;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 299
    iget-object v14, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->device_deploy_groups:Ljava/util/Map;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 300
    iget-object v15, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->zone_id:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 301
    iget-object v2, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 302
    iget-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->creation_request:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p18, v16

    if-eqz v16, :cond_10

    .line 303
    invoke-virtual {v0}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p18, v16

    goto :goto_10

    :cond_10
    move-object/from16 p18, p17

    :goto_10
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p17, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    .line 286
    invoke-virtual/range {p1 .. p18}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/merchant/ApiLocationPb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/merchant/ApiLocationPb;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/merchant/WrappedAddressPb;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/InstantPb;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/merchant/ApiLocationPb;"
        }
    .end annotation

    const-string v0, "metadata"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device_deploy_groups"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    new-instance v1, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/model/merchant/ApiLocationPb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 219
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {p1}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->display_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->display_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 223
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 224
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->timezone:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->timezone:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 225
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->release_config_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->release_config_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 226
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->pinpad_config_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->pinpad_config_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 227
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_default:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_default:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 228
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_livemode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_livemode:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 229
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 230
    :cond_b
    iget-boolean v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->deleted:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->deleted:Z

    if-eq v1, v3, :cond_c

    return v2

    .line 231
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->merchant:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->merchant:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 232
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 233
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->device_deploy_groups:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->device_deploy_groups:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 234
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->zone_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->zone_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 235
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    iget-object v3, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 236
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->creation_request:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->creation_request:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 241
    iget v0, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->hashCode:I

    if-nez v0, :cond_d

    .line 243
    invoke-virtual {p0}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 244
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 245
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->display_name:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 246
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/merchant/WrappedAddressPb;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 247
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->timezone:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 248
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->release_config_id:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 249
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->pinpad_config_id:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 250
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_default:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 251
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 252
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 253
    iget-boolean v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->deleted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 254
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->merchant:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 256
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->device_deploy_groups:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 257
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->zone_id:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 258
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/InstantPb;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 259
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->creation_request:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_c
    add-int/2addr v0, v2

    .line 260
    iput v0, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->hashCode:I

    :cond_d
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->newBuilder()Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 2

    .line 196
    new-instance v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->id:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->display_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->display_name:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    .line 200
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->timezone:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->timezone:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->release_config_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->release_config_id:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->pinpad_config_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->pinpad_config_id:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_default:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->is_default:Ljava/lang/Boolean;

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_livemode:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->is_livemode:Ljava/lang/Boolean;

    .line 205
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->livemode:Ljava/lang/Boolean;

    .line 206
    iget-boolean v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->deleted:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->deleted:Z

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->merchant:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->merchant:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->metadata:Ljava/util/Map;

    .line 209
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->device_deploy_groups:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->device_deploy_groups:Ljava/util/Map;

    .line 210
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->zone_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->zone_id:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    .line 212
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->creation_request:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->creation_request:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 267
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->display_name:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "display_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->display_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "address="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->timezone:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timezone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->timezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->release_config_id:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "release_config_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->release_config_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->pinpad_config_id:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pinpad_config_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->pinpad_config_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_default:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_default="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_default:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->is_livemode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_8
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleted="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->deleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v2, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->merchant:Ljava/lang/String;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merchant="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->merchant:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_9
    iget-object v2, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->metadata:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_a
    iget-object v2, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->device_deploy_groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_deploy_groups="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->device_deploy_groups:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_b
    iget-object v2, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->zone_id:Ljava/lang/String;

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zone_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->zone_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_c
    iget-object v2, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_d
    iget-object v2, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->creation_request:Ljava/lang/String;

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "creation_request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->creation_request:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_e
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ApiLocationPb{"

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
