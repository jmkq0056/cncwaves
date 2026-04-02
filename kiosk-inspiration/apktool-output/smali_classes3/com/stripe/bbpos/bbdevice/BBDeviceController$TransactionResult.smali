.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPLICATION_BLOCKED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum APPROVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum CANCELED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum CANCELED_OR_TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum CAPK_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum CARD_BLOCKED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum CARD_SCHEME_NOT_MATCHED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum CONDITION_NOT_SATISFIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum DECLINED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum DEVICE_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum ICC_CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum INVALID_ICC_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum MISSING_MANDATORY_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum NOT_ICC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum NO_EMV_APPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum SELECT_APP_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum TERMINATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field public static final enum TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "APPROVED"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->APPROVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 2
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "TERMINATED"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->TERMINATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 3
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "DECLINED"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->DECLINED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 4
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "CANCELED_OR_TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CANCELED_OR_TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 5
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "CAPK_FAIL"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CAPK_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 6
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "NOT_ICC"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->NOT_ICC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 7
    new-instance v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "CARD_BLOCKED"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CARD_BLOCKED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 8
    new-instance v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "DEVICE_ERROR"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->DEVICE_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 9
    new-instance v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "SELECT_APP_FAIL"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->SELECT_APP_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 10
    new-instance v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "CARD_NOT_SUPPORTED"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 11
    new-instance v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "MISSING_MANDATORY_DATA"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->MISSING_MANDATORY_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 12
    new-instance v12, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "NO_EMV_APPS"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13, v13}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->NO_EMV_APPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 13
    new-instance v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "INVALID_ICC_DATA"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14, v14}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->INVALID_ICC_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 14
    new-instance v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "CONDITION_NOT_SATISFIED"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v15}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CONDITION_NOT_SATISFIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 15
    new-instance v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v0, "APPLICATION_BLOCKED"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->APPLICATION_BLOCKED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 16
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v1, "ICC_CARD_REMOVED"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ICC_CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 17
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v2, "CARD_SCHEME_NOT_MATCHED"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CARD_SCHEME_NOT_MATCHED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 18
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v2, "CANCELED"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CANCELED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 19
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    const-string v2, "TIMEOUT"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    .line 20
    filled-new-array/range {v1 .. v19}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->aaa000:I

    return v0
.end method
