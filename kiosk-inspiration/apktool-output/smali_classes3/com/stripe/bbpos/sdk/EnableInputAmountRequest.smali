.class public final Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;
.super Lcom/squareup/wire/Message;
.source "EnableInputAmountRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;,
        Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;",
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBQ\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011JR\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;",
        "setAmountTimeout",
        "",
        "amountInputType",
        "Lcom/stripe/bbpos/sdk/AmountInputType;",
        "otherAmountOption",
        "Lcom/stripe/bbpos/sdk/OtherAmountOption;",
        "percentageTips",
        "Lcom/stripe/bbpos/sdk/PercentageTips;",
        "fixedAmountTips",
        "Lcom/stripe/bbpos/sdk/FixedAmountTips;",
        "noTips",
        "Lcom/stripe/bbpos/sdk/NoTips;",
        "unknownFields",
        "Lokio/ByteString;",
        "(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;)V",
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
        "sdk-protos_release"
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
            "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.AmountInputType#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.FixedAmountTips#ADAPTER"
        oneofName = "tipsConfig"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final noTips:Lcom/stripe/bbpos/sdk/NoTips;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.NoTips#ADAPTER"
        oneofName = "tipsConfig"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.OtherAmountOption#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.PercentageTips#ADAPTER"
        oneofName = "tipsConfig"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final setAmountTimeout:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->Companion:Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion;

    .line 218
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 217
    const-class v1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 221
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 217
    new-instance v3, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v9}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;-><init>(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;)V
    .locals 1

    const-string v0, "amountInputType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherAmountOption"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    .line 39
    iput-object p2, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 47
    iput-object p3, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    .line 55
    iput-object p4, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    .line 63
    iput-object p5, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    .line 71
    iput-object p6, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    .line 82
    invoke-static {p4, p5, p6}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of percentageTips, fixedAmountTips, noTips may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 46
    sget-object p2, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_INPUT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/AmountInputType;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 54
    sget-object p3, Lcom/stripe/bbpos/sdk/OtherAmountOption;->OTHER_AMOUNT_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    const/4 v0, 0x0

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 79
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    .line 30
    invoke-direct/range {p2 .. p9}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;-><init>(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 139
    iget p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 140
    iget-object p2, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 141
    iget-object p3, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 142
    iget-object p4, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 143
    iget-object p5, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 144
    iget-object p6, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    .line 138
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->copy(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;
    .locals 9

    const-string v0, "amountInputType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherAmountOption"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;-><init>(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 103
    :cond_2
    iget v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    if-eq v1, v3, :cond_3

    return v2

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    if-eq v1, v3, :cond_4

    return v2

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    if-eq v1, v3, :cond_5

    return v2

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 108
    :cond_7
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    iget-object p1, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 113
    iget v0, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->hashCode:I

    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 116
    iget v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 117
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/AmountInputType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 118
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/OtherAmountOption;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 119
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/PercentageTips;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 120
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/FixedAmountTips;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 121
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/NoTips;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 122
    iput v0, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->newBuilder()Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;
    .locals 2

    .line 88
    new-instance v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;-><init>()V

    .line 89
    iget v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->setAmountTimeout:I

    .line 90
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 91
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    .line 92
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    .line 93
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    .line 94
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    .line 95
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 129
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAmountTimeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amountInputType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "otherAmountOption="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percentageTips="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fixedAmountTips="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "noTips="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "EnableInputAmountRequest{"

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
