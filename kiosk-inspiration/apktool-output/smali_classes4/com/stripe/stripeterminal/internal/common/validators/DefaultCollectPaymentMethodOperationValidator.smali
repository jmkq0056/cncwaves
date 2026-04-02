.class public final Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator;
.super Ljava/lang/Object;
.source "CollectPaymentMethodOperationValidator.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002JI\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator;",
        "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;",
        "()V",
        "validateParams",
        "",
        "skipTipping",
        "",
        "manualEntry",
        "updatePaymentIntent",
        "tipEligibleAmount",
        "",
        "enableCustomerCancellation",
        "requestDynamicCurrencyConversion",
        "surchargeNotice",
        "",
        "(ZZZLjava/lang/Long;ZZLjava/lang/String;)V",
        "Companion",
        "common_publish"
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator$Companion;

.field private static final MAX_SURCHARGE_NOTICE:I = 0x5e


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator;->Companion:Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validateParams(ZZZLjava/lang/Long;ZZLjava/lang/String;)V
    .locals 7

    if-eqz p6, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 37
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 p6, 0xc

    const/4 p7, 0x0

    .line 36
    const-string p3, "UpdatePaymentIntent must be true in order to request dynamic currency conversion."

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 42
    :cond_1
    :goto_0
    move-object p1, p7

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_5

    if-nez p6, :cond_4

    .line 58
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x5e

    if-gt p1, p2, :cond_3

    return-void

    .line 59
    :cond_3
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 60
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_SURCHARGE_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 59
    const-string v2, "surchargeNotice exceeds the maximum length of 94 characters"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 51
    :cond_4
    new-instance p1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 52
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 p6, 0xc

    const/4 p7, 0x0

    .line 51
    const-string p3, "Surcharging is not supported on payment intents requesting dynamic currency conversion."

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 44
    :cond_5
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 45
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 44
    const-string v2, "UpdatePaymentIntent must be true in order to display a surchargeNotice."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_6
    :goto_1
    return-void
.end method
