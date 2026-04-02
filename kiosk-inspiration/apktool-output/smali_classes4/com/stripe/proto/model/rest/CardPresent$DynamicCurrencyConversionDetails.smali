.class public final Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;
.super Lcom/squareup/wire/Message;
.source "CardPresent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/CardPresent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicCurrencyConversionDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;,
        Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB{\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0081\u0001\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0002H\u0016J\u0008\u0010\u001d\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\r\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;",
        "status",
        "",
        "original_amount",
        "",
        "original_currency",
        "transaction_fx_rate",
        "",
        "transaction_markup_percent",
        "cardholder_rate",
        "reference_fx_rate",
        "reference_markup_percent",
        "fx_as_of",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V",
        "Ljava/lang/Float;",
        "Ljava/lang/Long;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
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
            "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final cardholder_rate:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE"
        jsonName = "cardholderRate"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final fx_as_of:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE"
        jsonName = "fxAsOf"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final original_amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "originalAmount"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final original_currency:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "originalCurrency"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final reference_fx_rate:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE"
        jsonName = "referenceFxRate"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final reference_markup_percent:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE"
        jsonName = "referenceMarkupPercent"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final transaction_fx_rate:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE"
        jsonName = "transactionFxRate"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final transaction_markup_percent:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE"
        jsonName = "transactionMarkupPercent"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->Companion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Companion;

    .line 1176
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 1175
    const-class v1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1179
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1175
    new-instance v3, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    sget-object v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 936
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->status:Ljava/lang/String;

    .line 943
    iput-object p2, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_amount:Ljava/lang/Long;

    .line 951
    iput-object p3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_currency:Ljava/lang/String;

    .line 959
    iput-object p4, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    .line 967
    iput-object p5, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    .line 975
    iput-object p6, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    .line 983
    iput-object p7, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    .line 991
    iput-object p8, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    .line 999
    iput-object p9, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 1007
    sget-object p10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_9
    move-object p11, p10

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

    .line 935
    invoke-direct/range {p1 .. p11}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    .line 1073
    iget-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->status:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    .line 1074
    iget-object p2, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_amount:Ljava/lang/Long;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    .line 1075
    iget-object p3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_currency:Ljava/lang/String;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    .line 1076
    iget-object p4, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    .line 1077
    iget-object p5, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    .line 1078
    iget-object p6, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    .line 1079
    iget-object p7, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    .line 1080
    iget-object p8, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    .line 1081
    iget-object p9, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 1082
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->unknownFields()Lokio/ByteString;

    move-result-object p10

    :cond_9
    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 1072
    invoke-virtual/range {p2 .. p12}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;
    .locals 12

    const-string v0, "unknownFields"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    new-instance v1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1026
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1027
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1028
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1029
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1030
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1031
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 1032
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 1033
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 1034
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 1035
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 1036
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1041
    iget v0, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->hashCode:I

    if-nez v0, :cond_9

    .line 1043
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1044
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->status:Ljava/lang/String;

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

    .line 1045
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_amount:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1046
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_currency:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1047
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1048
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1049
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1050
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1051
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1052
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    .line 1053
    iput v0, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->hashCode:I

    :cond_9
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 935
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->newBuilder()Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 2

    .line 1010
    new-instance v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;-><init>()V

    .line 1011
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->status:Ljava/lang/String;

    .line 1012
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->original_amount:Ljava/lang/Long;

    .line 1013
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->original_currency:Ljava/lang/String;

    .line 1014
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->transaction_fx_rate:Ljava/lang/Float;

    .line 1015
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->transaction_markup_percent:Ljava/lang/Float;

    .line 1016
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->cardholder_rate:Ljava/lang/Float;

    .line 1017
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->reference_fx_rate:Ljava/lang/Float;

    .line 1018
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->reference_markup_percent:Ljava/lang/Float;

    .line 1019
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->fx_as_of:Ljava/lang/Float;

    .line 1020
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1060
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->status:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_amount:Ljava/lang/Long;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "original_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1062
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_currency:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "original_currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->original_currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1063
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transaction_fx_rate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1064
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transaction_markup_percent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1065
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cardholder_rate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reference_fx_rate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1067
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reference_markup_percent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fx_as_of="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1069
    :cond_8
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DynamicCurrencyConversionDetails{"

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
