.class public final enum Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;
.super Ljava/lang/Enum;
.source "PinEntryModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;",
        "",
        "(Ljava/lang/String;I)V",
        "PIN_PAD_TOUCH_EVENT_UNKNOWN",
        "OUT_OF_PIN_PAD",
        "NEW_KEY_DETECTED",
        "BACKSPACE_KEY_DETECTED",
        "CLEAR_KEY_DETECTED",
        "CANCEL_KEY_DETECTED",
        "ENTER_KEY_DETECTED",
        "ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

.field public static final enum BACKSPACE_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

.field public static final enum CANCEL_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

.field public static final enum CLEAR_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

.field public static final enum ENTER_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

.field public static final enum ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

.field public static final enum NEW_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

.field public static final enum OUT_OF_PIN_PAD:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

.field public static final enum PIN_PAD_TOUCH_EVENT_UNKNOWN:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;
    .locals 8

    sget-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->PIN_PAD_TOUCH_EVENT_UNKNOWN:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    sget-object v1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->OUT_OF_PIN_PAD:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    sget-object v2, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->NEW_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    sget-object v3, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->BACKSPACE_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    sget-object v4, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->CLEAR_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    sget-object v5, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->CANCEL_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    sget-object v6, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->ENTER_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    sget-object v7, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    const-string v1, "PIN_PAD_TOUCH_EVENT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->PIN_PAD_TOUCH_EVENT_UNKNOWN:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    .line 65
    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    const-string v1, "OUT_OF_PIN_PAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->OUT_OF_PIN_PAD:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    .line 66
    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    const-string v1, "NEW_KEY_DETECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->NEW_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    .line 67
    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    const-string v1, "BACKSPACE_KEY_DETECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->BACKSPACE_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    .line 68
    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    const-string v1, "CLEAR_KEY_DETECTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->CLEAR_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    .line 69
    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    const-string v1, "CANCEL_KEY_DETECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->CANCEL_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    .line 70
    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    const-string v1, "ENTER_KEY_DETECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->ENTER_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    .line 71
    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    const-string v1, "ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    invoke-static {}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->$values()[Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->$VALUES:[Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;
    .locals 1

    const-class v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->$VALUES:[Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object v0
.end method
