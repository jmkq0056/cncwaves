.class public final Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;
.super Lcom/squareup/wire/Message;
.source "QuerySetupIntentPaymentMethodResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;,
        Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Companion;,
        Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B1\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ2\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;",
        "payment_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "payment_status",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;",
        "num_of_canceled_payments",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;)V",
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
        "SetupIntentPaymentMethodRequestStatus",
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
            "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final num_of_canceled_payments:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        jsonName = "numOfCanceledPayments"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER"
        jsonName = "paymentMethod"
        oneofName = "setup_intent_result"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus#ADAPTER"
        jsonName = "paymentStatus"
        oneofName = "setup_intent_result"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->Companion:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Companion;

    .line 170
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 169
    const-class v1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 173
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 169
    new-instance v3, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;-><init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 47
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    .line 59
    iput p3, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->num_of_canceled_payments:I

    .line 71
    invoke-static {p1, p2}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;)I

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

.method public synthetic constructor <init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 68
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 31
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;-><init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 116
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 117
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 118
    iget p3, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->num_of_canceled_payments:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 115
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->copy(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;)Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;)Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;-><init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    if-eq v1, v3, :cond_4

    return v2

    .line 91
    :cond_4
    iget v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->num_of_canceled_payments:I

    iget p1, p1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->num_of_canceled_payments:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 96
    iget v0, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->hashCode:I

    if-nez v0, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 99
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/PaymentMethod;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 100
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 101
    iget v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->num_of_canceled_payments:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    iput v0, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->newBuilder()Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;
    .locals 2

    .line 77
    new-instance v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 79
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    .line 80
    iget v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->num_of_canceled_payments:I

    iput v1, v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->num_of_canceled_payments:I

    .line 81
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "num_of_canceled_payments="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->num_of_canceled_payments:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "QuerySetupIntentPaymentMethodResponse{"

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
