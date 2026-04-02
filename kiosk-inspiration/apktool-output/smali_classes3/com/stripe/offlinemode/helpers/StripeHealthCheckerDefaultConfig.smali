.class public final Lcom/stripe/offlinemode/helpers/StripeHealthCheckerDefaultConfig;
.super Ljava/lang/Object;
.source "StripeHealthCheckerDefaultConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/StripeHealthCheckerDefaultConfig;",
        "",
        "()V",
        "ATTEMPT_TIMEOUT_MS",
        "",
        "OFFLINE_MAX_ATTEMPTS",
        "",
        "OFFLINE_STABLE_RETRY_DELAY_MS",
        "ONLINE_MAX_ATTEMPTS",
        "ONLINE_STABLE_RETRY_DELAY_MS",
        "SUCCESSIVE_CALL_DELAY_MS",
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
.field public static final ATTEMPT_TIMEOUT_MS:J = 0x1388L

.field public static final INSTANCE:Lcom/stripe/offlinemode/helpers/StripeHealthCheckerDefaultConfig;

.field public static final OFFLINE_MAX_ATTEMPTS:I = 0x3

.field public static final OFFLINE_STABLE_RETRY_DELAY_MS:J = 0x7530L

.field public static final ONLINE_MAX_ATTEMPTS:I = 0x3

.field public static final ONLINE_STABLE_RETRY_DELAY_MS:J = 0xea60L

.field public static final SUCCESSIVE_CALL_DELAY_MS:J = 0x1388L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/offlinemode/helpers/StripeHealthCheckerDefaultConfig;

    invoke-direct {v0}, Lcom/stripe/offlinemode/helpers/StripeHealthCheckerDefaultConfig;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/helpers/StripeHealthCheckerDefaultConfig;->INSTANCE:Lcom/stripe/offlinemode/helpers/StripeHealthCheckerDefaultConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
