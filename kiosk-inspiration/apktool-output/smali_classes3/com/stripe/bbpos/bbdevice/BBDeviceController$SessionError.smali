.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FIRMWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

.field public static final enum INVALID_SESSION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

.field public static final enum INVALID_VENDOR_TOKEN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

.field public static final enum SESSION_NOT_INITIALIZED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    const-string v1, "FIRMWARE_NOT_SUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->FIRMWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    const-string v2, "SESSION_NOT_INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->SESSION_NOT_INITIALIZED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    const-string v3, "INVALID_VENDOR_TOKEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->INVALID_VENDOR_TOKEN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    const-string v4, "INVALID_SESSION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->INVALID_SESSION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->aaa000:I

    return v0
.end method
