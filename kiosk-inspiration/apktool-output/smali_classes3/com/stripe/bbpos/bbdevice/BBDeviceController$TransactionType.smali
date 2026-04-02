.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CASH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field public static final enum CASHBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field public static final enum GOODS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field public static final enum INQUIRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field public static final enum PAYMENT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field public static final enum REFUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field public static final enum REVERSAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field public static final enum SERVICES:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field public static final enum TRANSFER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field public static final enum VOID:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v1, "GOODS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->GOODS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v2, "SERVICES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->SERVICES:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v3, "CASHBACK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->CASHBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v4, "INQUIRY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->INQUIRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v5, "TRANSFER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->TRANSFER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v6, "PAYMENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->PAYMENT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v7, "REFUND"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->REFUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 8
    new-instance v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v8, "VOID"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->VOID:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 9
    new-instance v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v9, "REVERSAL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->REVERSAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 10
    new-instance v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-string v10, "CASH"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->CASH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 11
    filled-new-array/range {v0 .. v9}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->aaa000:I

    return v0
.end method
