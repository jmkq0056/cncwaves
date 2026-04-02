.class public final Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;
.super Lcom/squareup/wire/Message;
.source "OfflineApiRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;,
        Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;,
        Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003#$%B\u00a1\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J\u00a2\u0001\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r2\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\n2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u0008\u0010\"\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "account_id",
        "",
        "offline_id",
        "stripe_entity_id",
        "connection_id",
        "",
        "id",
        "headers",
        "",
        "params",
        "",
        "Lcom/stripe/proto/model/offline_mode/NameValuePair;",
        "endpoint",
        "payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "created_at",
        "setup_intent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "ApiRequestType",
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
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final account_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "accountId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final connection_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        jsonName = "connectionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final created_at:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        jsonName = "createdAt"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final endpoint:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final headers:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        redacted = true
        schemaIndex = 0x6
        tag = 0x7
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

.field public final id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final offline_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "offlineId"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final params:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.offline_mode.NameValuePair#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        redacted = true
        schemaIndex = 0x7
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public final payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER"
        jsonName = "paymentIntent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.SetupIntent#ADAPTER"
        jsonName = "setupIntent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final stripe_entity_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "stripeEntityId"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.offline_mode.OfflineApiRequest$ApiRequestType#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->Companion:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Companion;

    .line 386
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 385
    const-class v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 389
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 385
    new-instance v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    const/16 v17, 0x1fff

    const/16 v18, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;-><init>(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "J",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move-object/from16 v3, p16

    const-string v4, "type"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "account_id"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "headers"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "params"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "endpoint"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "unknownFields"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v6, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v6, v3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 46
    iput-object p2, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->account_id:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    .line 71
    iput-wide p5, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->connection_id:J

    .line 80
    iput-wide p7, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->id:J

    .line 90
    iput-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->endpoint:Ljava/lang/String;

    move-object/from16 p1, p12

    .line 106
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    move-wide/from16 p1, p13

    .line 115
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    move-object/from16 p1, p15

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 150
    invoke-static {v4, v0}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->headers:Ljava/util/Map;

    .line 160
    invoke-static {v5, v1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->params:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    .line 37
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

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_4

    move-wide v10, v8

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-wide v12, v8

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p7

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 88
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object/from16 v7, p9

    :goto_6
    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_7

    .line 89
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    goto :goto_7

    :cond_7
    move-object/from16 v14, p10

    :goto_7
    and-int/lit16 v15, v0, 0x100

    if-eqz v15, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v3, p11

    :goto_8
    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_a

    goto :goto_a

    :cond_a
    move-wide/from16 v8, p13

    :goto_a
    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v5, p15

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 133
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p17, v0

    goto :goto_c

    :cond_c
    move-object/from16 p17, p16

    :goto_c
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p12, v3

    move-object/from16 p4, v4

    move-object/from16 p16, v5

    move-object/from16 p5, v6

    move-object/from16 p10, v7

    move-wide/from16 p14, v8

    move-wide/from16 p6, v10

    move-wide/from16 p8, v12

    move-object/from16 p11, v14

    move-object/from16 p13, v15

    .line 37
    invoke-direct/range {p1 .. p17}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;-><init>(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->account_id:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 240
    iget-object v4, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 241
    iget-object v5, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 242
    iget-wide v6, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->connection_id:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    .line 243
    iget-wide v8, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->id:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    .line 244
    iget-object v10, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->headers:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    .line 245
    iget-object v11, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->params:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    .line 246
    iget-object v12, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->endpoint:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    .line 247
    iget-object v13, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    .line 248
    iget-wide v14, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    goto :goto_a

    :cond_a
    move-wide/from16 v14, p13

    :goto_a
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    .line 249
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p15

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 250
    invoke-virtual {v0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    move-object/from16 p17, v1

    goto :goto_c

    :cond_c
    move-object/from16 p17, p16

    :goto_c
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-wide/from16 p14, v14

    .line 237
    invoke-virtual/range {p1 .. p17}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->copy(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "J",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;"
        }
    .end annotation

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account_id"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;-><init>(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 182
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-eq v1, v3, :cond_3

    return v2

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->account_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->account_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 187
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 188
    :cond_6
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->connection_id:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->connection_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 189
    :cond_7
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->id:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    .line 190
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->headers:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->headers:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 191
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->params:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->params:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 192
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->endpoint:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->endpoint:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 193
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 194
    :cond_c
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d

    return v2

    .line 195
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    iget-object p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 200
    iget v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->hashCode:I

    if-nez v0, :cond_4

    .line 202
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->account_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 205
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

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

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 207
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->connection_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 208
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 209
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->headers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 210
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->params:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->endpoint:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 212
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntent;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 213
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/SetupIntent;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 215
    iput v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->newBuilder()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;
    .locals 3

    .line 163
    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 165
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->account_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->account_id:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->offline_id:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->stripe_entity_id:Ljava/lang/String;

    .line 168
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->connection_id:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->connection_id:J

    .line 169
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->id:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->id:J

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->headers:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->headers:Ljava/util/Map;

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->params:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->params:Ljava/util/List;

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->endpoint:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->endpoint:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 174
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->created_at:J

    .line 175
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 176
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 222
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->account_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_entity_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->connection_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "headers=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->params:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "params=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endpoint="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->endpoint:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_5
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "OfflineApiRequest{"

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
