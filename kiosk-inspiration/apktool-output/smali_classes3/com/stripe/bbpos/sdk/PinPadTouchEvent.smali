.class public final enum Lcom/stripe/bbpos/sdk/PinPadTouchEvent;
.super Ljava/lang/Enum;
.source "PinPadTouchEvent.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "PIN_PAD_TOUCH_EVENT_UNKNOWN",
        "OUT_OF_PIN_PAD",
        "NEW_KEY_DETECTED",
        "BACKSPACE_KEY_DETECTED",
        "CLEAR_KEY_DETECTED",
        "CANCEL_KEY_DETECTED",
        "ENTER_KEY_DETECTED",
        "ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH",
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

.field private static final synthetic $VALUES:[Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BACKSPACE_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

.field public static final enum CANCEL_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

.field public static final enum CLEAR_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

.field public static final Companion:Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion;

.field public static final enum ENTER_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

.field public static final enum ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

.field public static final enum NEW_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

.field public static final enum OUT_OF_PIN_PAD:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

.field public static final enum PIN_PAD_TOUCH_EVENT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/bbpos/sdk/PinPadTouchEvent;
    .locals 8

    sget-object v0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->PIN_PAD_TOUCH_EVENT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    sget-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->OUT_OF_PIN_PAD:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    sget-object v2, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->NEW_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    sget-object v3, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->BACKSPACE_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    sget-object v4, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->CLEAR_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    sget-object v5, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->CANCEL_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    sget-object v6, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ENTER_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    sget-object v7, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    const-string v1, "PIN_PAD_TOUCH_EVENT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->PIN_PAD_TOUCH_EVENT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    .line 20
    new-instance v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    const-string v2, "OUT_OF_PIN_PAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->OUT_OF_PIN_PAD:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    .line 21
    new-instance v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    const-string v2, "NEW_KEY_DETECTED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->NEW_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    .line 22
    new-instance v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    const-string v2, "BACKSPACE_KEY_DETECTED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->BACKSPACE_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    .line 23
    new-instance v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    const-string v2, "CLEAR_KEY_DETECTED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->CLEAR_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    .line 24
    new-instance v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    const-string v2, "CANCEL_KEY_DETECTED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->CANCEL_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    .line 25
    new-instance v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    const-string v2, "ENTER_KEY_DETECTED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ENTER_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    .line 26
    new-instance v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    const-string v2, "ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-static {}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->$values()[Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->$VALUES:[Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->Companion:Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion;

    .line 31
    const-class v1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 33
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 31
    new-instance v3, Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/bbpos/sdk/PinPadTouchEvent;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/bbpos/sdk/PinPadTouchEvent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->Companion:Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion;->fromValue(I)Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/PinPadTouchEvent;
    .locals 1

    const-class v0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/sdk/PinPadTouchEvent;
    .locals 1

    sget-object v0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->$VALUES:[Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->value:I

    return v0
.end method
