.class public final synthetic Lcom/stripe/cots/common/CotsErrorKt$WhenMappings;
.super Ljava/lang/Object;
.source "CotsError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/common/CotsErrorKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/stripe/cots/common/CotsError;->values()[Lcom/stripe/cots/common/CotsError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/stripe/cots/common/CotsError;->NONE:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/stripe/cots/common/CotsError;->ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/stripe/cots/common/CotsError;->ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/stripe/cots/common/CotsError;->ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/stripe/cots/common/CotsError;->ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/stripe/cots/common/CotsError;->UNEXPECTED_ERROR:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    sput-object v0, Lcom/stripe/cots/common/CotsErrorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
