.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NfcDetectCardResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

.field public static final enum CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

.field public static final enum CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

.field public static final enum MULTIPLE_CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

.field public static final enum TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

.field public static final enum WAITING_CARD_REMOVAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

.field public static final enum WAITING_FOR_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    const-string v1, "WAITING_FOR_CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->WAITING_FOR_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    const-string v2, "WAITING_CARD_REMOVAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->WAITING_CARD_REMOVAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    const-string v3, "CARD_DETECTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    const-string v4, "CARD_REMOVED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    const-string v5, "TIMEOUT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    const-string v6, "CARD_NOT_SUPPORTED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    const-string v7, "MULTIPLE_CARD_DETECTED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->MULTIPLE_CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->aaa000:I

    return v0
.end method
