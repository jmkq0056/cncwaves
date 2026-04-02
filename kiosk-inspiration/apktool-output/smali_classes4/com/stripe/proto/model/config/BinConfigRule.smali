.class public final Lcom/stripe/proto/model/config/BinConfigRule;
.super Lcom/squareup/wire/Message;
.source "BinConfigRule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/BinConfigRule$Builder;,
        Lcom/stripe/proto/model/config/BinConfigRule$Companion;,
        Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;,
        Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/BinConfigRule;",
        "Lcom/stripe/proto/model/config/BinConfigRule$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001c\u001d\u001e\u001fBO\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011JP\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/proto/model/config/BinConfigRule;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/BinConfigRule$Builder;",
        "type",
        "Lcom/stripe/proto/model/payments/InstrumentType;",
        "credit_card_brand",
        "Lcom/stripe/proto/model/payments/CreditCardBrand;",
        "gift_card_brand",
        "Lcom/stripe/proto/model/payments/GiftCardBrand;",
        "attribute",
        "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;",
        "bin_entry",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
        "rules",
        "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;)V",
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
        "InstrumentAttribute",
        "InstrumentRules",
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
            "Lcom/stripe/proto/model/config/BinConfigRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/BinConfigRule$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.BinConfigRule$InstrumentAttribute#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.BinTablePb$BinEntry#ADAPTER"
        jsonName = "binEntry"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.CreditCardBrand#ADAPTER"
        jsonName = "creditCardBrand"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.GiftCardBrand#ADAPTER"
        jsonName = "giftCardBrand"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.BinConfigRule$InstrumentRules#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final type:Lcom/stripe/proto/model/payments/InstrumentType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.InstrumentType#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/BinConfigRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/BinConfigRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/BinConfigRule;->Companion:Lcom/stripe/proto/model/config/BinConfigRule$Companion;

    .line 238
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 237
    const-class v1, Lcom/stripe/proto/model/config/BinConfigRule;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 241
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 237
    new-instance v3, Lcom/stripe/proto/model/config/BinConfigRule$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/BinConfigRule$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/BinConfigRule;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/config/BinConfigRule;-><init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credit_card_brand"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gift_card_brand"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attribute"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/stripe/proto/model/config/BinConfigRule;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 40
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 51
    iput-object p2, p0, Lcom/stripe/proto/model/config/BinConfigRule;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    .line 63
    iput-object p3, p0, Lcom/stripe/proto/model/config/BinConfigRule;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    .line 72
    iput-object p4, p0, Lcom/stripe/proto/model/config/BinConfigRule;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    .line 83
    iput-object p5, p0, Lcom/stripe/proto/model/config/BinConfigRule;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    .line 92
    iput-object p6, p0, Lcom/stripe/proto/model/config/BinConfigRule;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 47
    sget-object p1, Lcom/stripe/proto/model/payments/InstrumentType;->UNKNOWN_TYPE:Lcom/stripe/proto/model/payments/InstrumentType;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 59
    sget-object p2, Lcom/stripe/proto/model/payments/CreditCardBrand;->INVALID_CARD_BRAND:Lcom/stripe/proto/model/payments/CreditCardBrand;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 71
    sget-object p3, Lcom/stripe/proto/model/payments/GiftCardBrand;->DEFAULT_GIFT:Lcom/stripe/proto/model/payments/GiftCardBrand;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 79
    sget-object p4, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;->UNKNOWN:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x0

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 100
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

    .line 36
    invoke-direct/range {p2 .. p9}, Lcom/stripe/proto/model/config/BinConfigRule;-><init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/BinConfigRule;Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/BinConfigRule;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 154
    iget-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 155
    iget-object p2, p0, Lcom/stripe/proto/model/config/BinConfigRule;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 156
    iget-object p3, p0, Lcom/stripe/proto/model/config/BinConfigRule;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 157
    iget-object p4, p0, Lcom/stripe/proto/model/config/BinConfigRule;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 158
    iget-object p5, p0, Lcom/stripe/proto/model/config/BinConfigRule;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 159
    iget-object p6, p0, Lcom/stripe/proto/model/config/BinConfigRule;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 160
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BinConfigRule;->unknownFields()Lokio/ByteString;

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

    .line 153
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/model/config/BinConfigRule;->copy(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;)Lcom/stripe/proto/model/config/BinConfigRule;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;)Lcom/stripe/proto/model/config/BinConfigRule;
    .locals 9

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credit_card_brand"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gift_card_brand"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attribute"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/stripe/proto/model/config/BinConfigRule;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/model/config/BinConfigRule;-><init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 116
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/BinConfigRule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BinConfigRule;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/BinConfigRule;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/BinConfigRule;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BinConfigRule;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    if-eq v1, v3, :cond_3

    return v2

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BinConfigRule;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    if-eq v1, v3, :cond_4

    return v2

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BinConfigRule;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    if-eq v1, v3, :cond_5

    return v2

    .line 121
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BinConfigRule;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    if-eq v1, v3, :cond_6

    return v2

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    iget-object v3, p1, Lcom/stripe/proto/model/config/BinConfigRule;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 123
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    iget-object p1, p1, Lcom/stripe/proto/model/config/BinConfigRule;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 128
    iget v0, p0, Lcom/stripe/proto/model/config/BinConfigRule;->hashCode:I

    if-nez v0, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BinConfigRule;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/InstrumentType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/CreditCardBrand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/GiftCardBrand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 135
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 136
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 137
    iput v0, p0, Lcom/stripe/proto/model/config/BinConfigRule;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BinConfigRule;->newBuilder()Lcom/stripe/proto/model/config/BinConfigRule$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/BinConfigRule$Builder;
    .locals 2

    .line 103
    new-instance v0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/BinConfigRule$Builder;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    .line 108
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    iput-object v1, v0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BinConfigRule;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 144
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BinConfigRule;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "credit_card_brand="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BinConfigRule;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gift_card_brand="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BinConfigRule;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attribute="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BinConfigRule;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lcom/stripe/proto/model/config/BinConfigRule;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bin_entry="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BinConfigRule;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/model/config/BinConfigRule;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rules="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/BinConfigRule;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "BinConfigRule{"

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
