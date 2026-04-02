.class public abstract Lcom/stripe/offlinemode/log/OfflineTrace;
.super Lcom/stripe/loggingmodels/ApplicationTrace;
.source "OfflineTrace.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/log/OfflineTrace$Companion;,
        Lcom/stripe/offlinemode/log/OfflineTrace$Flush;,
        Lcom/stripe/offlinemode/log/OfflineTrace$OfflineActivateReader;,
        Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmPayment;,
        Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmSetupIntent;,
        Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;,
        Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreateSetupIntent;,
        Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00052\u00020\u0001:\u0008\u0005\u0006\u0007\u0008\t\n\u000b\u000cB\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u0082\u0001\u0007\r\u000e\u000f\u0010\u0011\u0012\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/offlinemode/log/OfflineTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "method",
        "",
        "(Ljava/lang/String;)V",
        "Companion",
        "Flush",
        "OfflineActivateReader",
        "OfflineConfirmPayment",
        "OfflineConfirmSetupIntent",
        "OfflineCreatePayment",
        "OfflineCreateSetupIntent",
        "OfflineForwarding",
        "Lcom/stripe/offlinemode/log/OfflineTrace$Flush;",
        "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineActivateReader;",
        "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmPayment;",
        "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmSetupIntent;",
        "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;",
        "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreateSetupIntent;",
        "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;",
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
.field public static final Companion:Lcom/stripe/offlinemode/log/OfflineTrace$Companion;

.field public static final OFFLINE_TRACE_ID:Ljava/lang/String; = "offline_mode_trace"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/log/OfflineTrace$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/log/OfflineTrace$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/log/OfflineTrace;->Companion:Lcom/stripe/offlinemode/log/OfflineTrace$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 6
    const-string v1, "OfflineTrace"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/stripe/loggingmodels/ApplicationTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/log/OfflineTrace;-><init>(Ljava/lang/String;)V

    return-void
.end method
