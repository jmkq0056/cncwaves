.class public final enum Lcom/stripe/paymentcollection/PaymentCollectionState;
.super Ljava/lang/Enum;
.source "PaymentCollectionState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u001f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "",
        "(Ljava/lang/String;I)V",
        "EMPTY",
        "TIPPING_SELECTION",
        "DISPLAY_CART_PRE_COLLECTION",
        "DISPLAY_CART_POST_COLLECTION",
        "COLLECTION",
        "PROCESSING",
        "APPLICATION_SELECTION",
        "LANGUAGE_SELECTION",
        "ACCOUNT_SELECTION",
        "PIN_ENTRY",
        "MAGSTRIPE_PIN_ENTRY",
        "PREPARE_TO_COLLECT_AGAIN",
        "RECOVERABLE_ERROR_SUMMARY",
        "ONLINE_AUTHORIZATION",
        "ONLINE_AUTHORIZATION_MAG_STRIPE",
        "REMOVE_CARD",
        "ONLINE_CONFIRMATION",
        "COLLECTION_COMPLETE",
        "CANCEL",
        "TIMEOUT",
        "FINISHED",
        "MANUAL_ENTRY",
        "COLLECT_PAYMENT_METHOD_API_ERROR",
        "DCC_SELECTION",
        "NON_CARD_PAYMENT_METHOD_SELECTION",
        "NON_CARD_PAYMENT_METHOD_CONFIRMATION",
        "NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED",
        "INTERSTITIAL",
        "PASSTHROUGH_CONFIRMATION",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum ACCOUNT_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum APPLICATION_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum COLLECT_PAYMENT_METHOD_API_ERROR:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum DCC_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum DISPLAY_CART_POST_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum DISPLAY_CART_PRE_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum EMPTY:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum INTERSTITIAL:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum LANGUAGE_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum MAGSTRIPE_PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum MANUAL_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum NON_CARD_PAYMENT_METHOD_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum NON_CARD_PAYMENT_METHOD_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum ONLINE_AUTHORIZATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum ONLINE_AUTHORIZATION_MAG_STRIPE:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum ONLINE_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum PASSTHROUGH_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum RECOVERABLE_ERROR_SUMMARY:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum REMOVE_CARD:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

.field public static final enum TIPPING_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/paymentcollection/PaymentCollectionState;
    .locals 30

    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->EMPTY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIPPING_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v3, Lcom/stripe/paymentcollection/PaymentCollectionState;->DISPLAY_CART_PRE_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v4, Lcom/stripe/paymentcollection/PaymentCollectionState;->DISPLAY_CART_POST_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v5, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v6, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v7, Lcom/stripe/paymentcollection/PaymentCollectionState;->APPLICATION_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v8, Lcom/stripe/paymentcollection/PaymentCollectionState;->LANGUAGE_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v9, Lcom/stripe/paymentcollection/PaymentCollectionState;->ACCOUNT_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v10, Lcom/stripe/paymentcollection/PaymentCollectionState;->PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v11, Lcom/stripe/paymentcollection/PaymentCollectionState;->MAGSTRIPE_PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v13, Lcom/stripe/paymentcollection/PaymentCollectionState;->RECOVERABLE_ERROR_SUMMARY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v14, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v15, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION_MAG_STRIPE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v16, Lcom/stripe/paymentcollection/PaymentCollectionState;->REMOVE_CARD:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v17, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v18, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v19, Lcom/stripe/paymentcollection/PaymentCollectionState;->CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v20, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v21, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v22, Lcom/stripe/paymentcollection/PaymentCollectionState;->MANUAL_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v23, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECT_PAYMENT_METHOD_API_ERROR:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v24, Lcom/stripe/paymentcollection/PaymentCollectionState;->DCC_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v25, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v26, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v27, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v28, Lcom/stripe/paymentcollection/PaymentCollectionState;->INTERSTITIAL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v29, Lcom/stripe/paymentcollection/PaymentCollectionState;->PASSTHROUGH_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    filled-new-array/range {v1 .. v29}, [Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->EMPTY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 20
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "TIPPING_SELECTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIPPING_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 29
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "DISPLAY_CART_PRE_COLLECTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->DISPLAY_CART_PRE_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 37
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "DISPLAY_CART_POST_COLLECTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->DISPLAY_CART_POST_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 45
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "COLLECTION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 52
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "PROCESSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 59
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "APPLICATION_SELECTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->APPLICATION_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 68
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "LANGUAGE_SELECTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->LANGUAGE_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 75
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "ACCOUNT_SELECTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->ACCOUNT_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 82
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "PIN_ENTRY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 89
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "MAGSTRIPE_PIN_ENTRY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->MAGSTRIPE_PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 98
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "PREPARE_TO_COLLECT_AGAIN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 110
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "RECOVERABLE_ERROR_SUMMARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->RECOVERABLE_ERROR_SUMMARY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 117
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "ONLINE_AUTHORIZATION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 125
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "ONLINE_AUTHORIZATION_MAG_STRIPE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION_MAG_STRIPE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 132
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "REMOVE_CARD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->REMOVE_CARD:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 142
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "ONLINE_CONFIRMATION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 151
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "COLLECTION_COMPLETE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 158
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "CANCEL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 165
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "TIMEOUT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 173
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "FINISHED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 178
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "MANUAL_ENTRY"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->MANUAL_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 185
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "COLLECT_PAYMENT_METHOD_API_ERROR"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECT_PAYMENT_METHOD_API_ERROR:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 192
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "DCC_SELECTION"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->DCC_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 197
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "NON_CARD_PAYMENT_METHOD_SELECTION"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 204
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "NON_CARD_PAYMENT_METHOD_CONFIRMATION"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 209
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 216
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "INTERSTITIAL"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->INTERSTITIAL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 221
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "PASSTHROUGH_CONFIRMATION"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->PASSTHROUGH_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-static {}, Lcom/stripe/paymentcollection/PaymentCollectionState;->$values()[Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->$VALUES:[Lcom/stripe/paymentcollection/PaymentCollectionState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/paymentcollection/PaymentCollectionState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/paymentcollection/PaymentCollectionState;
    .locals 1

    const-class v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    return-object p0
.end method

.method public static values()[Lcom/stripe/paymentcollection/PaymentCollectionState;
    .locals 1

    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->$VALUES:[Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/paymentcollection/PaymentCollectionState;

    return-object v0
.end method
