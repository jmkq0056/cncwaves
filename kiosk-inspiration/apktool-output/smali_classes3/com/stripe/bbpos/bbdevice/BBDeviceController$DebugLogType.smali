.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DebugLogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALLBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

.field public static final enum EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

.field public static final enum FUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    const-string v1, "FUNCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    const-string v2, "CALLBACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    const-string v3, "EXTRA_DEBUG_MESSAGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    .line 4
    filled-new-array {v0, v1, v2}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->aaa000:I

    return v0
.end method
