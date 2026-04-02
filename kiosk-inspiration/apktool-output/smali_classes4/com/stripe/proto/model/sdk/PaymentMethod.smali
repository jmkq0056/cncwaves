.class public final Lcom/stripe/proto/model/sdk/PaymentMethod;
.super Lcom/squareup/wire/Message;
.source "PaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;,
        Lcom/stripe/proto/model/sdk/PaymentMethod$Companion;,
        Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0018\u0019\u001aB3\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ4\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\rR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;",
        "card_payment",
        "Lcom/stripe/proto/model/sdk/CardPaymentMethod;",
        "tip_selection",
        "Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;",
        "non_card_payment",
        "Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;)V",
        "getCard_payment$annotations",
        "()V",
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
        "TipSelection",
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
            "Lcom/stripe/proto/model/sdk/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/sdk/PaymentMethod$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.CardPaymentMethod#ADAPTER"
        jsonName = "cardPayment"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.NonCardPaymentMethod#ADAPTER"
        jsonName = "nonCardPayment"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.PaymentMethod$TipSelection#ADAPTER"
        jsonName = "tipSelection"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/sdk/PaymentMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/sdk/PaymentMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/sdk/PaymentMethod;->Companion:Lcom/stripe/proto/model/sdk/PaymentMethod$Companion;

    .line 156
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 155
    const-class v1, Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 159
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 155
    new-instance v3, Lcom/stripe/proto/model/sdk/PaymentMethod$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/sdk/PaymentMethod$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/sdk/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/sdk/PaymentMethod;-><init>(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/stripe/proto/model/sdk/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    .line 47
    iput-object p2, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    .line 56
    iput-object p3, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 65
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 30
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/sdk/PaymentMethod;-><init>(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/sdk/PaymentMethod;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 107
    iget-object p1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 108
    iget-object p2, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 109
    iget-object p3, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 106
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/sdk/PaymentMethod;->copy(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;)Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCard_payment$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "card_payment is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;)Lcom/stripe/proto/model/sdk/PaymentMethod;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/model/sdk/PaymentMethod;-><init>(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/sdk/PaymentMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {p1}, Lcom/stripe/proto/model/sdk/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/PaymentMethod;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/PaymentMethod;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 82
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    iget-object p1, p1, Lcom/stripe/proto/model/sdk/PaymentMethod;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 87
    iget v0, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->hashCode:I

    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/CardPaymentMethod;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 93
    iput v0, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/PaymentMethod;->newBuilder()Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;
    .locals 2

    .line 68
    new-instance v0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    .line 70
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    .line 71
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    .line 72
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 100
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_payment="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tip_selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "non_card_payment="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/PaymentMethod;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PaymentMethod{"

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
