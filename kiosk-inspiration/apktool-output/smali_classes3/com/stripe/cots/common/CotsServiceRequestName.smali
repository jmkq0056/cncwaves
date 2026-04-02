.class public final enum Lcom/stripe/cots/common/CotsServiceRequestName;
.super Ljava/lang/Enum;
.source "CotsServiceConstants.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/cots/common/CotsServiceRequestName;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/cots/common/CotsServiceRequestName;",
        "",
        "(Ljava/lang/String;I)V",
        "DISCOVER",
        "ACTIVATE",
        "COLLECT_PAYMENT",
        "COLLECT_PIN",
        "DISCONNECT",
        "CANCEL_COLLECT_PAYMENT",
        "UPDATE_READER",
        "SET_FAKED_CONTACTLESS_OUTCOME",
        "KILL_AIDL_SERVER",
        "common_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/cots/common/CotsServiceRequestName;

.field public static final enum ACTIVATE:Lcom/stripe/cots/common/CotsServiceRequestName;

.field public static final enum CANCEL_COLLECT_PAYMENT:Lcom/stripe/cots/common/CotsServiceRequestName;

.field public static final enum COLLECT_PAYMENT:Lcom/stripe/cots/common/CotsServiceRequestName;

.field public static final enum COLLECT_PIN:Lcom/stripe/cots/common/CotsServiceRequestName;

.field public static final enum DISCONNECT:Lcom/stripe/cots/common/CotsServiceRequestName;

.field public static final enum DISCOVER:Lcom/stripe/cots/common/CotsServiceRequestName;

.field public static final enum KILL_AIDL_SERVER:Lcom/stripe/cots/common/CotsServiceRequestName;

.field public static final enum SET_FAKED_CONTACTLESS_OUTCOME:Lcom/stripe/cots/common/CotsServiceRequestName;

.field public static final enum UPDATE_READER:Lcom/stripe/cots/common/CotsServiceRequestName;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/cots/common/CotsServiceRequestName;
    .locals 9

    sget-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->DISCOVER:Lcom/stripe/cots/common/CotsServiceRequestName;

    sget-object v1, Lcom/stripe/cots/common/CotsServiceRequestName;->ACTIVATE:Lcom/stripe/cots/common/CotsServiceRequestName;

    sget-object v2, Lcom/stripe/cots/common/CotsServiceRequestName;->COLLECT_PAYMENT:Lcom/stripe/cots/common/CotsServiceRequestName;

    sget-object v3, Lcom/stripe/cots/common/CotsServiceRequestName;->COLLECT_PIN:Lcom/stripe/cots/common/CotsServiceRequestName;

    sget-object v4, Lcom/stripe/cots/common/CotsServiceRequestName;->DISCONNECT:Lcom/stripe/cots/common/CotsServiceRequestName;

    sget-object v5, Lcom/stripe/cots/common/CotsServiceRequestName;->CANCEL_COLLECT_PAYMENT:Lcom/stripe/cots/common/CotsServiceRequestName;

    sget-object v6, Lcom/stripe/cots/common/CotsServiceRequestName;->UPDATE_READER:Lcom/stripe/cots/common/CotsServiceRequestName;

    sget-object v7, Lcom/stripe/cots/common/CotsServiceRequestName;->SET_FAKED_CONTACTLESS_OUTCOME:Lcom/stripe/cots/common/CotsServiceRequestName;

    sget-object v8, Lcom/stripe/cots/common/CotsServiceRequestName;->KILL_AIDL_SERVER:Lcom/stripe/cots/common/CotsServiceRequestName;

    filled-new-array/range {v0 .. v8}, [Lcom/stripe/cots/common/CotsServiceRequestName;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    const-string v1, "DISCOVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/common/CotsServiceRequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->DISCOVER:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 16
    new-instance v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    const-string v1, "ACTIVATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/common/CotsServiceRequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->ACTIVATE:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 17
    new-instance v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    const-string v1, "COLLECT_PAYMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/common/CotsServiceRequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->COLLECT_PAYMENT:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 18
    new-instance v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    const-string v1, "COLLECT_PIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/common/CotsServiceRequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->COLLECT_PIN:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 19
    new-instance v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    const-string v1, "DISCONNECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/common/CotsServiceRequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->DISCONNECT:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 20
    new-instance v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    const-string v1, "CANCEL_COLLECT_PAYMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/common/CotsServiceRequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->CANCEL_COLLECT_PAYMENT:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 21
    new-instance v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    const-string v1, "UPDATE_READER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/common/CotsServiceRequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->UPDATE_READER:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 22
    new-instance v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    const-string v1, "SET_FAKED_CONTACTLESS_OUTCOME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/common/CotsServiceRequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->SET_FAKED_CONTACTLESS_OUTCOME:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 23
    new-instance v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    const-string v1, "KILL_AIDL_SERVER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/cots/common/CotsServiceRequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->KILL_AIDL_SERVER:Lcom/stripe/cots/common/CotsServiceRequestName;

    invoke-static {}, Lcom/stripe/cots/common/CotsServiceRequestName;->$values()[Lcom/stripe/cots/common/CotsServiceRequestName;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->$VALUES:[Lcom/stripe/cots/common/CotsServiceRequestName;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/cots/common/CotsServiceRequestName;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/cots/common/CotsServiceRequestName;
    .locals 1

    const-class v0, Lcom/stripe/cots/common/CotsServiceRequestName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/cots/common/CotsServiceRequestName;

    return-object p0
.end method

.method public static values()[Lcom/stripe/cots/common/CotsServiceRequestName;
    .locals 1

    sget-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->$VALUES:[Lcom/stripe/cots/common/CotsServiceRequestName;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/cots/common/CotsServiceRequestName;

    return-object v0
.end method
