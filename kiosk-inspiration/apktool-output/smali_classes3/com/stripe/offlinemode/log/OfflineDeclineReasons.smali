.class public final Lcom/stripe/offlinemode/log/OfflineDeclineReasons;
.super Ljava/lang/Object;
.source "OfflineDeclineReasons.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/offlinemode/log/OfflineDeclineReasons;",
        "",
        "()V",
        "CARD_EXPIRED",
        "",
        "CARD_SWIPE_NOT_AVAILABLE",
        "INSERT_ERROR",
        "INTERAC_NOT_SUPPORTED",
        "MISSING_AID",
        "MOBILE_WALLET_ON_SETUP_INTENT",
        "ONLINE_PIN_NOT_SUPPORTED",
        "STARTED_ONLINE_NOW_OFFLINE",
        "TEST_CARD_IN_LIVEMODE",
        "TVR_MASK_FAILED",
        "TVR_MISSING",
        "offlinemode_release"
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
.field public static final CARD_EXPIRED:Ljava/lang/String; = "card_is_expired"

.field public static final CARD_SWIPE_NOT_AVAILABLE:Ljava/lang/String; = "swipe_not_available"

.field public static final INSERT_ERROR:Ljava/lang/String; = "insert_error"

.field public static final INSTANCE:Lcom/stripe/offlinemode/log/OfflineDeclineReasons;

.field public static final INTERAC_NOT_SUPPORTED:Ljava/lang/String; = "interac_not_supported"

.field public static final MISSING_AID:Ljava/lang/String; = "missing_aid"

.field public static final MOBILE_WALLET_ON_SETUP_INTENT:Ljava/lang/String; = "mobile_wallet_on_setup_intent"

.field public static final ONLINE_PIN_NOT_SUPPORTED:Ljava/lang/String; = "online_pin_not_supported"

.field public static final STARTED_ONLINE_NOW_OFFLINE:Ljava/lang/String; = "started_online_and_is_now_offline"

.field public static final TEST_CARD_IN_LIVEMODE:Ljava/lang/String; = "test_card_in_livemode"

.field public static final TVR_MASK_FAILED:Ljava/lang/String; = "tvr_mask_failed"

.field public static final TVR_MISSING:Ljava/lang/String; = "tvr_is_missing"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/offlinemode/log/OfflineDeclineReasons;

    invoke-direct {v0}, Lcom/stripe/offlinemode/log/OfflineDeclineReasons;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/log/OfflineDeclineReasons;->INSTANCE:Lcom/stripe/offlinemode/log/OfflineDeclineReasons;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
