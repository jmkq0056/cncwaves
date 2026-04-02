.class public final Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;
.super Ljava/lang/Object;
.source "TipEligibleValidator.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTipEligibleValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TipEligibleValidator.kt\ncom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,68:1\n16#2:69\n*S KotlinDebug\n*F\n+ 1 TipEligibleValidator.kt\ncom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator\n*L\n32#1:69\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\'\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010\u0012R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;",
        "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "validateTipEligibleAmount",
        "",
        "tipEligibleAmount",
        "",
        "skipTipping",
        "",
        "currencyCode",
        "",
        "(Ljava/lang/Long;ZLjava/lang/String;)V",
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
.field private static final CHARGE_MAX:J = 0x5f5e0ffL

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator$Companion;


# instance fields
.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;->Companion:Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "loggerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-class v0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public validateTipEligibleAmount(Ljava/lang/Long;ZLjava/lang/String;)V
    .locals 12

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 35
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/16 v2, 0x2e

    const/4 v3, 0x0

    if-ltz p1, :cond_3

    if-lez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 46
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_TIP_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 45
    const-string v6, "Invalid combination of skip_tipping and eligible_amount. If eligible_amount is greater than 0, skip_tipping cannot be set to true."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "tipEligibleAmount > 0 and skipTipping == true: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v4, Ljava/lang/Throwable;

    new-array p3, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v4, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 49
    throw v4

    :cond_1
    :goto_0
    const-wide/32 p1, 0x5f5e0ff

    cmp-long p1, v0, p1

    if-gtz p1, :cond_2

    goto :goto_1

    .line 53
    :cond_2
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 54
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_TIP_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid tip eligible amount. Tip eligible amount must be less than 99999999 in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 53
    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "tipEligibleAmount > max value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v4, Ljava/lang/Throwable;

    new-array p3, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v4, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 57
    throw v4

    .line 37
    :cond_3
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 38
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_TIP_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid tip eligible amount. Tip eligible amount must be greater than or equal to 0 in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 37
    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "tipEligibleAmount less than 0: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v5, Ljava/lang/Throwable;

    new-array p3, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v5, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 41
    throw v5

    :cond_4
    :goto_1
    return-void
.end method
