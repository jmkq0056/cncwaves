.class public final Lcom/stripe/proto/model/payments/RabbitBinTablePb;
.super Lcom/squareup/wire/Message;
.source "RabbitBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;,
        Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;,
        Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion;,
        Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;,
        Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u001d\u001e\u001f !Bs\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012Jt\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;",
        "credit_card_pipeline",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
        "commercial_card_pipeline",
        "prepaid_card_pipeline",
        "hsa_fsa_card_pipeline",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;",
        "wic_card_pipeline",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;",
        "ebt_card_pipeline",
        "credit_brand_exceptions",
        "",
        "Lcom/stripe/proto/model/payments/CreditBinEntry;",
        "unbranded_card_pipeline",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)V",
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
        "BloomFilterCardPipeline",
        "Builder",
        "Companion",
        "EbtCardPipeline",
        "HsaFsaCardPipeline",
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
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$BloomFilterCardPipeline#ADAPTER"
        jsonName = "commercialCardPipeline"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final credit_brand_exceptions:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.CreditBinEntry#ADAPTER"
        jsonName = "creditBrandExceptions"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/CreditBinEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$BloomFilterCardPipeline#ADAPTER"
        jsonName = "creditCardPipeline"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$EbtCardPipeline#ADAPTER"
        jsonName = "ebtCardPipeline"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$HsaFsaCardPipeline#ADAPTER"
        jsonName = "hsaFsaCardPipeline"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$BloomFilterCardPipeline#ADAPTER"
        jsonName = "prepaidCardPipeline"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$BloomFilterCardPipeline#ADAPTER"
        jsonName = "unbrandedCardPipeline"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.RabbitBinTablePb$EbtCardPipeline#ADAPTER"
        jsonName = "wicCardPipeline"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->Companion:Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion;

    .line 270
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 269
    const-class v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 273
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 269
    new-instance v3, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;-><init>(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/CreditBinEntry;",
            ">;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "credit_brand_exceptions"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p9}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 43
    iput-object p2, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 52
    iput-object p3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 61
    iput-object p4, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    .line 70
    iput-object p5, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    .line 79
    iput-object p6, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    .line 89
    iput-object p8, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 112
    invoke-static {v0, p7}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 88
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p7

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 98
    sget-object p9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_8
    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 33
    invoke-direct/range {p1 .. p10}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;-><init>(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/payments/RabbitBinTablePb;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/payments/RabbitBinTablePb;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    .line 174
    iget-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    .line 175
    iget-object p2, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    .line 176
    iget-object p3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 177
    iget-object p4, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    .line 178
    iget-object p5, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    .line 179
    iget-object p6, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 180
    iget-object p7, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 181
    iget-object p8, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 182
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unknownFields()Lokio/ByteString;

    move-result-object p9

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 173
    invoke-virtual/range {p2 .. p11}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->copy(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)Lcom/stripe/proto/model/payments/RabbitBinTablePb;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/CreditBinEntry;",
            ">;",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb;"
        }
    .end annotation

    const-string v0, "credit_brand_exceptions"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;-><init>(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 130
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 136
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 137
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 138
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 139
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    iget-object p1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 144
    iget v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hashCode:I

    if-nez v0, :cond_7

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 149
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    .line 155
    iput v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hashCode:I

    :cond_7
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->newBuilder()Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
    .locals 2

    .line 115
    new-instance v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    .line 121
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    .line 122
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->credit_brand_exceptions:Ljava/util/List;

    .line 123
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 124
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "credit_card_pipeline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "commercial_card_pipeline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepaid_card_pipeline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hsa_fsa_card_pipeline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wic_card_pipeline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ebt_card_pipeline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "credit_brand_exceptions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unbranded_card_pipeline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_7
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "RabbitBinTablePb{"

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
