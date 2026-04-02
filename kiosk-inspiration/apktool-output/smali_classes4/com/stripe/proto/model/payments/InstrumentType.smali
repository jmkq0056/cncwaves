.class public final enum Lcom/stripe/proto/model/payments/InstrumentType;
.super Ljava/lang/Enum;
.source "InstrumentType.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/payments/InstrumentType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/payments/InstrumentType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0014B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/InstrumentType;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNKNOWN_TYPE",
        "DEBIT_CARD",
        "CREDIT_CARD",
        "PRIVATE_LABEL",
        "GIFT",
        "EBT_SNAP",
        "EBT_CASH",
        "WIC",
        "CHECK",
        "CASH",
        "SMART_WIC",
        "FSA",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/payments/InstrumentType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CASH:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum CHECK:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum CREDIT_CARD:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final Companion:Lcom/stripe/proto/model/payments/InstrumentType$Companion;

.field public static final enum DEBIT_CARD:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum EBT_CASH:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum EBT_SNAP:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum FSA:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum GIFT:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum PRIVATE_LABEL:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum SMART_WIC:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum UNKNOWN_TYPE:Lcom/stripe/proto/model/payments/InstrumentType;

.field public static final enum WIC:Lcom/stripe/proto/model/payments/InstrumentType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/payments/InstrumentType;
    .locals 12

    sget-object v0, Lcom/stripe/proto/model/payments/InstrumentType;->UNKNOWN_TYPE:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->DEBIT_CARD:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v2, Lcom/stripe/proto/model/payments/InstrumentType;->CREDIT_CARD:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v3, Lcom/stripe/proto/model/payments/InstrumentType;->PRIVATE_LABEL:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v4, Lcom/stripe/proto/model/payments/InstrumentType;->GIFT:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v5, Lcom/stripe/proto/model/payments/InstrumentType;->EBT_SNAP:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v6, Lcom/stripe/proto/model/payments/InstrumentType;->EBT_CASH:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v7, Lcom/stripe/proto/model/payments/InstrumentType;->WIC:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v8, Lcom/stripe/proto/model/payments/InstrumentType;->CHECK:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v9, Lcom/stripe/proto/model/payments/InstrumentType;->CASH:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v10, Lcom/stripe/proto/model/payments/InstrumentType;->SMART_WIC:Lcom/stripe/proto/model/payments/InstrumentType;

    sget-object v11, Lcom/stripe/proto/model/payments/InstrumentType;->FSA:Lcom/stripe/proto/model/payments/InstrumentType;

    filled-new-array/range {v0 .. v11}, [Lcom/stripe/proto/model/payments/InstrumentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v1, "UNKNOWN_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/payments/InstrumentType;->UNKNOWN_TYPE:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 20
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "DEBIT_CARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->DEBIT_CARD:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 21
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "CREDIT_CARD"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->CREDIT_CARD:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 22
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "PRIVATE_LABEL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->PRIVATE_LABEL:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 23
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "GIFT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->GIFT:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 24
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "EBT_SNAP"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->EBT_SNAP:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 25
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "EBT_CASH"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->EBT_CASH:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 26
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "WIC"

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->WIC:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 27
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "CHECK"

    invoke-direct {v1, v2, v4, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->CHECK:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 28
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "CASH"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->CASH:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 32
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "SMART_WIC"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->SMART_WIC:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 33
    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType;

    const-string v2, "FSA"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/payments/InstrumentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->FSA:Lcom/stripe/proto/model/payments/InstrumentType;

    invoke-static {}, Lcom/stripe/proto/model/payments/InstrumentType;->$values()[Lcom/stripe/proto/model/payments/InstrumentType;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->$VALUES:[Lcom/stripe/proto/model/payments/InstrumentType;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/payments/InstrumentType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/payments/InstrumentType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/payments/InstrumentType;->Companion:Lcom/stripe/proto/model/payments/InstrumentType$Companion;

    .line 38
    const-class v1, Lcom/stripe/proto/model/payments/InstrumentType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 38
    new-instance v3, Lcom/stripe/proto/model/payments/InstrumentType$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/payments/InstrumentType$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/payments/InstrumentType;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/payments/InstrumentType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/stripe/proto/model/payments/InstrumentType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/payments/InstrumentType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/payments/InstrumentType;->Companion:Lcom/stripe/proto/model/payments/InstrumentType$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/payments/InstrumentType$Companion;->fromValue(I)Lcom/stripe/proto/model/payments/InstrumentType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/payments/InstrumentType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/payments/InstrumentType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/payments/InstrumentType;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/payments/InstrumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/payments/InstrumentType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/payments/InstrumentType;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/payments/InstrumentType;->$VALUES:[Lcom/stripe/proto/model/payments/InstrumentType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/payments/InstrumentType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/proto/model/payments/InstrumentType;->value:I

    return v0
.end method
