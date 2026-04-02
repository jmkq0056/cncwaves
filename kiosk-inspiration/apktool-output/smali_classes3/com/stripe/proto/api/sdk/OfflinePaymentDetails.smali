.class public final Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;
.super Lcom/squareup/wire/Message;
.source "OfflinePaymentDetails.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;,
        Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BG\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJH\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u0004H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;",
        "id",
        "",
        "stored_at",
        "",
        "amount_details",
        "Lcom/stripe/proto/api/sdk/AmountDetails;",
        "requires_upload",
        "",
        "card_present_details",
        "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;)V",
        "copy",
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
            "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.AmountDetails#ADAPTER"
        jsonName = "amountDetails"
        schemaIndex = 0x2
        tag = 0x4
    .end annotation
.end field

.field public final card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflineCardPresentDetails#ADAPTER"
        jsonName = "cardPresentDetails"
        schemaIndex = 0x4
        tag = 0x6
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final requires_upload:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "requiresUpload"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final stored_at:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "storedAt"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->Companion:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Companion;

    .line 214
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 213
    const-class v1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 217
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 213
    new-instance v3, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;-><init>(Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 32
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->id:Ljava/lang/String;

    .line 42
    iput-wide p2, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->stored_at:J

    .line 54
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    .line 65
    iput-boolean p5, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->requires_upload:Z

    .line 77
    iput-object p6, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    const/4 p5, 0x0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    .line 85
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p8, p7

    move-object p7, p6

    move p6, p5

    move-object p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 27
    invoke-direct/range {p1 .. p8}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;-><init>(Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 135
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 136
    iget-wide p2, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->stored_at:J

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 137
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 138
    iget-boolean p5, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->requires_upload:Z

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 139
    iget-object p6, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    .line 140
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_5
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move p7, p5

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    .line 134
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->copy(Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;
    .locals 9

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;-><init>(Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 103
    :cond_3
    iget-wide v3, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->stored_at:J

    iget-wide v5, p1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->stored_at:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 105
    :cond_5
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->requires_upload:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->requires_upload:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 106
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 111
    iget v0, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->hashCode:I

    if-nez v0, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->id:Ljava/lang/String;

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

    .line 115
    iget-wide v3, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->stored_at:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/AmountDetails;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 117
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->requires_upload:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 119
    iput v0, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->newBuilder()Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;
    .locals 3

    .line 88
    new-instance v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->id:Ljava/lang/String;

    .line 90
    iget-wide v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->stored_at:J

    iput-wide v1, v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->stored_at:J

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    .line 92
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->requires_upload:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->requires_upload:Z

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    .line 94
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stored_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->stored_at:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requires_upload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->requires_upload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_present_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "OfflinePaymentDetails{"

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
