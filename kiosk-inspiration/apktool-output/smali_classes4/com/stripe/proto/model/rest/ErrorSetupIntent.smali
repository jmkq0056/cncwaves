.class public final Lcom/stripe/proto/model/rest/ErrorSetupIntent;
.super Lcom/squareup/wire/Message;
.source "ErrorSetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;,
        Lcom/stripe/proto/model/rest/ErrorSetupIntent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/ErrorSetupIntent;",
        "Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 -2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002,-B\u0081\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0002\u0010 J\u0087\u0002\u0010#\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00172\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0096\u0002J\u0008\u0010(\u001a\u00020)H\u0016J\u0008\u0010*\u001a\u00020\u0002H\u0016J\u0008\u0010+\u001a\u00020\u0004H\u0016R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\"R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/ErrorSetupIntent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;",
        "id",
        "",
        "client_secret",
        "customer",
        "description",
        "last_setup_error",
        "Lcom/stripe/proto/model/rest/LastSetupError;",
        "metadata",
        "",
        "next_action",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;",
        "payment_method",
        "payment_method_types",
        "",
        "status",
        "usage",
        "created",
        "",
        "latest_attempt",
        "livemode",
        "",
        "mandate",
        "single_use_mandate",
        "application",
        "on_behalf_of",
        "payment_method_options",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ErrorSetupIntent;",
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
            "Lcom/stripe/proto/model/rest/ErrorSetupIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/ErrorSetupIntent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final application:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final client_secret:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "clientSecret"
        redacted = true
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final created:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final customer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.LastSetupError#ADAPTER"
        jsonName = "lastSetupError"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final latest_attempt:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "latestAttempt"
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final livemode:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final mandate:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x5
        tag = 0x6
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

.field public final next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.SetupIntent$NextAction#ADAPTER"
        jsonName = "nextAction"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final on_behalf_of:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "onBehalfOf"
        schemaIndex = 0x11
        tag = 0x12
    .end annotation
.end field

.field public final payment_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "paymentMethod"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentMethodOptions#ADAPTER"
        jsonName = "paymentMethodOptions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0x13
    .end annotation
.end field

.field public final payment_method_types:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentMethodTypes"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final single_use_mandate:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "singleUseMandate"
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final usage:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->Companion:Lcom/stripe/proto/model/rest/ErrorSetupIntent$Companion;

    .line 612
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 611
    const-class v1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 615
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 611
    new-instance v3, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 23

    const v21, 0xfffff

    const/16 v22, 0x0

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v22}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/LastSetupError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p20

    const-string v1, "metadata"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "payment_method_types"

    invoke-static {p9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "unknownFields"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v3, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v3, v0}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->id:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->client_secret:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->customer:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->description:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    .line 94
    iput-object p7, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    .line 106
    iput-object p8, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method:Ljava/lang/String;

    .line 118
    iput-object p10, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->status:Ljava/lang/String;

    .line 128
    iput-object p11, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->usage:Ljava/lang/String;

    move-object/from16 p1, p12

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->created:Ljava/lang/Long;

    move-object/from16 p1, p13

    .line 148
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->latest_attempt:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->livemode:Ljava/lang/Boolean;

    move-object/from16 p1, p15

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->mandate:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 179
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->single_use_mandate:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 190
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->application:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 200
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->on_behalf_of:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 211
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    .line 232
    invoke-static {v1, p6}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->metadata:Ljava/util/Map;

    .line 246
    invoke-static {v2, p9}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_types:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p21

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

    .line 90
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

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

    .line 114
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

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

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

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

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v0, v0, v20

    if-eqz v0, :cond_13

    .line 220
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p21, v0

    goto :goto_13

    :cond_13
    move-object/from16 p21, p20

    :goto_13
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

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    .line 35
    invoke-direct/range {p1 .. p21}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/ErrorSetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/ErrorSetupIntent;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 353
    iget-object v3, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->client_secret:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 354
    iget-object v4, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->customer:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 355
    iget-object v5, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 356
    iget-object v6, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 357
    iget-object v7, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->metadata:Ljava/util/Map;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 358
    iget-object v8, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 359
    iget-object v9, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 360
    iget-object v10, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_types:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 361
    iget-object v11, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->status:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 362
    iget-object v12, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->usage:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 363
    iget-object v13, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->created:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 364
    iget-object v14, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->latest_attempt:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 365
    iget-object v15, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->livemode:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 366
    iget-object v2, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->mandate:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 367
    iget-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->single_use_mandate:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p21, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    .line 368
    iget-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->application:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p21, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    .line 369
    iget-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->on_behalf_of:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p21, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    .line 370
    iget-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p21, v16

    if-eqz v16, :cond_13

    .line 371
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p21, v16

    goto :goto_13

    :cond_13
    move-object/from16 p21, p20

    :goto_13
    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, v1

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

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 351
    invoke-virtual/range {p1 .. p21}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ErrorSetupIntent;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/LastSetupError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/rest/ErrorSetupIntent;"
        }
    .end annotation

    const-string v0, "metadata"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_method_types"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    new-instance v1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    invoke-direct/range {v1 .. v21}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 275
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->client_secret:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->client_secret:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 279
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 280
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 281
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 282
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 283
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 284
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 285
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_types:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_types:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 286
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 287
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->usage:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->usage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 288
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->created:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->created:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 289
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->latest_attempt:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->latest_attempt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 290
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->livemode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->livemode:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 291
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->mandate:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->mandate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 292
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->single_use_mandate:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->single_use_mandate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 293
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->application:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->application:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 294
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->on_behalf_of:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->on_behalf_of:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 295
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 300
    iget v0, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->hashCode:I

    if-nez v0, :cond_11

    .line 302
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 303
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->id:Ljava/lang/String;

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

    .line 304
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->client_secret:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 305
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->customer:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 306
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->description:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 307
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/LastSetupError;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 308
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 309
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 310
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 311
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 312
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->status:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 313
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->usage:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 314
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->created:Ljava/lang/Long;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 315
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->latest_attempt:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 316
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 317
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->mandate:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 318
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->single_use_mandate:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 319
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->application:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 320
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 321
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->hashCode()I

    move-result v2

    :cond_10
    add-int/2addr v0, v2

    .line 322
    iput v0, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->hashCode:I

    :cond_11
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->newBuilder()Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;
    .locals 2

    .line 249
    new-instance v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->id:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->client_secret:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->client_secret:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->customer:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->customer:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->description:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->metadata:Ljava/util/Map;

    .line 256
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    .line 257
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_types:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method_types:Ljava/util/List;

    .line 259
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->status:Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->usage:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->usage:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->created:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->created:Ljava/lang/Long;

    .line 262
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->latest_attempt:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->latest_attempt:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->livemode:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->livemode:Ljava/lang/Boolean;

    .line 264
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->mandate:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->mandate:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->single_use_mandate:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->single_use_mandate:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->application:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->application:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->on_behalf_of:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->on_behalf_of:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    .line 269
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 329
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->client_secret:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "client_secret=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->customer:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->customer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->description:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "description="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last_setup_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "next_action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->next_action:Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_types:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_types="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_types:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->status:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->usage:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->usage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->created:Ljava/lang/Long;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->created:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->latest_attempt:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "latest_attempt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->latest_attempt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->mandate:Ljava/lang/String;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mandate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->mandate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->single_use_mandate:Ljava/lang/String;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "single_use_mandate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->single_use_mandate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->application:Ljava/lang/String;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "application="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->application:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "on_behalf_of="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_12
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ErrorSetupIntent{"

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
