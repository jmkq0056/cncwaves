.class public final Lcom/stripe/hardware/emv/TlvMap;
.super Ljava/lang/Object;
.source "TlvMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/emv/TlvMap$Companion;,
        Lcom/stripe/hardware/emv/TlvMap$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlvMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlvMap.kt\ncom/stripe/hardware/emv/TlvMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,520:1\n1#2:521\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010(\n\u0002\u0010&\n\u0002\u0008\u0003\u0018\u0000 82\u00020\u0001:\u00018B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010.\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\u0004J\u0013\u00100\u001a\u00020\u001e2\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u00102\u001a\u00020\u001eH\u0002J\u0013\u00103\u001a\u0004\u0018\u00010\u00042\u0006\u0010/\u001a\u00020\u0004H\u0086\u0002J\u0018\u00104\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040605J\u0006\u00107\u001a\u00020\u0004R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000cR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0011\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000cR\u001f\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u000cR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001fR\u0019\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0013\u0010$\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u000cR\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010&\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020+8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u00a8\u00069"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/TlvMap;",
        "",
        "map",
        "",
        "",
        "(Ljava/util/Map;)V",
        "applicationId",
        "Lcom/stripe/hardware/emv/ApplicationId;",
        "getApplicationId",
        "()Lcom/stripe/hardware/emv/ApplicationId;",
        "applicationName",
        "getApplicationName",
        "()Ljava/lang/String;",
        "cardholderName",
        "getCardholderName",
        "cardholderVerificationMethod",
        "getCardholderVerificationMethod",
        "dedicatedFileName",
        "getDedicatedFileName",
        "expMonthAndYear",
        "Lkotlin/Pair;",
        "getExpMonthAndYear",
        "()Lkotlin/Pair;",
        "first6",
        "getFirst6",
        "interfaceType",
        "Lcom/stripe/hardware/emv/InterfaceType;",
        "getInterfaceType",
        "()Lcom/stripe/hardware/emv/InterfaceType;",
        "isMobileWallet",
        "",
        "()Z",
        "languagePreferences",
        "",
        "getLanguagePreferences",
        "()Ljava/util/List;",
        "last4",
        "getLast4",
        "size",
        "",
        "getSize",
        "()I",
        "sourceType",
        "Lcom/stripe/hardware/emv/SourceType;",
        "getSourceType",
        "()Lcom/stripe/hardware/emv/SourceType;",
        "contains",
        "tag",
        "equals",
        "other",
        "evaluateMobileWalletIdentifier",
        "get",
        "getTags",
        "",
        "",
        "toBlob",
        "Companion",
        "public_release"
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
.field private static final AMEX_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

.field private static final DISCOVER_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EFTPOS_AU_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTRY_MODE_CONTACT:Ljava/lang/String; = "05"

.field public static final ENTRY_MODE_CONTACTLESS:Ljava/lang/String; = "07"

.field private static final MASTERCARD_CARD_FORM_FACTORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MASTERCARD_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SET_BUZZER_DISABLED_VALUE:Ljava/lang/String; = "01"

.field public static final SET_BUZZER_ENABLED_VALUE:Ljava/lang/String; = "00"

.field public static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "5F57"

.field public static final TAG_ACQUIRER_IDENTIFIER:Ljava/lang/String; = "9F01"

.field public static final TAG_ADDITIONAL_TERMINAL_CAPABILITIES:Ljava/lang/String; = "9F40"

.field public static final TAG_ADF_NAME:Ljava/lang/String; = "4F"

.field public static final TAG_AMEX_MOBILE_WALLET_IDENTIFIER:Ljava/lang/String; = "9F79"

.field public static final TAG_AMOUNT_AUTHORIZED:Ljava/lang/String; = "9F02"

.field public static final TAG_APPLICATION_CRYPTOGRAM:Ljava/lang/String; = "9F26"

.field public static final TAG_APPLICATION_ID:Ljava/lang/String; = "9F06"

.field public static final TAG_APPLICATION_INTERCHANGE_PROFILE:Ljava/lang/String; = "82"

.field public static final TAG_APPLICATION_LABEL:Ljava/lang/String; = "50"

.field public static final TAG_APPLICATION_PAN_SEQUENCE_NUMBER:Ljava/lang/String; = "5F34"

.field public static final TAG_APPLICATION_PREFERRED_NAME:Ljava/lang/String; = "9F12"

.field public static final TAG_APPLICATION_PRIMARY_ACCOUNT_NUMBER:Ljava/lang/String; = "5A"

.field public static final TAG_APPLICATION_TRANSACTION_COUNTER:Ljava/lang/String; = "9F36"

.field public static final TAG_APPLICATION_USAGE_CONTROL:Ljava/lang/String; = "9F07"

.field public static final TAG_APPLICATION_VERSION_NUMBER:Ljava/lang/String; = "9F08"

.field public static final TAG_AUTH_RESPONSE_CODE:Ljava/lang/String; = "8A"

.field public static final TAG_BBPOS_PAN_FIRST_SIX_AND_LAST_FOUR:Ljava/lang/String; = "C4"

.field public static final TAG_BLUETOOTH_DISCOVERY_TIMEOUT:Ljava/lang/String; = "DF837B"

.field public static final TAG_BUZZER_SOUND_ENABLED:Ljava/lang/String; = "DF8424"

.field public static final TAG_CARDHOLDER_NAME:Ljava/lang/String; = "5F20"

.field public static final TAG_CASHBACK_AMOUNT:Ljava/lang/String; = "9F03"

.field public static final TAG_CONFIG_HASH:Ljava/lang/String; = "DF8438"

.field public static final TAG_CONTACTLESS_READER_CAPABILITIES:Ljava/lang/String; = "9F6D"

.field public static final TAG_CRYPTOGRAM_INFORMATION_DATA:Ljava/lang/String; = "9F27"

.field public static final TAG_CUSTOMER_VERIFICATION_METHOD_RESULTS:Ljava/lang/String; = "9F34"

.field public static final TAG_CUSTOM_BLUETOOTH_NAME_PREFIX:Ljava/lang/String; = "DF8408"

.field public static final TAG_CUSTOM_BLUETOOTH_SERIAL_SUFFIX:Ljava/lang/String; = "DF8409"

.field public static final TAG_DDOL:Ljava/lang/String; = "9F49"

.field public static final TAG_DEDICATED_FILE_NAME:Ljava/lang/String; = "84"

.field public static final TAG_DOMESTIC_DEBIT_AID_LIST:Ljava/lang/String; = "DF8926"

.field public static final TAG_EXPIRATION_DATE:Ljava/lang/String; = "5F24"

.field public static final TAG_FIRMWARE_FALLBACK_ENABLED:Ljava/lang/String; = "DF8407"

.field public static final TAG_FIRMWARE_FORCE_CHIP_ENABLED:Ljava/lang/String; = "DF840D"

.field public static final TAG_FORM_FACTOR_INDICATOR:Ljava/lang/String; = "9F6E"

.field public static final TAG_ICC_TRANSACTION_BEEP_ENABLED:Ljava/lang/String; = "DF8421"

.field public static final TAG_ISSUER_APPLICATION_DATA:Ljava/lang/String; = "9F10"

.field public static final TAG_KEYPAD_EVENT_BEEP_ENABLED:Ljava/lang/String; = "DF842C"

.field public static final TAG_LANGUAGE_PREFERENCE:Ljava/lang/String; = "5F2D"

.field public static final TAG_MERCHANT_IDENTIFIER:Ljava/lang/String; = "9F16"

.field public static final TAG_MERCHANT_NAME:Ljava/lang/String; = "9F4E"

.field public static final TAG_MOBILE_CVM_RESULTS:Ljava/lang/String; = "9F71"

.field public static final TAG_MSR_PIN_ENTRY_TIMEOUT:Ljava/lang/String; = "DF8403"

.field public static final TAG_NORMAL_MODE_TIMEOUT:Ljava/lang/String; = "DF8370"

.field public static final TAG_PIN_DATA:Ljava/lang/String; = "99"

.field public static final TAG_POS_ENTRY_MODE:Ljava/lang/String; = "9F39"

.field public static final TAG_SERVICE_CODE:Ljava/lang/String; = "5F30"

.field public static final TAG_SPOC_MODE_ENABLED:Ljava/lang/String; = "DF866B"

.field public static final TAG_STANDBY_MODE_TIMEOUT:Ljava/lang/String; = "DF8367"

.field public static final TAG_TDOL:Ljava/lang/String; = "97"

.field public static final TAG_TERMINAL_APPLICATION_VERSION_NUMBER:Ljava/lang/String; = "9F09"

.field public static final TAG_TERMINAL_CAPABILITIES:Ljava/lang/String; = "9F33"

.field public static final TAG_TERMINAL_COUNTRY_CODE:Ljava/lang/String; = "9F1A"

.field public static final TAG_TERMINAL_FLOOR_LIMIT:Ljava/lang/String; = "9F1B"

.field public static final TAG_TERMINAL_IDENTIFICATION:Ljava/lang/String; = "9F1C"

.field public static final TAG_TERMINAL_SERIAL_NUMBER:Ljava/lang/String; = "9F1E"

.field public static final TAG_TERMINAL_TYPE:Ljava/lang/String; = "9F35"

.field public static final TAG_TERMINAL_VERIFICATION_RESULTS:Ljava/lang/String; = "95"

.field public static final TAG_TRACK_2_DATA:Ljava/lang/String; = "57"

.field public static final TAG_TRANSACTION_CURRENCY_CODE:Ljava/lang/String; = "5F2A"

.field public static final TAG_TRANSACTION_CURRENCY_EXPONENT:Ljava/lang/String; = "5F36"

.field public static final TAG_TRANSACTION_DATE:Ljava/lang/String; = "9A"

.field public static final TAG_TRANSACTION_SEQUENCE_COUNTER:Ljava/lang/String; = "9F41"

.field public static final TAG_TRANSACTION_STATUS_INFORMATION:Ljava/lang/String; = "9B"

.field public static final TAG_TRANSACTION_TIME:Ljava/lang/String; = "9F21"

.field public static final TAG_TRANSACTION_TYPE:Ljava/lang/String; = "9C"

.field public static final TAG_UNPREDICTABLE_NUMBER:Ljava/lang/String; = "9F37"

.field public static final TAG_VISA_DYNAMIC_READER_LIMIT:Ljava/lang/String; = "DFDF09"

.field public static final TAG_VISA_MASTERCARD_MOBILE_WALLET_IDENTIFIER:Ljava/lang/String; = "9F19"

.field private static final VISA_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/stripe/hardware/emv/TlvMap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/hardware/emv/TlvMap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    const/4 v0, 0x2

    .line 424
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "00"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "20"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/stripe/hardware/emv/TlvMap;->MASTERCARD_CARD_FORM_FACTORS:Ljava/util/List;

    const/4 v1, 0x5

    .line 428
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "040010030273"

    aput-object v2, v1, v3

    .line 429
    const-string v2, "040010075001"

    aput-object v2, v1, v4

    .line 430
    const-string v2, "040010043095"

    aput-object v2, v1, v0

    const/4 v2, 0x3

    .line 431
    const-string v5, "040010069887"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    .line 432
    const-string v5, "040010077056"

    aput-object v5, v1, v2

    .line 427
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/stripe/hardware/emv/TlvMap;->VISA_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    .line 434
    const-string v1, "594B"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/stripe/hardware/emv/TlvMap;->AMEX_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    .line 435
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "000000000001"

    aput-object v1, v0, v3

    const-string v1, "000000000003"

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/TlvMap;->DISCOVER_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    .line 436
    const-string v0, "006110030273"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/TlvMap;->EFTPOS_AU_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    .line 439
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/TlvMap;->MASTERCARD_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAMEX_MOBILE_WALLET_IDENTIFIERS$cp()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->AMEX_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getDISCOVER_MOBILE_WALLET_IDENTIFIERS$cp()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->DISCOVER_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getEFTPOS_AU_MOBILE_WALLET_IDENTIFIERS$cp()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->EFTPOS_AU_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMASTERCARD_CARD_FORM_FACTORS$cp()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->MASTERCARD_CARD_FORM_FACTORS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMASTERCARD_MOBILE_WALLET_IDENTIFIERS$cp()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->MASTERCARD_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getVISA_MOBILE_WALLET_IDENTIFIERS$cp()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->VISA_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    return-object v0
.end method

.method private final evaluateMobileWalletIdentifier()Z
    .locals 4

    .line 321
    invoke-virtual {p0}, Lcom/stripe/hardware/emv/TlvMap;->getApplicationId()Lcom/stripe/hardware/emv/ApplicationId;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/stripe/hardware/emv/ApplicationIdKt;->getCardBrandForApplication(Lcom/stripe/hardware/emv/ApplicationId;)Lcom/stripe/misc/CardBrand;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 322
    :cond_0
    sget-object v2, Lcom/stripe/misc/CardBrand;->AMEX:Lcom/stripe/misc/CardBrand;

    if-ne v0, v2, :cond_1

    .line 323
    const-string v2, "9F79"

    invoke-virtual {p0, v2}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 325
    :cond_1
    const-string v2, "9F19"

    invoke-virtual {p0, v2}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    :goto_0
    sget-object v3, Lcom/stripe/hardware/emv/TlvMap$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/stripe/misc/CardBrand;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    return v1

    .line 333
    :cond_2
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->EFTPOS_AU_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    goto :goto_1

    .line 332
    :cond_3
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->DISCOVER_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    goto :goto_1

    .line 331
    :cond_4
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->MASTERCARD_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    goto :goto_1

    .line 329
    :cond_5
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->AMEX_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    goto :goto_1

    .line 330
    :cond_6
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->VISA_MOBILE_WALLET_IDENTIFIERS:Ljava/util/List;

    .line 337
    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_7
    :goto_2
    return v1
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 27
    instance-of v0, p1, Lcom/stripe/hardware/emv/TlvMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    check-cast p1, Lcom/stripe/hardware/emv/TlvMap;

    iget-object p1, p1, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getApplicationId()Lcom/stripe/hardware/emv/ApplicationId;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    const-string v1, "9F06"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/hardware/emv/ApplicationIdKt;->getApplicationIdOrNull(Ljava/lang/String;)Lcom/stripe/hardware/emv/ApplicationId;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    const-string v1, "9F12"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    iget-object v2, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-static {v2, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/hardware/emv/TlvMap$Companion;->fromHexToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    const-string v1, "50"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 45
    :cond_2
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    iget-object v2, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-static {v2, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/hardware/emv/TlvMap$Companion;->fromHexToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/stripe/hardware/emv/TlvMap;->getDedicatedFileName()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_2
    const-string v1, "Stripe PIN Credi"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    const-string v0, "Stripe PIN Credit"

    :cond_4
    return-object v0
.end method

.method public final getCardholderName()Ljava/lang/String;
    .locals 2

    .line 309
    const-string v0, "5F20"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {v1, v0}, Lcom/stripe/hardware/emv/TlvMap$Companion;->fromHexToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCardholderVerificationMethod()Ljava/lang/String;
    .locals 5

    .line 93
    const-string v0, "9F34"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v1, v0}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 97
    aget-byte v2, v0, v1

    .line 99
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->first([B)B

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    .line 102
    sget-object v3, Lcom/stripe/hardware/emv/CvmType;->Companion:Lcom/stripe/hardware/emv/CvmType$Companion;

    invoke-virtual {v3, v0}, Lcom/stripe/hardware/emv/CvmType$Companion;->fromCode(I)Lcom/stripe/hardware/emv/CvmType;

    move-result-object v0

    sget-object v3, Lcom/stripe/hardware/emv/TlvMap$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/hardware/emv/CvmType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_2

    const/4 v1, 0x4

    if-eq v3, v1, :cond_1

    const/4 v1, 0x5

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    sget-object v1, Lcom/stripe/hardware/emv/CvmStatus;->SUCCESS:Lcom/stripe/hardware/emv/CvmStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/CvmStatus;->ordinal()I

    move-result v1

    if-eq v2, v1, :cond_3

    sget-object v0, Lcom/stripe/hardware/emv/CvmType;->FAILURE:Lcom/stripe/hardware/emv/CvmType;

    goto :goto_0

    .line 106
    :cond_2
    sget-object v1, Lcom/stripe/hardware/emv/CvmStatus;->UNKNOWN:Lcom/stripe/hardware/emv/CvmStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/CvmStatus;->ordinal()I

    move-result v1

    if-eq v2, v1, :cond_3

    sget-object v0, Lcom/stripe/hardware/emv/CvmType;->FAILURE:Lcom/stripe/hardware/emv/CvmType;

    .line 112
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/CvmType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDedicatedFileName()Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    const-string v1, "4F"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    const-string v1, "84"

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final getExpMonthAndYear()Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    const-string v0, "5F24"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v1, Lkotlin/Pair;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "substring(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFirst6()Ljava/lang/String;
    .locals 4

    .line 304
    const-string v0, "C4"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    .line 305
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public final getInterfaceType()Lcom/stripe/hardware/emv/InterfaceType;
    .locals 2

    .line 313
    const-string v0, "9F39"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v1, "05"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/stripe/hardware/emv/InterfaceType;->CONTACT:Lcom/stripe/hardware/emv/InterfaceType;

    return-object v0

    .line 315
    :cond_0
    const-string v1, "07"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/hardware/emv/InterfaceType;->CONTACTLESS:Lcom/stripe/hardware/emv/InterfaceType;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLanguagePreferences()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    const-string v1, "5F2D"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 70
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    iget-object v2, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-static {v2, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/hardware/emv/TlvMap$Companion;->fromHexToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLast4()Ljava/lang/String;
    .locals 7

    .line 298
    const-string v0, "C4"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 299
    const-string v2, "F"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 300
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getSourceType()Lcom/stripe/hardware/emv/SourceType;
    .locals 5

    .line 77
    invoke-virtual {p0}, Lcom/stripe/hardware/emv/TlvMap;->getDedicatedFileName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->INTERAC:Lcom/stripe/hardware/emv/ApplicationId;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/ApplicationId;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/stripe/hardware/emv/SourceType;->INTERAC_PRESENT:Lcom/stripe/hardware/emv/SourceType;

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/stripe/hardware/emv/SourceType;->CARD_PRESENT:Lcom/stripe/hardware/emv/SourceType;

    return-object v0
.end method

.method public final getTags()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final isMobileWallet()Z
    .locals 10

    .line 145
    invoke-direct {p0}, Lcom/stripe/hardware/emv/TlvMap;->evaluateMobileWalletIdentifier()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 151
    :cond_0
    const-string v0, "9F39"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "07"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "9F34"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "410000"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/hardware/emv/TlvMap;->getApplicationId()Lcom/stripe/hardware/emv/ApplicationId;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/stripe/hardware/emv/ApplicationIdKt;->getCardBrandForApplication(Lcom/stripe/hardware/emv/ApplicationId;)Lcom/stripe/misc/CardBrand;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/stripe/hardware/emv/TlvMap$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/stripe/misc/CardBrand;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_1
    const/4 v2, 0x3

    const-string v3, "substring(...)"

    const/4 v4, 0x7

    const/16 v5, 0x8

    const-string v6, "9F6E"

    const/16 v7, 0x10

    const/4 v8, 0x2

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    .line 282
    :pswitch_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 268
    :pswitch_1
    const-string v0, "9F10"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_4

    return v9

    :cond_4
    const/4 v2, 0x5

    .line 275
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v8}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_5

    return v1

    :cond_5
    return v9

    .line 233
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-ge v2, v4, :cond_6

    return v9

    .line 239
    :cond_6
    sget-object v2, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v2, v0}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    aget-byte v2, v2, v8

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_8

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xc

    if-ge v2, v4, :cond_7

    return v9

    .line 255
    :cond_7
    sget-object v2, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/stripe/hardware/emv/TlvMap$Companion;->fromHexToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    sget-object v2, Lcom/stripe/hardware/emv/TlvMap;->MASTERCARD_CARD_FORM_FACTORS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_8
    return v9

    .line 192
    :pswitch_3
    const-string v0, "9F71"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_9

    return v9

    .line 197
    :cond_9
    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-direct {v3, v9, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-ne v0, v1, :cond_a

    return v1

    .line 202
    :cond_a
    const-string v0, "82"

    invoke-virtual {p0, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_b

    return v9

    .line 207
    :cond_b
    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-direct {v3, v8, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x60

    if-lez v0, :cond_c

    return v1

    :cond_c
    return v9

    .line 170
    :pswitch_4
    invoke-virtual {p0, v6}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_d

    return v9

    .line 175
    :cond_d
    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-direct {v3, v9, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    .line 176
    new-instance v5, Lkotlin/ranges/IntRange;

    invoke-direct {v5, v9, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, v4

    .line 178
    new-array v4, v8, [Ljava/lang/Integer;

    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/16 v5, 0x40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-array v3, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    :pswitch_5
    return v9

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final toBlob()Ljava/lang/String;
    .locals 11

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    new-instance v1, Lkotlin/text/HexFormat$Builder;

    invoke-direct {v1}, Lkotlin/text/HexFormat$Builder;-><init>()V

    const/4 v2, 0x1

    .line 119
    invoke-virtual {v1, v2}, Lkotlin/text/HexFormat$Builder;->setUpperCase(Z)V

    .line 120
    invoke-virtual {v1}, Lkotlin/text/HexFormat$Builder;->getNumber()Lkotlin/text/HexFormat$NumberHexFormat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->setRemoveLeadingZeros(Z)V

    .line 118
    invoke-virtual {v1}, Lkotlin/text/HexFormat$Builder;->build()Lkotlin/text/HexFormat;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/stripe/hardware/emv/TlvMap;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    ushr-int/lit8 v6, v5, 0x1

    ushr-int/lit8 v5, v5, 0x9

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x80

    const/16 v9, 0x30

    const/4 v10, 0x2

    if-ge v6, v8, :cond_0

    .line 129
    invoke-static {v6, v1}, Lkotlin/text/HexExtensionsKt;->toHexString(ILkotlin/text/HexFormat;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10, v9}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 131
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v5, v5, 0x81

    invoke-static {v5, v1}, Lkotlin/text/HexExtensionsKt;->toHexString(ILkotlin/text/HexFormat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 132
    invoke-static {v6, v1}, Lkotlin/text/HexExtensionsKt;->toHexString(ILkotlin/text/HexFormat;)Ljava/lang/String;

    move-result-object v6

    mul-int/2addr v7, v10

    invoke-static {v6, v7, v9}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
