.class public final Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;
.super Lcom/squareup/wire/Message;
.source "QueryCollectReusableCardResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;,
        Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Companion;,
        Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;",
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0019\u001a\u001bB=\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ>\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\nH\u0016J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "reusable_card_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "reusable_card_status",
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;",
        "num_of_canceled_payments",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;)V",
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
        "ReusableCardRequestStatus",
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
            "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final num_of_canceled_payments:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        jsonName = "numOfCanceledPayments"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER"
        jsonName = "reusableCardMethod"
        oneofName = "reusable_card_result"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.QueryCollectReusableCardResponse$ReusableCardRequestStatus#ADAPTER"
        jsonName = "reusableCardStatus"
        oneofName = "reusable_card_result"
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

    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->Companion:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Companion;

    .line 203
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 202
    const-class v1, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 206
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 202
    new-instance v3, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 50
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 62
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    .line 74
    iput p4, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->num_of_canceled_payments:I

    .line 86
    invoke-static {p2, p3}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of reusable_card_method, reusable_card_status may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 83
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 33
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 135
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 136
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 137
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 138
    iget p4, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->num_of_canceled_payments:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 134
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->copy(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;

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
.method public final copy(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    if-eq v1, v3, :cond_5

    return v2

    .line 108
    :cond_5
    iget v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->num_of_canceled_payments:I

    iget p1, p1, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->num_of_canceled_payments:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 113
    iget v0, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->hashCode:I

    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

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

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/PaymentMethod;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 119
    iget v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->num_of_canceled_payments:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    iput v0, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->newBuilder()Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;
    .locals 2

    .line 92
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 95
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    .line 96
    iget v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->num_of_canceled_payments:I

    iput v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->num_of_canceled_payments:I

    .line 97
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system_context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reusable_card_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reusable_card_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "num_of_canceled_payments="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;->num_of_canceled_payments:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "QueryCollectReusableCardResponse{"

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
