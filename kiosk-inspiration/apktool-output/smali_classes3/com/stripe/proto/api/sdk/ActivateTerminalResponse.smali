.class public final Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
.super Lcom/squareup/wire/Message;
.source "ActivateTerminalResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;,
        Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002$%B\u0091\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J\u0092\u0001\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u001d\u001a\u00020\t2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0002H\u0016J\u0008\u0010#\u001a\u00020\u0004H\u0016R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001a\u0010\u001bR\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;",
        "session_token",
        "",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "store_name",
        "livemode",
        "",
        "sdk_rpc_session",
        "request_id",
        "version",
        "Lcom/stripe/proto/model/sdk/ReaderVersion;",
        "account_id",
        "canonical_reader_version",
        "",
        "location",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "offline_stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "network_status",
        "Lcom/stripe/proto/api/sdk/NetworkStatus;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)V",
        "getSystem_context$annotations",
        "()V",
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
            "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final account_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "accountId"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final canonical_reader_version:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "canonicalReaderVersion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final livemode:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final location:Lcom/stripe/proto/model/merchant/ApiLocationPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.merchant.ApiLocationPb#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.NetworkStatus#ADAPTER"
        jsonName = "networkStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflineStats#ADAPTER"
        jsonName = "offlineStats"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final request_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "requestId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final sdk_rpc_session:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "sdkRpcSession"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        redacted = true
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final session_token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "sessionToken"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        redacted = true
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final store_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "storeName"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final system_context:Lcom/stripe/proto/model/sdk/SystemContext;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER"
        jsonName = "systemContext"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final version:Lcom/stripe/proto/model/sdk/ReaderVersion;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.ReaderVersion#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->Companion:Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion;

    .line 417
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 416
    const-class v1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 420
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 416
    new-instance v3, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    const/16 v15, 0x1fff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)V
    .locals 1

    const-string v0, "session_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store_name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdk_rpc_session"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request_id"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network_status"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p14}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 61
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    .line 73
    iput-boolean p4, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    .line 84
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    .line 109
    iput-object p7, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    .line 120
    iput-object p8, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    .line 131
    iput-wide p9, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    .line 140
    iput-object p11, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 151
    iput-object p12, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 163
    iput-object p13, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    .line 31
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_3

    :cond_4
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v2, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    move-object v7, v3

    goto :goto_5

    :cond_6
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    move-object v8, v3

    goto :goto_6

    :cond_7
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    const-wide/16 v9, 0x0

    goto :goto_7

    :cond_8
    move-wide/from16 v9, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v3

    goto :goto_8

    :cond_9
    move-object/from16 v11, p11

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    goto :goto_9

    :cond_a
    move-object/from16 v3, p12

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    .line 171
    sget-object v12, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    goto :goto_a

    :cond_b
    move-object/from16 v12, p13

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 172
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p15, v0

    goto :goto_b

    :cond_c
    move-object/from16 p15, p14

    :goto_b
    move-object p2, p1

    move-object/from16 p3, v1

    move-object/from16 p7, v2

    move-object/from16 p13, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-wide/from16 p10, v9

    move-object/from16 p12, v11

    move-object/from16 p14, v12

    move-object p1, p0

    .line 31
    invoke-direct/range {p1 .. p15}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 253
    iget-boolean v4, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    goto :goto_3

    :cond_3
    move/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 254
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 255
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 256
    iget-object v7, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 257
    iget-object v8, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    .line 258
    iget-wide v9, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    goto :goto_8

    :cond_8
    move-wide/from16 v9, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 259
    iget-object v11, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    .line 260
    iget-object v12, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 261
    iget-object v13, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 262
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    move-object/from16 p15, v0

    goto :goto_c

    :cond_c
    move-object/from16 p15, p14

    :goto_c
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-wide/from16 p10, v9

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    .line 249
    invoke-virtual/range {p1 .. p15}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->copy(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSystem_context$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
    .locals 16

    const-string v0, "session_token"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store_name"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdk_rpc_session"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request_id"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network_status"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v15}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 194
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 199
    :cond_5
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 200
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 201
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 202
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 203
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 204
    :cond_a
    iget-wide v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    iget-wide v5, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    .line 205
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 206
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 207
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    if-eq v1, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 212
    iget v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->hashCode:I

    if-nez v0, :cond_5

    .line 214
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 215
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 216
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/SystemContext;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 217
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 218
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 219
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 220
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 221
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/ReaderVersion;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 222
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 223
    iget-wide v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 224
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/merchant/ApiLocationPb;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 225
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflineStats;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 226
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/NetworkStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    iput v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->newBuilder()Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 3

    .line 175
    new-instance v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->session_token:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->store_name:Ljava/lang/String;

    .line 179
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->livemode:Z

    .line 180
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->sdk_rpc_session:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->request_id:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    .line 183
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->account_id:Ljava/lang/String;

    .line 184
    iget-wide v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    iput-wide v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->canonical_reader_version:J

    .line 185
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 186
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 187
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    .line 188
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 234
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "session_token=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system_context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "store_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v2, "sdk_rpc_session=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canonical_reader_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_stats="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ActivateTerminalResponse{"

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
