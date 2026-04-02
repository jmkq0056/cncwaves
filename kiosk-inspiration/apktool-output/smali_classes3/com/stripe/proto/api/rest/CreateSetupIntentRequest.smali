.class public final Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
.super Lcom/squareup/wire/Message;
.source "CreateSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;,
        Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion;,
        Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003#$%B\u00ad\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0002\u0010\u0018J\u00b3\u0001\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00042\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u0008\u0010\"\u001a\u00020\u0006H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0019R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;",
        "confirm",
        "",
        "customer",
        "",
        "description",
        "metadata",
        "",
        "payment_method",
        "payment_method_types",
        "",
        "usage",
        "mandate_data",
        "Lcom/stripe/proto/api/rest/Mandate;",
        "on_behalf_of",
        "payment_method_options",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
        "return_url",
        "single_use",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "SingleUseMandate",
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
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final confirm:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final customer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final mandate_data:Lcom/stripe/proto/api/rest/Mandate;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.Mandate#ADAPTER"
        jsonName = "mandateData"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x3
        tag = 0x4
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

.field public final on_behalf_of:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "onBehalfOf"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final payment_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "paymentMethod"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentMethodOptions#ADAPTER"
        jsonName = "paymentMethodOptions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final payment_method_types:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentMethodTypes"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final return_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "returnUrl"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.CreateSetupIntentRequest$SingleUseMandate#ADAPTER"
        jsonName = "singleUse"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final usage:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->Companion:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion;

    .line 422
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 421
    const-class v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 425
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 421
    new-instance v3, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x1fff

    const/4 v15, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/Mandate;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p13

    const-string v1, "metadata"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "payment_method_types"

    invoke-static {p6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "unknownFields"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v3, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v3, v0}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 40
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    .line 50
    iput-object p2, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    .line 83
    iput-object p7, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    .line 93
    iput-object p8, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    .line 105
    iput-object p9, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    .line 116
    iput-object p10, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    .line 128
    iput-object p11, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    move-object/from16 p1, p12

    .line 139
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    .line 160
    invoke-static {v1, p4}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    .line 174
    invoke-static {v2, p6}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 67
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    move-object v5, v2

    goto :goto_3

    :cond_4
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    move-object v7, v2

    goto :goto_5

    :cond_6
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    move-object v8, v2

    goto :goto_6

    :cond_7
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    move-object v9, v2

    goto :goto_7

    :cond_8
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    move-object v10, v2

    goto :goto_8

    :cond_9
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    move-object v11, v2

    goto :goto_9

    :cond_a
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    goto :goto_a

    :cond_b
    move-object/from16 v2, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 148
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p14, v0

    goto :goto_b

    :cond_c
    move-object/from16 p14, p13

    :goto_b
    move-object p2, p1

    move-object/from16 p3, v1

    move-object/from16 p13, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object p1, p0

    .line 36
    invoke-direct/range {p1 .. p14}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 256
    iget-object v4, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    .line 257
    iget-object v5, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    .line 258
    iget-object v6, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    .line 259
    iget-object v7, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    goto :goto_6

    :cond_7
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    .line 260
    iget-object v8, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object/from16 v8, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    .line 261
    iget-object v9, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    goto :goto_8

    :cond_9
    move-object/from16 v9, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    .line 262
    iget-object v10, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    goto :goto_9

    :cond_a
    move-object/from16 v10, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_b

    .line 263
    iget-object v11, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    goto :goto_a

    :cond_b
    move-object/from16 v11, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 264
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    move-object/from16 p15, v0

    goto :goto_b

    :cond_c
    move-object/from16 p15, p13

    :goto_b
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    .line 251
    invoke-virtual/range {p2 .. p15}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->copy(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/Mandate;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;"
        }
    .end annotation

    const-string v0, "metadata"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_method_types"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    new-instance v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 196
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 201
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 202
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 203
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 204
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 205
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 206
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 207
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 208
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 209
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 214
    iget v0, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->hashCode:I

    if-nez v0, :cond_a

    .line 216
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 217
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 218
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 219
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 220
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 221
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 222
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 223
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 224
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/Mandate;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 225
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 226
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 227
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 228
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->hashCode()I

    move-result v2

    :cond_9
    add-int/2addr v0, v2

    .line 229
    iput v0, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->hashCode:I

    :cond_a
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->newBuilder()Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;
    .locals 2

    .line 177
    new-instance v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->confirm:Ljava/lang/Boolean;

    .line 179
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->customer:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->description:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->metadata:Ljava/util/Map;

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method_types:Ljava/util/List;

    .line 184
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->usage:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    .line 186
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->on_behalf_of:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    .line 188
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->return_url:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    .line 190
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 236
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirm="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "description="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_types="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mandate_data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "on_behalf_of="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "single_use="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_b
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CreateSetupIntentRequest{"

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
