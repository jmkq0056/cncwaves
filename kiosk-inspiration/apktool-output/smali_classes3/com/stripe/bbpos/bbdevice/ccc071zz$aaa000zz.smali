.class synthetic Lcom/stripe/bbpos/bbdevice/ccc071zz$aaa000zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc071zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic aaa000:[I

.field static final synthetic aaa001:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CardScheme;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CardScheme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc071zz$aaa000zz;->aaa001:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CardScheme;->VISA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CardScheme;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc071zz$aaa000zz;->aaa001:[I

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CardScheme;->MASTER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CardScheme;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc071zz$aaa000zz;->aaa001:[I

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CardScheme;->UNIONPAY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CardScheme;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/stripe/bbpos/bbdevice/ccc071zz$aaa000zz;->aaa000:[I

    :try_start_3
    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc071zz$aaa000zz;->aaa000:[I

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc071zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc071zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
