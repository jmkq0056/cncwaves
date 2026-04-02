.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinPadTouchEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACKSPACE_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

.field public static final enum CANCEL_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

.field public static final enum CLEAR_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

.field public static final enum ENTER_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

.field public static final enum ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

.field public static final enum NEW_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

.field public static final enum OUT_OF_PIN_PAD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    const-string v1, "OUT_OF_PIN_PAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->OUT_OF_PIN_PAD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    const-string v2, "NEW_KEY_DETECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->NEW_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    const-string v3, "BACKSPACE_KEY_DETECTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->BACKSPACE_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    const-string v4, "CLEAR_KEY_DETECTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->CLEAR_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    const-string v5, "CANCEL_KEY_DETECTED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->CANCEL_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    const-string v6, "ENTER_KEY_DETECTED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ENTER_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    const-string v7, "ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->aaa000:I

    return v0
.end method
