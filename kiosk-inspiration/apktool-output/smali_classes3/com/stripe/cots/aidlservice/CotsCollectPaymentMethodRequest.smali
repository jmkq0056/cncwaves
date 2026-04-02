.class public final Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;
.super Lcom/squareup/wire/Message;
.source "CotsCollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;,
        Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;",
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBK\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;",
        "amount",
        "",
        "currency",
        "",
        "readerProfile",
        "transactionDataObjects",
        "",
        "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;",
        "uxConfig",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig;",
        "unknownFields",
        "Lokio/ByteString;",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;)V",
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
        "proto_release"
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
            "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final currency:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final readerProfile:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final transactionDataObjects:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.cots.aidlservice.CotsTransactionDataObject#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;",
            ">;"
        }
    .end annotation
.end field

.field public final uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.cots.aidlservice.CotsUxConfig#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->Companion:Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Companion;

    .line 191
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 190
    const-class v1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 194
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 190
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;",
            ">;",
            "Lcom/stripe/cots/aidlservice/CotsUxConfig;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionDataObjects"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-wide p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->amount:J

    .line 43
    iput-object p3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->currency:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->readerProfile:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    .line 77
    invoke-static {v0, p5}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->transactionDataObjects:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_1

    .line 50
    const-string v2, ""

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_5

    .line 67
    sget-object v6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object p8, v6

    goto :goto_5

    :cond_5
    move-object p8, p7

    :goto_5
    move-object p1, p0

    move-wide p2, v0

    move-object p4, v2

    move-object p5, v3

    move-object p7, v4

    move-object p6, v5

    .line 34
    invoke-direct/range {p1 .. p8}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;
    .locals 8

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 127
    iget-wide p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->amount:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    .line 128
    iget-object p3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->currency:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    .line 129
    iget-object p4, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->readerProfile:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    .line 130
    iget-object p5, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->transactionDataObjects:Ljava/util/List;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    .line 131
    iget-object p6, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    :cond_4
    move-object v6, p6

    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_5
    move-object v0, p0

    move-object v7, p7

    .line 126
    invoke-virtual/range {v0 .. v7}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;",
            ">;",
            "Lcom/stripe/cots/aidlservice/CotsUxConfig;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;"
        }
    .end annotation

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionDataObjects"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;

    invoke-virtual {p1}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 94
    :cond_2
    iget-wide v3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->amount:J

    iget-wide v5, p1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 96
    :cond_4
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->readerProfile:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->readerProfile:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 97
    :cond_5
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->transactionDataObjects:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->transactionDataObjects:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 98
    :cond_6
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    iget-object p1, p1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget v0, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->hashCode:I

    if-nez v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 106
    iget-wide v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 107
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 108
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->readerProfile:Ljava/lang/String;

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

    .line 109
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->transactionDataObjects:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 110
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsUxConfig;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 111
    iput v0, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->newBuilder()Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;
    .locals 3

    .line 80
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;-><init>()V

    .line 81
    iget-wide v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->amount:J

    iput-wide v1, v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->amount:J

    .line 82
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->currency:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->readerProfile:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->readerProfile:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->transactionDataObjects:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->transactionDataObjects:Ljava/util/List;

    .line 85
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    .line 86
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

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

    const-string v3, "amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->amount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->readerProfile:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readerProfile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->readerProfile:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->transactionDataObjects:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transactionDataObjects="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->transactionDataObjects:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uxConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;->uxConfig:Lcom/stripe/cots/aidlservice/CotsUxConfig;

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

    const-string v0, "CotsCollectPaymentMethodRequest{"

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
