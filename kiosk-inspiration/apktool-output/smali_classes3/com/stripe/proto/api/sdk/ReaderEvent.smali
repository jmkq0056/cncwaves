.class public final Lcom/stripe/proto/api/sdk/ReaderEvent;
.super Lcom/squareup/wire/Message;
.source "ReaderEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;,
        Lcom/stripe/proto/api/sdk/ReaderEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/ReaderEvent;",
        "Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B=\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ>\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ReaderEvent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;",
        "id",
        "",
        "forwarded_payment_result",
        "Lcom/stripe/proto/api/sdk/ForwardedPayment;",
        "forwarding_error",
        "Lcom/stripe/proto/api/sdk/ForwardingError;",
        "forwarded_setup_intent_result",
        "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;",
        "unknownFields",
        "Lokio/ByteString;",
        "(JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/api/sdk/ReaderEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/ReaderEvent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.ForwardedPayment#ADAPTER"
        jsonName = "forwardedPaymentResult"
        oneofName = "event"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.ForwardedSetupIntent#ADAPTER"
        jsonName = "forwardedSetupIntentResult"
        oneofName = "event"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.ForwardingError#ADAPTER"
        jsonName = "forwardingError"
        oneofName = "event"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/ReaderEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/ReaderEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/ReaderEvent;->Companion:Lcom/stripe/proto/api/sdk/ReaderEvent$Companion;

    .line 197
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 196
    const-class v1, Lcom/stripe/proto/api/sdk/ReaderEvent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 200
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 196
    new-instance v3, Lcom/stripe/proto/api/sdk/ReaderEvent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/ReaderEvent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/ReaderEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/api/sdk/ReaderEvent;-><init>(JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/stripe/proto/api/sdk/ReaderEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-wide p1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->id:J

    .line 42
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    .line 54
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    .line 66
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    .line 78
    invoke-static {p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of forwarded_payment_result, forwarding_error, forwarded_setup_intent_result may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move-object v3, p2

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v4, p2

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v5, p2

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    .line 75
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object v0, p0

    move-object v6, p6

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/ReaderEvent;-><init>(JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/ReaderEvent;JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ReaderEvent;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 127
    iget-wide p1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 128
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    .line 129
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 130
    iget-object p5, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderEvent;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_4
    move-object v0, p0

    move-object v6, p6

    .line 126
    invoke-virtual/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/ReaderEvent;->copy(JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ReaderEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ReaderEvent;
    .locals 8

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/stripe/proto/api/sdk/ReaderEvent;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/sdk/ReaderEvent;-><init>(JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 95
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/ReaderEvent;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ReaderEvent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 97
    :cond_2
    iget-wide v3, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->id:J

    iget-wide v5, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 100
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 105
    iget v0, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->hashCode:I

    if-nez v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 108
    iget-wide v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/ForwardedPayment;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 110
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/ForwardingError;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 111
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 112
    iput v0, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderEvent;->newBuilder()Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;
    .locals 3

    .line 84
    new-instance v0, Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;-><init>()V

    .line 85
    iget-wide v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->id:J

    iput-wide v1, v0, Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;->id:J

    .line 86
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    .line 87
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    .line 88
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    .line 89
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 119
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forwarded_payment_result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forwarding_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forwarded_setup_intent_result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ReaderEvent{"

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
