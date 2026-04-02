.class public final Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;
.super Lcom/squareup/wire/Message;
.source "ConfirmPaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;,
        Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Companion;,
        Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003#$%B\u008b\u0001\u0012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u0091\u0001\u0010\u0019\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u0008\u0010\"\u001a\u00020\u0005H\u0016R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0017\u0010\u0018\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
        "expand",
        "",
        "",
        "source_data",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "payment_method_data",
        "amount_to_confirm",
        "",
        "id",
        "amount_tip",
        "payment_method_options",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
        "amount_surcharge",
        "return_url",
        "redirect_preferences",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "getSource_data$annotations",
        "()V",
        "copy",
        "(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
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
        "RedirectPreferences",
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
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount_surcharge:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountSurcharge"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final amount_tip:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountTip"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final amount_to_confirm:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountToConfirm"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final expand:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod#ADAPTER"
        jsonName = "paymentMethodData"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.PaymentMethodOptions#ADAPTER"
        jsonName = "paymentMethodOptions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.ConfirmPaymentIntentRequest$RedirectPreferences#ADAPTER"
        jsonName = "redirectPreferences"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final return_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "returnUrl"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod#ADAPTER"
        jsonName = "sourceData"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->Companion:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Companion;

    .line 366
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 365
    const-class v1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 369
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 365
    new-instance v3, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-object p2, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 52
    iput-object p3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 64
    iput-object p4, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    .line 75
    iput-object p5, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    .line 96
    iput-object p7, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    .line 108
    iput-object p8, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    .line 119
    iput-object p9, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    .line 130
    iput-object p10, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    .line 151
    invoke-static {v0, p1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p13, p12, 0x2

    const/4 v0, 0x0

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move-object p3, v0

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

    .line 139
    sget-object p11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

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

    .line 34
    invoke-direct/range {p2 .. p13}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 221
    iget-object p1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 222
    iget-object p2, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 223
    iget-object p3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 224
    iget-object p4, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 225
    iget-object p5, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 226
    iget-object p6, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 227
    iget-object p7, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 228
    iget-object p8, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 229
    iget-object p9, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    .line 230
    iget-object p10, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 231
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->unknownFields()Lokio/ByteString;

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

    .line 220
    invoke-virtual/range {p2 .. p13}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->copy(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSource_data$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "source_data is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 171
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 175
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 177
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 178
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 179
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 180
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 181
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 182
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 187
    iget v0, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->hashCode:I

    if-nez v0, :cond_9

    .line 189
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 190
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 191
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 192
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 193
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 194
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 195
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 196
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 197
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 198
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 199
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    .line 200
    iput v0, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->hashCode:I

    :cond_9
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->newBuilder()Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;
    .locals 2

    .line 154
    new-instance v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->expand:Ljava/util/List;

    .line 156
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 157
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 158
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->amount_to_confirm:Ljava/lang/Long;

    .line 159
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->id:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->amount_tip:Ljava/lang/Long;

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->amount_surcharge:Ljava/lang/Long;

    .line 163
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->return_url:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    .line 165
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expand="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "source_data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_to_confirm="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_tip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_surcharge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "redirect_preferences="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_9
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ConfirmPaymentIntentRequest{"

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
