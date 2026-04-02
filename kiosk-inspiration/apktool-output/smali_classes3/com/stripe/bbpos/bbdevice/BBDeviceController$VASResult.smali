.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VASResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INCORRECT_COMMAND_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

.field public static final enum NON_VAS_CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

.field public static final enum SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

.field public static final enum UNSUPPORTED_APP_VERSION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

.field public static final enum USER_INTERVENTION_REQUIRED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

.field public static final enum VAS_DATA_NOT_ACTIVATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

.field public static final enum VAS_DATA_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    const-string v2, "VAS_DATA_NOT_FOUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->VAS_DATA_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    const-string v3, "VAS_DATA_NOT_ACTIVATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->VAS_DATA_NOT_ACTIVATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    const-string v4, "USER_INTERVENTION_REQUIRED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->USER_INTERVENTION_REQUIRED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    const-string v5, "INCORRECT_COMMAND_DATA"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->INCORRECT_COMMAND_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    const-string v6, "UNSUPPORTED_APP_VERSION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->UNSUPPORTED_APP_VERSION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    const-string v7, "NON_VAS_CARD_DETECTED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->NON_VAS_CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->aaa000:I

    return v0
.end method
