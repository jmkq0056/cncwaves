.class synthetic Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa000zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc035zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic aaa000:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;->values()[Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa000zz;->aaa000:[I

    :try_start_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
