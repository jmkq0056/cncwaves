.class public final enum Lcom/stripe/paymentcollection/OnlineAuthFailureReason;
.super Ljava/lang/Enum;
.source "OnlineAuthState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/paymentcollection/OnlineAuthFailureReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/OnlineAuthFailureReason;",
        "",
        "(Ljava/lang/String;I)V",
        "DECLINED",
        "SCA_NEEDED",
        "UNKNOWN_NETWORK_FAILURE",
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

.field private static final synthetic $VALUES:[Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

.field public static final enum DECLINED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

.field public static final enum SCA_NEEDED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

.field public static final enum UNKNOWN_NETWORK_FAILURE:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/paymentcollection/OnlineAuthFailureReason;
    .locals 3

    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->DECLINED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    sget-object v1, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    sget-object v2, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->UNKNOWN_NETWORK_FAILURE:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 92
    new-instance v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    const-string v1, "DECLINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->DECLINED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    .line 97
    new-instance v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    const-string v1, "SCA_NEEDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    .line 102
    new-instance v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    const-string v1, "UNKNOWN_NETWORK_FAILURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->UNKNOWN_NETWORK_FAILURE:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    invoke-static {}, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->$values()[Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/paymentcollection/OnlineAuthFailureReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/paymentcollection/OnlineAuthFailureReason;
    .locals 1

    const-class v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/paymentcollection/OnlineAuthFailureReason;
    .locals 1

    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    return-object v0
.end method
