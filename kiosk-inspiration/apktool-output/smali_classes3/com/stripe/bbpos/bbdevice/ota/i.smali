.class final Lcom/stripe/bbpos/bbdevice/ota/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljavax/crypto/spec/IvParameterSpec;

.field private static final b:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/i;->a:Ljavax/crypto/spec/IvParameterSpec;

    .line 2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/i;->b:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method static a([B[B)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 17
    array-length v1, p0

    if-eqz v1, :cond_3

    array-length v1, p0

    const/16 v2, 0x10

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 20
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    array-length v1, p1

    if-eq v1, v2, :cond_2

    array-length v1, p1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_2

    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    return-object v0

    .line 27
    :cond_2
    :try_start_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/w$a;->b:Lcom/stripe/bbpos/bbdevice/ota/w$a;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/w$b;->b:Lcom/stripe/bbpos/bbdevice/ota/w$b;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/w;->a([B[B[BLcom/stripe/bbpos/bbdevice/ota/w$a;Lcom/stripe/bbpos/bbdevice/ota/w$b;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method static a([B[B[B)[B
    .locals 3

    const/16 v0, 0x10

    if-nez p2, :cond_0

    .line 1
    new-array p2, v0, [B

    .line 3
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    return-object v2

    :cond_1
    if-eqz p0, :cond_5

    .line 6
    array-length v1, p0

    if-eqz v1, :cond_5

    array-length v1, p0

    rem-int/2addr v1, v0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    .line 9
    array-length v1, p1

    if-nez v1, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    array-length v1, p1

    if-eq v1, v0, :cond_4

    array-length v0, p1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    return-object v2

    .line 16
    :cond_4
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/w$a;->a:Lcom/stripe/bbpos/bbdevice/ota/w$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/w$b;->b:Lcom/stripe/bbpos/bbdevice/ota/w$b;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/w;->a([B[B[BLcom/stripe/bbpos/bbdevice/ota/w$a;Lcom/stripe/bbpos/bbdevice/ota/w$b;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_5
    :goto_0
    return-object v2
.end method

.method static b([B[B)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    array-length v1, p0

    if-eqz v1, :cond_3

    array-length v1, p0

    const/16 v2, 0x10

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 4
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    array-length v1, p1

    if-eq v1, v2, :cond_2

    array-length v1, p1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_2

    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    return-object v0

    .line 11
    :cond_2
    :try_start_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/w$a;->a:Lcom/stripe/bbpos/bbdevice/ota/w$a;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/w$b;->a:Lcom/stripe/bbpos/bbdevice/ota/w$b;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/w;->a([B[B[BLcom/stripe/bbpos/bbdevice/ota/w$a;Lcom/stripe/bbpos/bbdevice/ota/w$b;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method
