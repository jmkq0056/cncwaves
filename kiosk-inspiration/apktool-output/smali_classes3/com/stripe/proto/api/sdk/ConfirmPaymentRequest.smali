.class public final Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;
.super Lcom/squareup/wire/Message;
.source "ConfirmPaymentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;,
        Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c\u001dBU\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J[\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;",
        "payment_intent_id",
        "",
        "payment_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "options",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "amount_surcharge",
        "",
        "return_url",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "copy",
        "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
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
            "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount_surcharge:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountSurcharge"
        schemaIndex = 0x4
        tag = 0x7
    .end annotation
.end field

.field public final offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflinePaymentDetails#ADAPTER"
        jsonName = "offlineDetails"
        schemaIndex = 0x3
        tag = 0x6
    .end annotation
.end field

.field public final options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.ConfirmPaymentOptions#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x5
    .end annotation
.end field

.field public final payment_intent_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentIntentId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x2
    .end annotation
.end field

.field public final payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER"
        jsonName = "paymentMethod"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x3
    .end annotation
.end field

.field public final return_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "returnUrl"
        schemaIndex = 0x5
        tag = 0x8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->Companion:Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Companion;

    .line 218
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 217
    const-class v1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 221
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 217
    new-instance v3, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 32
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_intent_id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 53
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    .line 61
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 69
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->amount_surcharge:Ljava/lang/Long;

    .line 77
    iput-object p6, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->return_url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 40
    const-string p1, ""

    :cond_0
    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 85
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 28
    invoke-direct/range {p2 .. p9}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 139
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_intent_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 140
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 141
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 142
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 143
    iget-object p5, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->amount_surcharge:Ljava/lang/Long;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 144
    iget-object p6, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->return_url:Ljava/lang/String;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 138
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->copy(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;
    .locals 9

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_intent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->amount_surcharge:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->amount_surcharge:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 108
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->return_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->return_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 113
    iget v0, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->hashCode:I

    if-nez v0, :cond_5

    .line 115
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

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

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->amount_surcharge:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 121
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->return_url:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    .line 122
    iput v0, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->newBuilder()Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;
    .locals 2

    .line 88
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_intent_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->amount_surcharge:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->amount_surcharge:Ljava/lang/Long;

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->return_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->return_url:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 129
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->amount_surcharge:Ljava/lang/Long;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_surcharge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->amount_surcharge:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->return_url:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ConfirmPaymentRequest{"

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
