.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionKeySource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

.field public static final enum BY_DEVICE_16_BYTES_RANDOM_NUMBER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

.field public static final enum BY_DEVICE_8_BYTES_RANDOM_NUMBER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

.field public static final enum BY_SERVER_16_BYTES_WORKING_KEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

.field public static final enum BY_SERVER_8_BYTES_WORKING_KEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

.field public static final enum STORED_IN_DEVICE_16_BYTES_KEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    const-string v1, "BY_DEVICE_16_BYTES_RANDOM_NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BY_DEVICE_16_BYTES_RANDOM_NUMBER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    const-string v2, "BY_DEVICE_8_BYTES_RANDOM_NUMBER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BY_DEVICE_8_BYTES_RANDOM_NUMBER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    const-string v3, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BOTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    const-string v4, "BY_SERVER_16_BYTES_WORKING_KEY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BY_SERVER_16_BYTES_WORKING_KEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    const-string v5, "BY_SERVER_8_BYTES_WORKING_KEY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BY_SERVER_8_BYTES_WORKING_KEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    const-string v6, "STORED_IN_DEVICE_16_BYTES_KEY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->STORED_IN_DEVICE_16_BYTES_KEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->aaa000:I

    return v0
.end method
