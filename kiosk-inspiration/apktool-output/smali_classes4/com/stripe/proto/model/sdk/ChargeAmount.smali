.class public final Lcom/stripe/proto/model/sdk/ChargeAmount;
.super Lcom/squareup/wire/Message;
.source "ChargeAmount.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;,
        Lcom/stripe/proto/model/sdk/ChargeAmount$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/sdk/ChargeAmount;",
        "Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ8\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0007H\u0016R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/ChargeAmount;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;",
        "charge_amount",
        "",
        "tip_amount",
        "currency",
        "",
        "cashback_amount",
        "unknownFields",
        "Lokio/ByteString;",
        "(JJLjava/lang/String;JLokio/ByteString;)V",
        "copy",
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
            "Lcom/stripe/proto/model/sdk/ChargeAmount;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/sdk/ChargeAmount$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final cashback_amount:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "cashbackAmount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final charge_amount:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "chargeAmount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final currency:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final tip_amount:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "tipAmount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/sdk/ChargeAmount$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/sdk/ChargeAmount$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/sdk/ChargeAmount;->Companion:Lcom/stripe/proto/model/sdk/ChargeAmount$Companion;

    .line 195
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 194
    const-class v1, Lcom/stripe/proto/model/sdk/ChargeAmount;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 198
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 194
    new-instance v3, Lcom/stripe/proto/model/sdk/ChargeAmount$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/sdk/ChargeAmount$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/sdk/ChargeAmount;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/sdk/ChargeAmount;-><init>(JJLjava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;JLokio/ByteString;)V
    .locals 1

    const-string v0, "currency"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/stripe/proto/model/sdk/ChargeAmount;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p8}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 33
    iput-wide p1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->charge_amount:J

    .line 47
    iput-wide p3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->tip_amount:J

    .line 59
    iput-object p5, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->currency:Ljava/lang/String;

    .line 71
    iput-wide p6, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->cashback_amount:J

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p10, p9, 0x1

    const-wide/16 v0, 0x0

    if-eqz p10, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move-wide p3, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    .line 66
    const-string p5, ""

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-wide p6, v0

    :cond_3
    and-int/lit8 p9, p9, 0x10

    if-eqz p9, :cond_4

    .line 80
    sget-object p8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p9, p8

    move-wide p7, p6

    move-object p6, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 27
    invoke-direct/range {p1 .. p9}, Lcom/stripe/proto/model/sdk/ChargeAmount;-><init>(JJLjava/lang/String;JLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/sdk/ChargeAmount;JJLjava/lang/String;JLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/sdk/ChargeAmount;
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    .line 126
    iget-wide p1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->charge_amount:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p9, 0x2

    if-eqz p1, :cond_1

    .line 127
    iget-wide p3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->tip_amount:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p9, 0x4

    if-eqz p1, :cond_2

    .line 128
    iget-object p5, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->currency:Ljava/lang/String;

    :cond_2
    move-object v5, p5

    and-int/lit8 p1, p9, 0x8

    if-eqz p1, :cond_3

    .line 129
    iget-wide p1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->cashback_amount:J

    move-wide v6, p1

    goto :goto_0

    :cond_3
    move-wide v6, p6

    :goto_0
    and-int/lit8 p1, p9, 0x10

    if-eqz p1, :cond_4

    .line 130
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ChargeAmount;->unknownFields()Lokio/ByteString;

    move-result-object p1

    move-object v8, p1

    goto :goto_1

    :cond_4
    move-object/from16 v8, p8

    :goto_1
    move-object v0, p0

    .line 125
    invoke-virtual/range {v0 .. v8}, Lcom/stripe/proto/model/sdk/ChargeAmount;->copy(JJLjava/lang/String;JLokio/ByteString;)Lcom/stripe/proto/model/sdk/ChargeAmount;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(JJLjava/lang/String;JLokio/ByteString;)Lcom/stripe/proto/model/sdk/ChargeAmount;
    .locals 10

    const-string v0, "currency"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/stripe/proto/model/sdk/ChargeAmount;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/model/sdk/ChargeAmount;-><init>(JJLjava/lang/String;JLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 94
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/sdk/ChargeAmount;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ChargeAmount;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/sdk/ChargeAmount;

    invoke-virtual {p1}, Lcom/stripe/proto/model/sdk/ChargeAmount;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 96
    :cond_2
    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->charge_amount:J

    iget-wide v5, p1, Lcom/stripe/proto/model/sdk/ChargeAmount;->charge_amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 97
    :cond_3
    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->tip_amount:J

    iget-wide v5, p1, Lcom/stripe/proto/model/sdk/ChargeAmount;->tip_amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/ChargeAmount;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 99
    :cond_5
    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->cashback_amount:J

    iget-wide v5, p1, Lcom/stripe/proto/model/sdk/ChargeAmount;->cashback_amount:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 104
    iget v0, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->hashCode:I

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ChargeAmount;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 107
    iget-wide v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->charge_amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 108
    iget-wide v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->tip_amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 110
    iget-wide v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->cashback_amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    iput v0, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ChargeAmount;->newBuilder()Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;
    .locals 3

    .line 83
    new-instance v0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;-><init>()V

    .line 84
    iget-wide v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->charge_amount:J

    iput-wide v1, v0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->charge_amount:J

    .line 85
    iget-wide v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->tip_amount:J

    iput-wide v1, v0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->tip_amount:J

    .line 86
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->currency:Ljava/lang/String;

    .line 87
    iget-wide v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->cashback_amount:J

    iput-wide v1, v0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->cashback_amount:J

    .line 88
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ChargeAmount;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 118
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charge_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->charge_amount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tip_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->tip_amount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->currency:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cashback_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount;->cashback_amount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 122
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ChargeAmount{"

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
