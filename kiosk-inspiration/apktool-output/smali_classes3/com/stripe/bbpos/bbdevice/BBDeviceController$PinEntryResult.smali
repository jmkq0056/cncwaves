.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinEntryResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BYPASS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

.field public static final enum CANCEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

.field public static final enum ENTERED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

.field public static final enum ICC_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

.field public static final enum INCORRECT_PIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

.field public static final enum TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

.field public static final enum WRONG_PIN_LENGTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    const-string v1, "ENTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ENTERED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    const-string v2, "CANCEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->CANCEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    const-string v3, "TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    const-string v4, "BYPASS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->BYPASS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    const-string v5, "WRONG_PIN_LENGTH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->WRONG_PIN_LENGTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    const-string v6, "INCORRECT_PIN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->INCORRECT_PIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    const-string v7, "ICC_REMOVED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ICC_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->aaa000:I

    return v0
.end method
