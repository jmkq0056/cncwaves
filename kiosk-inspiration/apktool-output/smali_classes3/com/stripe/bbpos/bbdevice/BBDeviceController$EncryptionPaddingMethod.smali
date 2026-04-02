.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionPaddingMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PKCS7:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

.field public static final enum ZERO_PADDING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    const-string v1, "ZERO_PADDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->ZERO_PADDING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    const-string v2, "PKCS7"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->PKCS7:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    .line 3
    filled-new-array {v0, v1}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->aaa000:I

    return v0
.end method
