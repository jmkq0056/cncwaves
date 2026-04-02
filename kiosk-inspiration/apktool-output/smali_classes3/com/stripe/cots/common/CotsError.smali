.class public final enum Lcom/stripe/cots/common/CotsError;
.super Ljava/lang/Enum;
.source "CotsError.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/cots/common/CotsError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/cots/common/CotsError;",
        "",
        "message",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "NONE",
        "DISCOVERY_MISSING_KEY_CERTIFICATES",
        "DISCOVERY_UNSUPPORTED_ANDROID_VERSION",
        "DISCOVERY_MISSING_NFC_READER",
        "DISCOVERY_UNTRUSTED_HARDWARE",
        "DISCOVERY_UNTRUSTED_SOFTWARE",
        "ATTESTATION_DEVICE_TAMPERED",
        "ATTESTATION_API_CONNECTION_ERROR",
        "ATTESTATION_SERVER_ERROR",
        "ATTESTATION_API_RESPONSE_DECODING",
        "UNEXPECTED_ERROR",
        "DISCOVERY_DEBUG_NOT_ALLOWED",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/cots/common/CotsError;

.field public static final enum ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/common/CotsError;

.field public static final enum ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/common/CotsError;

.field public static final enum ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/common/CotsError;

.field public static final enum ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/common/CotsError;

.field public static final enum DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/common/CotsError;

.field public static final enum DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/common/CotsError;

.field public static final enum DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/common/CotsError;

.field public static final enum DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/common/CotsError;

.field public static final enum DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/common/CotsError;

.field public static final enum DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/common/CotsError;

.field public static final enum NONE:Lcom/stripe/cots/common/CotsError;

.field public static final enum UNEXPECTED_ERROR:Lcom/stripe/cots/common/CotsError;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/cots/common/CotsError;
    .locals 12

    sget-object v0, Lcom/stripe/cots/common/CotsError;->NONE:Lcom/stripe/cots/common/CotsError;

    sget-object v1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/common/CotsError;

    sget-object v2, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/common/CotsError;

    sget-object v3, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/common/CotsError;

    sget-object v4, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/common/CotsError;

    sget-object v5, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/common/CotsError;

    sget-object v6, Lcom/stripe/cots/common/CotsError;->ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/common/CotsError;

    sget-object v7, Lcom/stripe/cots/common/CotsError;->ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/common/CotsError;

    sget-object v8, Lcom/stripe/cots/common/CotsError;->ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/common/CotsError;

    sget-object v9, Lcom/stripe/cots/common/CotsError;->ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/common/CotsError;

    sget-object v10, Lcom/stripe/cots/common/CotsError;->UNEXPECTED_ERROR:Lcom/stripe/cots/common/CotsError;

    sget-object v11, Lcom/stripe/cots/common/CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/common/CotsError;

    filled-new-array/range {v0 .. v11}, [Lcom/stripe/cots/common/CotsError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->NONE:Lcom/stripe/cots/common/CotsError;

    .line 7
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/4 v1, 0x1

    const-string v2, "Unable to generate keypair certificates"

    const-string v3, "DISCOVERY_MISSING_KEY_CERTIFICATES"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/common/CotsError;

    .line 8
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/4 v1, 0x2

    const-string v2, "Android version not supported. Upgrade device to Android 11+"

    const-string v3, "DISCOVERY_UNSUPPORTED_ANDROID_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/common/CotsError;

    .line 9
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/4 v1, 0x3

    const-string v2, "Device does not have NFC"

    const-string v3, "DISCOVERY_MISSING_NFC_READER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/common/CotsError;

    .line 10
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/4 v1, 0x4

    const-string v2, "Device does not use Trusted Execution Environment"

    const-string v3, "DISCOVERY_UNTRUSTED_HARDWARE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/common/CotsError;

    .line 11
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/4 v1, 0x5

    const-string v2, "Tap to Pay reader not operating in secure process"

    const-string v3, "DISCOVERY_UNTRUSTED_SOFTWARE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/common/CotsError;

    .line 12
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/4 v1, 0x6

    const-string v2, "Device is tampered"

    const-string v3, "ATTESTATION_DEVICE_TAMPERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/common/CotsError;

    .line 13
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/4 v1, 0x7

    const-string v2, "There was an issue connecting to backend APIs. Are you connected to the internet?"

    const-string v3, "ATTESTATION_API_CONNECTION_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/common/CotsError;

    .line 14
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/16 v1, 0x8

    const-string v2, "Received internal error response from server"

    const-string v3, "ATTESTATION_SERVER_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/common/CotsError;

    .line 15
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/16 v1, 0x9

    const-string v2, "Error while parsing server response"

    const-string v3, "ATTESTATION_API_RESPONSE_DECODING"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/common/CotsError;

    .line 16
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/16 v1, 0xa

    const-string v2, "Unexpected error occurred"

    const-string v3, "UNEXPECTED_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->UNEXPECTED_ERROR:Lcom/stripe/cots/common/CotsError;

    .line 17
    new-instance v0, Lcom/stripe/cots/common/CotsError;

    const/16 v1, 0xb

    .line 18
    const-string v2, "Debuggable applications are not supported in the production version of the Tap to Pay reader. Please use a simulated version of the reader by setting `DiscoveryConfiguration.isSimulated` to true."

    .line 17
    const-string v3, "DISCOVERY_DEBUG_NOT_ALLOWED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/cots/common/CotsError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/common/CotsError;

    invoke-static {}, Lcom/stripe/cots/common/CotsError;->$values()[Lcom/stripe/cots/common/CotsError;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/common/CotsError;->$VALUES:[Lcom/stripe/cots/common/CotsError;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/common/CotsError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/cots/common/CotsError;->message:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/cots/common/CotsError;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/cots/common/CotsError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/cots/common/CotsError;
    .locals 1

    const-class v0, Lcom/stripe/cots/common/CotsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/cots/common/CotsError;

    return-object p0
.end method

.method public static values()[Lcom/stripe/cots/common/CotsError;
    .locals 1

    sget-object v0, Lcom/stripe/cots/common/CotsError;->$VALUES:[Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/cots/common/CotsError;

    return-object v0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/cots/common/CotsError;->message:Ljava/lang/String;

    return-object v0
.end method
