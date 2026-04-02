.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES_CBC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

.field public static final enum AES_CMAC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

.field public static final enum AES_ECB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

.field public static final enum MAC_ANSI_X9_19:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

.field public static final enum MAC_ANSI_X9_9:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

.field public static final enum MAC_METHOD_1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

.field public static final enum MAC_METHOD_2:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

.field public static final enum TDES_CBC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

.field public static final enum TDES_ECB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    const-string v1, "TDES_ECB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->TDES_ECB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    const-string v2, "TDES_CBC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->TDES_CBC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    const-string v3, "AES_ECB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->AES_ECB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    const-string v4, "AES_CBC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->AES_CBC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    const-string v5, "AES_CMAC"

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->AES_CMAC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    const-string v8, "MAC_ANSI_X9_9"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_ANSI_X9_9:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    const-string v8, "MAC_ANSI_X9_19"

    const/4 v10, 0x6

    invoke-direct {v6, v8, v10, v9}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_ANSI_X9_19:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    move v8, v7

    .line 8
    new-instance v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    const-string v9, "MAC_METHOD_1"

    const/4 v11, 0x7

    invoke-direct {v7, v9, v11, v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_METHOD_1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    move v9, v8

    .line 9
    new-instance v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    const-string v10, "MAC_METHOD_2"

    invoke-direct {v8, v10, v9, v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_METHOD_2:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    .line 10
    filled-new-array/range {v0 .. v8}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->aaa000:I

    return v0
.end method
