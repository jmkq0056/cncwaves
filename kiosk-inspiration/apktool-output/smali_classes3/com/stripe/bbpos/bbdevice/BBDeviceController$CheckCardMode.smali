.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckCardMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

.field public static final enum INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

.field public static final enum MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

.field public static final enum QR_CODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

.field public static final enum SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

.field public static final enum SWIPE_OR_INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

.field public static final enum SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

.field public static final enum SWIPE_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

.field public static final enum TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v1, "SWIPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v2, "INSERT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v3, "TAP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v4, "SWIPE_OR_INSERT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v5, "SWIPE_OR_TAP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v6, "SWIPE_OR_INSERT_OR_TAP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v7, "INSERT_OR_TAP"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 8
    new-instance v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v8, "MANUAL_PAN_ENTRY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 9
    new-instance v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v9, "QR_CODE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->QR_CODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 10
    filled-new-array/range {v0 .. v8}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->aaa000:I

    return v0
.end method
