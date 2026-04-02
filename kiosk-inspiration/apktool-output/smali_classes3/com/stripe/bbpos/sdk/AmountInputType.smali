.class public final enum Lcom/stripe/bbpos/sdk/AmountInputType;
.super Ljava/lang/Enum;
.source "AmountInputType.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/AmountInputType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/sdk/AmountInputType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/AmountInputType;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "AMOUNT_INPUT_TYPE_UNKNOWN",
        "AMOUNT_ONLY",
        "AMOUNT_AND_CASHBACK",
        "CASHBACK_ONLY",
        "TIPS_ONLY",
        "AMOUNT_AND_TIPS",
        "AMOUNT_AND_TIPS_IN_PERCENTAGE",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/bbpos/sdk/AmountInputType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/bbpos/sdk/AmountInputType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum AMOUNT_AND_CASHBACK:Lcom/stripe/bbpos/sdk/AmountInputType;

.field public static final enum AMOUNT_AND_TIPS:Lcom/stripe/bbpos/sdk/AmountInputType;

.field public static final enum AMOUNT_AND_TIPS_IN_PERCENTAGE:Lcom/stripe/bbpos/sdk/AmountInputType;

.field public static final enum AMOUNT_INPUT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/AmountInputType;

.field public static final enum AMOUNT_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;

.field public static final enum CASHBACK_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;

.field public static final Companion:Lcom/stripe/bbpos/sdk/AmountInputType$Companion;

.field public static final enum TIPS_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/bbpos/sdk/AmountInputType;
    .locals 7

    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_INPUT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/AmountInputType;

    sget-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;

    sget-object v2, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_AND_CASHBACK:Lcom/stripe/bbpos/sdk/AmountInputType;

    sget-object v3, Lcom/stripe/bbpos/sdk/AmountInputType;->CASHBACK_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;

    sget-object v4, Lcom/stripe/bbpos/sdk/AmountInputType;->TIPS_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;

    sget-object v5, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_AND_TIPS:Lcom/stripe/bbpos/sdk/AmountInputType;

    sget-object v6, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_AND_TIPS_IN_PERCENTAGE:Lcom/stripe/bbpos/sdk/AmountInputType;

    filled-new-array/range {v0 .. v6}, [Lcom/stripe/bbpos/sdk/AmountInputType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/stripe/bbpos/sdk/AmountInputType;

    const-string v1, "AMOUNT_INPUT_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/sdk/AmountInputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_INPUT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 20
    new-instance v1, Lcom/stripe/bbpos/sdk/AmountInputType;

    const-string v2, "AMOUNT_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/AmountInputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 21
    new-instance v1, Lcom/stripe/bbpos/sdk/AmountInputType;

    const-string v2, "AMOUNT_AND_CASHBACK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/AmountInputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_AND_CASHBACK:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 22
    new-instance v1, Lcom/stripe/bbpos/sdk/AmountInputType;

    const-string v2, "CASHBACK_ONLY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/AmountInputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->CASHBACK_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 23
    new-instance v1, Lcom/stripe/bbpos/sdk/AmountInputType;

    const-string v2, "TIPS_ONLY"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/AmountInputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->TIPS_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 24
    new-instance v1, Lcom/stripe/bbpos/sdk/AmountInputType;

    const-string v2, "AMOUNT_AND_TIPS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/AmountInputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_AND_TIPS:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 25
    new-instance v1, Lcom/stripe/bbpos/sdk/AmountInputType;

    const-string v2, "AMOUNT_AND_TIPS_IN_PERCENTAGE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/AmountInputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_AND_TIPS_IN_PERCENTAGE:Lcom/stripe/bbpos/sdk/AmountInputType;

    invoke-static {}, Lcom/stripe/bbpos/sdk/AmountInputType;->$values()[Lcom/stripe/bbpos/sdk/AmountInputType;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->$VALUES:[Lcom/stripe/bbpos/sdk/AmountInputType;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/bbpos/sdk/AmountInputType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/sdk/AmountInputType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->Companion:Lcom/stripe/bbpos/sdk/AmountInputType$Companion;

    .line 30
    const-class v1, Lcom/stripe/bbpos/sdk/AmountInputType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 32
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 30
    new-instance v3, Lcom/stripe/bbpos/sdk/AmountInputType$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/bbpos/sdk/AmountInputType$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/bbpos/sdk/AmountInputType;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/AmountInputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/stripe/bbpos/sdk/AmountInputType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/bbpos/sdk/AmountInputType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->Companion:Lcom/stripe/bbpos/sdk/AmountInputType$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/bbpos/sdk/AmountInputType$Companion;->fromValue(I)Lcom/stripe/bbpos/sdk/AmountInputType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/bbpos/sdk/AmountInputType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/AmountInputType;
    .locals 1

    const-class v0, Lcom/stripe/bbpos/sdk/AmountInputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/sdk/AmountInputType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/sdk/AmountInputType;
    .locals 1

    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->$VALUES:[Lcom/stripe/bbpos/sdk/AmountInputType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/sdk/AmountInputType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/bbpos/sdk/AmountInputType;->value:I

    return v0
.end method
