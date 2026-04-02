.class public final Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;
.super Lcom/squareup/wire/Message;
.source "QueryPaymentIntentNextActionsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;,
        Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;,
        Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0018\u0019\u001aB?\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ@\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;",
        "payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "handle_next_actions_status",
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;",
        "decline_response",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "next_actions_error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "ActionStatus",
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
            "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER"
        jsonName = "declineResponse"
        oneofName = "payment_result"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.QueryPaymentIntentNextActionsResponse$ActionStatus#ADAPTER"
        jsonName = "handleNextActionsStatus"
        oneofName = "payment_result"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final next_actions_error:Lcom/stripe/proto/model/sdk/Error;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.Error#ADAPTER"
        jsonName = "nextActionsError"
        oneofName = "payment_result"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER"
        jsonName = "paymentIntent"
        oneofName = "payment_result"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->Companion:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Companion;

    .line 205
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 204
    const-class v1, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 208
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 204
    new-instance v3, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;-><init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 46
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    .line 58
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 70
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p5, 0x0

    .line 82
    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of payment_intent, handle_next_actions_status, decline_response, next_actions_error may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 79
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 33
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;-><init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 131
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 132
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 133
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 134
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 130
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->copy(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;-><init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 99
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    if-eq v1, v3, :cond_4

    return v2

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 104
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 109
    iget v0, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->hashCode:I

    if-nez v0, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 112
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntent;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/ErrorWrapper;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/Error;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 116
    iput v0, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->newBuilder()Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;
    .locals 2

    .line 88
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    .line 93
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 123
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle_next_actions_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decline_response="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "next_actions_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "QueryPaymentIntentNextActionsResponse{"

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
