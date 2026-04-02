.class public final enum Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
.super Ljava/lang/Enum;
.source "PinEntryResult.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/PinEntryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "PIN_ENTRY_RESULT_UNKNOWN",
        "ENTERED",
        "CANCEL",
        "TIMEOUT",
        "BYPASS",
        "WRONG_PIN_LENGTH",
        "INCORRECT_PIN",
        "ICC_REMOVED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BYPASS:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

.field public static final enum CANCEL:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

.field public static final Companion:Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;

.field public static final enum ENTERED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

.field public static final enum ICC_REMOVED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

.field public static final enum INCORRECT_PIN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

.field public static final enum PIN_ENTRY_RESULT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

.field public static final enum TIMEOUT:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

.field public static final enum WRONG_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
    .locals 8

    sget-object v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->PIN_ENTRY_RESULT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    sget-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ENTERED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    sget-object v2, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->CANCEL:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    sget-object v3, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->TIMEOUT:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    sget-object v4, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->BYPASS:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    sget-object v5, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->WRONG_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    sget-object v6, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->INCORRECT_PIN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    sget-object v7, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ICC_REMOVED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 178
    new-instance v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    const-string v1, "PIN_ENTRY_RESULT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->PIN_ENTRY_RESULT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 179
    new-instance v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    const-string v2, "ENTERED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ENTERED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 180
    new-instance v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    const-string v2, "CANCEL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->CANCEL:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 181
    new-instance v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    const-string v2, "TIMEOUT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->TIMEOUT:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 182
    new-instance v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    const-string v2, "BYPASS"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->BYPASS:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 183
    new-instance v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    const-string v2, "WRONG_PIN_LENGTH"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->WRONG_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 184
    new-instance v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    const-string v2, "INCORRECT_PIN"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->INCORRECT_PIN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 185
    new-instance v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    const-string v2, "ICC_REMOVED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ICC_REMOVED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-static {}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->$values()[Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->$VALUES:[Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->Companion:Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;

    .line 190
    const-class v1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 192
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 190
    new-instance v3, Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/bbpos/sdk/PinEntryResult$Type;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    iput p3, p0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->Companion:Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;->fromValue(I)Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
    .locals 1

    const-class v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
    .locals 1

    sget-object v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->$VALUES:[Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->value:I

    return v0
.end method
