.class public final enum Lcom/stripe/jvmcore/forms/logger/EndToEndResult;
.super Ljava/lang/Enum;
.source "EndToEndResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/jvmcore/forms/logger/EndToEndResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/jvmcore/forms/logger/EndToEndResult;",
        "",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "TIMEOUT",
        "INVALID_PARAMETER",
        "MERCHANT_CANCELLED",
        "APPLICATION_ERROR",
        "COMMUNICATION_ERROR",
        "UNSUPPORTED",
        "forms"
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

.field private static final synthetic $VALUES:[Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

.field public static final enum APPLICATION_ERROR:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

.field public static final enum COMMUNICATION_ERROR:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

.field public static final enum INVALID_PARAMETER:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

.field public static final enum MERCHANT_CANCELLED:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

.field public static final enum SUCCESS:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

.field public static final enum TIMEOUT:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

.field public static final enum UNSUPPORTED:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/jvmcore/forms/logger/EndToEndResult;
    .locals 7

    sget-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->SUCCESS:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    sget-object v1, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->TIMEOUT:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    sget-object v2, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->INVALID_PARAMETER:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    sget-object v3, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->MERCHANT_CANCELLED:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    sget-object v4, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->APPLICATION_ERROR:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    sget-object v5, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->COMMUNICATION_ERROR:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    sget-object v6, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->UNSUPPORTED:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    filled-new-array/range {v0 .. v6}, [Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->SUCCESS:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    .line 5
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->TIMEOUT:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    .line 6
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    const-string v1, "INVALID_PARAMETER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->INVALID_PARAMETER:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    .line 7
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    const-string v1, "MERCHANT_CANCELLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->MERCHANT_CANCELLED:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    .line 8
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    const-string v1, "APPLICATION_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->APPLICATION_ERROR:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    .line 9
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    const-string v1, "COMMUNICATION_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->COMMUNICATION_ERROR:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    .line 10
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->UNSUPPORTED:Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    invoke-static {}, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->$values()[Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->$VALUES:[Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/jvmcore/forms/logger/EndToEndResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/jvmcore/forms/logger/EndToEndResult;
    .locals 1

    const-class v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    return-object p0
.end method

.method public static values()[Lcom/stripe/jvmcore/forms/logger/EndToEndResult;
    .locals 1

    sget-object v0, Lcom/stripe/jvmcore/forms/logger/EndToEndResult;->$VALUES:[Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/jvmcore/forms/logger/EndToEndResult;

    return-object v0
.end method
