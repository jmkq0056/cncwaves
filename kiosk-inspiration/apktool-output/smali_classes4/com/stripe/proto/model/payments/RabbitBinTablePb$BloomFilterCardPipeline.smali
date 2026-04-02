.class public final Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;
.super Lcom/squareup/wire/Message;
.source "RabbitBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/RabbitBinTablePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BloomFilterCardPipeline"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;,
        Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B9\u0012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ:\u0010\u000b\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0005H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;",
        "card_exceptions",
        "",
        "",
        "card_bloomfilter",
        "Lokio/ByteString;",
        "card_wildcard",
        "unknownFields",
        "(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;)V",
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
        "terminal_release"
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
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final card_bloomfilter:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        jsonName = "cardBloomfilter"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final card_exceptions:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "cardExceptions"
        label = .enum Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final card_wildcard:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "cardWildcard"
        label = .enum Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->Companion:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Companion;

    .line 510
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 509
    const-class v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 513
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 509
    new-instance v3, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;-><init>(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lokio/ByteString;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "card_exceptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "card_bloomfilter"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "card_wildcard"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "unknownFields"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    sget-object v2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v2, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 376
    iput-object p2, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_bloomfilter:Lokio/ByteString;

    .line 399
    invoke-static {v0, p1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_exceptions:Ljava/util/List;

    .line 413
    invoke-static {v1, p3}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_wildcard:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 372
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 384
    sget-object p2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 385
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 386
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 371
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;-><init>(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 455
    iget-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_exceptions:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 456
    iget-object p2, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_bloomfilter:Lokio/ByteString;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 457
    iget-object p3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_wildcard:Ljava/util/List;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 458
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 454
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->copy(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lokio/ByteString;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;"
        }
    .end annotation

    const-string v0, "card_exceptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card_bloomfilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card_wildcard"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    new-instance v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;-><init>(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 426
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_exceptions:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_exceptions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 429
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_bloomfilter:Lokio/ByteString;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_bloomfilter:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 430
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_wildcard:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_wildcard:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 435
    iget v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->hashCode:I

    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 438
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_exceptions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 439
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_bloomfilter:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 440
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_wildcard:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    iput v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->newBuilder()Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;
    .locals 2

    .line 416
    new-instance v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;-><init>()V

    .line 417
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_exceptions:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_exceptions:Ljava/util/List;

    .line 418
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_bloomfilter:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_bloomfilter:Lokio/ByteString;

    .line 419
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_wildcard:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_wildcard:Ljava/util/List;

    .line 420
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 448
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_exceptions:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_exceptions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_exceptions:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_bloomfilter="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_bloomfilter:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v2, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_wildcard:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_wildcard="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->card_wildcard:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "BloomFilterCardPipeline{"

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
