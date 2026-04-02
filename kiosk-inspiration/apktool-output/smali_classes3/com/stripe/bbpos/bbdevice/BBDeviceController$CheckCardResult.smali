.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckCardResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD_SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field public static final enum CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field public static final enum INSERTED_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field public static final enum MAG_HEAD_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field public static final enum MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field public static final enum MSR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field public static final enum NOT_ICC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field public static final enum NO_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field public static final enum TAP_CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field public static final enum USE_ICC_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v1, "NO_CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->NO_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v2, "INSERTED_CARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->INSERTED_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v3, "NOT_ICC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->NOT_ICC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v4, "BAD_SWIPE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->BAD_SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v5, "MSR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MSR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v6, "MAG_HEAD_FAIL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MAG_HEAD_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v7, "USE_ICC_CARD"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->USE_ICC_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 8
    new-instance v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v8, "TAP_CARD_DETECTED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->TAP_CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 9
    new-instance v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v9, "MANUAL_PAN_ENTRY"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 10
    new-instance v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    const-string v10, "CARD_NOT_SUPPORTED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    .line 11
    filled-new-array/range {v0 .. v9}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->aaa000:I

    return v0
.end method
