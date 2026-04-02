.class public interface abstract Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;
.super Ljava/lang/Object;
.source "OfflinePaymentMethodValidator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J8\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0011\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
        "",
        "emitHealthMetrics",
        "",
        "error",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "validatePaymentMethod",
        "Lkotlin/Pair;",
        "Lcom/stripe/hardware/emv/TlvMap;",
        "",
        "paymentMethod",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "livemode",
        "",
        "intentCollectedOffline",
        "isSetupIntent",
        "Companion",
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
.field public static final AID_MISSING_ERROR_MESSAGE:Ljava/lang/String; = "Failed to retrieve application ID from card EMV data."

.field public static final Companion:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;

.field public static final TVR_MISSING_ERROR_MESSAGE:Ljava/lang/String; = "Failed to retrieve verification results from EMV data."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;->$$INSTANCE:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;

    sput-object v0, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;->Companion:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;

    return-void
.end method


# virtual methods
.method public abstract emitHealthMetrics(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
.end method

.method public abstract validatePaymentMethod(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;ZZZ)Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "ZZZ)",
            "Lkotlin/Pair<",
            "Lcom/stripe/hardware/emv/TlvMap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method
