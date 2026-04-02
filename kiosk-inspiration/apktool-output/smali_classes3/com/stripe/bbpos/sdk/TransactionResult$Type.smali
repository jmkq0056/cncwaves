.class public final enum Lcom/stripe/bbpos/sdk/TransactionResult$Type;
.super Ljava/lang/Enum;
.source "TransactionResult.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/TransactionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/sdk/TransactionResult$Type;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\u0008\u0086\u0081\u0002\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u001cB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/TransactionResult$Type;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "TRANSACTION_RESULT_TYPE_UNKNOWN",
        "APPROVED",
        "TERMINATED",
        "DECLINED",
        "CANCELED_OR_TIMEOUT",
        "CAPK_FAIL",
        "NOT_ICC",
        "CARD_BLOCKED",
        "DEVICE_ERROR",
        "SELECT_APP_FAIL",
        "CARD_NOT_SUPPORTED",
        "MISSING_MANDATORY_DATA",
        "NO_EMV_APPS",
        "INVALID_ICC_DATA",
        "CONDITION_NOT_SATISFIED",
        "APPLICATION_BLOCKED",
        "ICC_CARD_REMOVED",
        "CARD_SCHEME_NOT_MATCHED",
        "CANCELED",
        "TIMEOUT",
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

.field private static final synthetic $VALUES:[Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/bbpos/sdk/TransactionResult$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum APPLICATION_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum APPROVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum CANCELED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum CANCELED_OR_TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum CAPK_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum CARD_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum CARD_SCHEME_NOT_MATCHED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum CONDITION_NOT_SATISFIED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final Companion:Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;

.field public static final enum DECLINED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum DEVICE_ERROR:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum ICC_CARD_REMOVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum INVALID_ICC_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum MISSING_MANDATORY_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum NOT_ICC:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum NO_EMV_APPS:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum SELECT_APP_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum TERMINATED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

.field public static final enum TRANSACTION_RESULT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionResult$Type;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/bbpos/sdk/TransactionResult$Type;
    .locals 21

    sget-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TRANSACTION_RESULT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v2, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->APPROVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v3, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TERMINATED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v4, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->DECLINED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v5, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CANCELED_OR_TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v6, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CAPK_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v7, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->NOT_ICC:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v8, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v9, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->DEVICE_ERROR:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v10, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->SELECT_APP_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v11, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v12, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->MISSING_MANDATORY_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v13, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->NO_EMV_APPS:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v14, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->INVALID_ICC_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v15, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CONDITION_NOT_SATISFIED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v16, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->APPLICATION_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v17, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->ICC_CARD_REMOVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v18, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_SCHEME_NOT_MATCHED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v19, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CANCELED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    sget-object v20, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    filled-new-array/range {v1 .. v20}, [Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 149
    new-instance v0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v1, "TRANSACTION_RESULT_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TRANSACTION_RESULT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 150
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "APPROVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->APPROVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 151
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "TERMINATED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TERMINATED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 152
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "DECLINED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->DECLINED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 153
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "CANCELED_OR_TIMEOUT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CANCELED_OR_TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 154
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "CAPK_FAIL"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CAPK_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 155
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "NOT_ICC"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->NOT_ICC:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 156
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "CARD_BLOCKED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 157
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "DEVICE_ERROR"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->DEVICE_ERROR:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 158
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "SELECT_APP_FAIL"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->SELECT_APP_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 159
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "CARD_NOT_SUPPORTED"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 160
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "MISSING_MANDATORY_DATA"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->MISSING_MANDATORY_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 161
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "NO_EMV_APPS"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->NO_EMV_APPS:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 162
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "INVALID_ICC_DATA"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->INVALID_ICC_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 163
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "CONDITION_NOT_SATISFIED"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CONDITION_NOT_SATISFIED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 164
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "APPLICATION_BLOCKED"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->APPLICATION_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 165
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "ICC_CARD_REMOVED"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->ICC_CARD_REMOVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 166
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "CARD_SCHEME_NOT_MATCHED"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_SCHEME_NOT_MATCHED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 167
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "CANCELED"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CANCELED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    .line 168
    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    const-string v2, "TIMEOUT"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    invoke-static {}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->$values()[Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->$VALUES:[Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->Companion:Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;

    .line 173
    const-class v1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 175
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 173
    new-instance v3, Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p3, p0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/bbpos/sdk/TransactionResult$Type;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->Companion:Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;->fromValue(I)Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/bbpos/sdk/TransactionResult$Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/TransactionResult$Type;
    .locals 1

    const-class v0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/sdk/TransactionResult$Type;
    .locals 1

    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->$VALUES:[Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->value:I

    return v0
.end method
