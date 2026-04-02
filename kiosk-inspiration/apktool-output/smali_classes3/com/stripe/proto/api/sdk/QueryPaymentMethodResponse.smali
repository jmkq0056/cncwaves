.class public final Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;
.super Lcom/squareup/wire/Message;
.source "QueryPaymentMethodResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;,
        Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion;,
        Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001b\u001c\u001dBI\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJJ\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\nH\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "payment_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "payment_status",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;",
        "num_of_canceled_payments",
        "",
        "payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;)V",
        "getSystem_context$annotations",
        "()V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "PaymentRequestStatus",
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
            "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final num_of_canceled_payments:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        jsonName = "numOfCanceledPayments"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntentExpandedMethod#ADAPTER"
        jsonName = "paymentIntent"
        schemaIndex = 0x4
        tag = 0x6
    .end annotation
.end field

.field public final payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER"
        jsonName = "paymentMethod"
        oneofName = "payment_result"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.QueryPaymentMethodResponse$PaymentRequestStatus#ADAPTER"
        jsonName = "paymentStatus"
        oneofName = "payment_result"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final system_context:Lcom/stripe/proto/model/sdk/SystemContext;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER"
        jsonName = "systemContext"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->Companion:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion;

    .line 232
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 231
    const-class v1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 235
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 231
    new-instance v3, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 51
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 63
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    .line 75
    iput p4, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    .line 87
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    .line 98
    invoke-static {p2, p3}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of payment_method, payment_status may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 95
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p6

    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p7}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 151
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 152
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 153
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 154
    iget p4, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 155
    iget-object p5, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 150
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->copy(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

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
.method public final copy(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;
    .locals 8

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 116
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    if-eq v1, v3, :cond_5

    return v2

    .line 121
    :cond_5
    iget v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    iget v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    if-eq v1, v3, :cond_6

    return v2

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 127
    iget v0, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->hashCode:I

    if-nez v0, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

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

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/PaymentMethod;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 133
    iget v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 135
    iput v0, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->newBuilder()Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;
    .locals 2

    .line 104
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    .line 108
    iget v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    iput v1, v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;->num_of_canceled_payments:I

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 142
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system_context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "num_of_canceled_payments="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "QueryPaymentMethodResponse{"

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
