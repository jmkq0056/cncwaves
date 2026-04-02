.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIO:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BLUETOOTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

.field public static final enum NONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

.field public static final enum SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

.field public static final enum TEST_CHANNEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

.field public static final enum USB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->NONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    const-string v2, "AUDIO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->AUDIO:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    .line 4
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    const-string v3, "BLUETOOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->BLUETOOTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    .line 5
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    const-string v4, "USB"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->USB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    .line 6
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    const-string v5, "SERIAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    .line 7
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    const-string v6, "TEST_CHANNEL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->TEST_CHANNEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    .line 8
    filled-new-array/range {v0 .. v5}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->aaa000:I

    return v0
.end method
