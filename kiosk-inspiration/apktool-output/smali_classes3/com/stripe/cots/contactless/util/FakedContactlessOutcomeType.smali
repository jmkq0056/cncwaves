.class public final enum Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;
.super Ljava/lang/Enum;
.source "FakedContactlessOutcomeType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;",
        "",
        "contactlessSuccess",
        "",
        "simulatedDate",
        "Lkotlinx/datetime/LocalDateTime;",
        "(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;)V",
        "getContactlessSuccess",
        "()Z",
        "getSimulatedDate",
        "()Lkotlinx/datetime/LocalDateTime;",
        "VISA",
        "MASTERCARD",
        "MASTERCARD_INVALID_CDA",
        "AMEX_DECLINE",
        "NO_CARD",
        "public_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

.field public static final enum AMEX_DECLINE:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

.field public static final enum MASTERCARD:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

.field public static final enum MASTERCARD_INVALID_CDA:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

.field public static final enum NO_CARD:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

.field public static final enum VISA:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;


# instance fields
.field private final contactlessSuccess:Z

.field private final simulatedDate:Lkotlinx/datetime/LocalDateTime;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;
    .locals 5

    sget-object v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->VISA:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    sget-object v1, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->MASTERCARD:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    sget-object v2, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->MASTERCARD_INVALID_CDA:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    sget-object v3, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->AMEX_DECLINE:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    sget-object v4, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->NO_CARD:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 17
    new-instance v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v1, "VISA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;-><init>(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->VISA:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    .line 18
    new-instance v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    sget-object v1, Lcom/stripe/cots/contactless/util/TlvSequence;->MASTERCARD:Lcom/stripe/cots/contactless/util/TlvSequence;

    invoke-virtual {v1}, Lcom/stripe/cots/contactless/util/TlvSequence;->getSimulatedDate()Lkotlinx/datetime/LocalDateTime;

    move-result-object v1

    const-string v2, "MASTERCARD"

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;-><init>(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;)V

    sput-object v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->MASTERCARD:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    .line 19
    new-instance v4, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v5, "MASTERCARD_INVALID_CDA"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;-><init>(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->MASTERCARD_INVALID_CDA:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    .line 20
    new-instance v5, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v6, "AMEX_DECLINE"

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;-><init>(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->AMEX_DECLINE:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    .line 21
    new-instance v6, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v7, "NO_CARD"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;-><init>(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->NO_CARD:Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    invoke-static {}, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->$values()[Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->$VALUES:[Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlinx/datetime/LocalDateTime;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-boolean p3, p0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->contactlessSuccess:Z

    .line 15
    iput-object p4, p0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->simulatedDate:Lkotlinx/datetime/LocalDateTime;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;-><init>(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;
    .locals 1

    const-class v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;
    .locals 1

    sget-object v0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->$VALUES:[Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;

    return-object v0
.end method


# virtual methods
.method public final getContactlessSuccess()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->contactlessSuccess:Z

    return v0
.end method

.method public final getSimulatedDate()Lkotlinx/datetime/LocalDateTime;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;->simulatedDate:Lkotlinx/datetime/LocalDateTime;

    return-object v0
.end method
