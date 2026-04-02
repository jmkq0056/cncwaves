.class public final Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;
.super Lcom/squareup/wire/Message;
.source "BinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/BinTablePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardBinEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;,
        Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBW\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011JX\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;",
        "instrument_type",
        "Lcom/stripe/proto/model/payments/InstrumentType;",
        "card_brand",
        "Lcom/stripe/proto/model/payments/CreditCardBrand;",
        "ranges",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
        "ebt_state",
        "Lcom/stripe/proto/model/payments/EbtState;",
        "prepaid_card",
        "",
        "commercial_card",
        "hsa_fsa_card",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
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
            "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.CreditCardBrand#ADAPTER"
        jsonName = "cardBrand"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final commercial_card:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "commercialCard"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final ebt_state:Lcom/stripe/proto/model/payments/EbtState;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.EbtState#ADAPTER"
        jsonName = "ebtState"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final hsa_fsa_card:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "hsaFsaCard"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.InstrumentType#ADAPTER"
        jsonName = "instrumentType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final prepaid_card:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "prepaidCard"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.BinTablePb$BinEntry#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->Companion:Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Companion;

    .line 522
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 521
    const-class v1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 525
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 521
    new-instance v3, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;-><init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;)V
    .locals 1

    const-string v0, "instrument_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card_brand"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ebt_state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    sget-object v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p8}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 308
    iput-object p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 320
    iput-object p2, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    .line 329
    iput-object p3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    .line 340
    iput-object p4, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    .line 349
    iput-boolean p5, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->prepaid_card:Z

    .line 358
    iput-boolean p6, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->commercial_card:Z

    .line 367
    iput-boolean p7, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->hsa_fsa_card:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 316
    sget-object p1, Lcom/stripe/proto/model/payments/InstrumentType;->UNKNOWN_TYPE:Lcom/stripe/proto/model/payments/InstrumentType;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 328
    sget-object p2, Lcom/stripe/proto/model/payments/CreditCardBrand;->INVALID_CARD_BRAND:Lcom/stripe/proto/model/payments/CreditCardBrand;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 348
    sget-object p4, Lcom/stripe/proto/model/payments/EbtState;->UNKNOWN_STATE:Lcom/stripe/proto/model/payments/EbtState;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    const/4 v0, 0x0

    if-eqz p10, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 376
    sget-object p8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_7
    move p9, p7

    move-object p10, p8

    move p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 307
    invoke-direct/range {p2 .. p10}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;-><init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 434
    iget-object p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 435
    iget-object p2, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    .line 436
    iget-object p3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 437
    iget-object p4, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 438
    iget-boolean p5, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->prepaid_card:Z

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 439
    iget-boolean p6, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->commercial_card:Z

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    .line 440
    iget-boolean p7, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->hsa_fsa_card:Z

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 441
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->unknownFields()Lokio/ByteString;

    move-result-object p8

    :cond_7
    move p9, p7

    move-object p10, p8

    move p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 433
    invoke-virtual/range {p2 .. p10}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->copy(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;
    .locals 10

    const-string v0, "instrument_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card_brand"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ebt_state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    new-instance v1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;-><init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 393
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;

    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    if-eq v1, v3, :cond_3

    return v2

    .line 396
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    if-eq v1, v3, :cond_4

    return v2

    .line 397
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 398
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    if-eq v1, v3, :cond_6

    return v2

    .line 399
    :cond_6
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->prepaid_card:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->prepaid_card:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 400
    :cond_7
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->commercial_card:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->commercial_card:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 401
    :cond_8
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->hsa_fsa_card:Z

    iget-boolean p1, p1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->hsa_fsa_card:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 406
    iget v0, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->hashCode:I

    if-nez v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 409
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/InstrumentType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 410
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/CreditCardBrand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 411
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 412
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/EbtState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 413
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->prepaid_card:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 414
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->commercial_card:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 415
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->hsa_fsa_card:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    iput v0, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->newBuilder()Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;
    .locals 2

    .line 379
    new-instance v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;-><init>()V

    .line 380
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 381
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    .line 382
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    .line 383
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    .line 384
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->prepaid_card:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->prepaid_card:Z

    .line 385
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->commercial_card:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->commercial_card:Z

    .line 386
    iget-boolean v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->hsa_fsa_card:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->hsa_fsa_card:Z

    .line 387
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 423
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "instrument_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_brand="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v2, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ranges="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ebt_state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepaid_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->prepaid_card:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "commercial_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->commercial_card:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hsa_fsa_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->hsa_fsa_card:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 430
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CardBinEntry{"

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
