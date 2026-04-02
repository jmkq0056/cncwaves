.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactlessStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CARD_READ_SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

.field public static final enum IDLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

.field public static final enum NOT_READY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

.field public static final enum PROCESSING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

.field public static final enum PROCESSING_ERROR_OR_CARD_NOT_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

.field public static final enum READY_TO_READ:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->NOT_READY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    const-string v2, "IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->IDLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    const-string v3, "READY_TO_READ"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->READY_TO_READ:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    const-string v4, "PROCESSING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->PROCESSING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    const-string v5, "CARD_READ_SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->CARD_READ_SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    const-string v6, "PROCESSING_ERROR_OR_CARD_NOT_REMOVED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->PROCESSING_ERROR_OR_CARD_NOT_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->aaa000:I

    return v0
.end method
