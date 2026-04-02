.class public final Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;
.super Ljava/lang/Object;
.source "DelegatedDeviceController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0002J\u0014\u0010\u0008\u001a\u00020\u0006*\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u000c\u0010\u000c\u001a\u00020\u0006*\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;",
        "",
        "()V",
        "terminalTimeFormatter",
        "Ljava/text/SimpleDateFormat;",
        "formatted",
        "",
        "Lcom/stripe/currency/Amount;",
        "formattedWith",
        "",
        "currency",
        "Lcom/stripe/currency/CurrencyCode;",
        "toTerminalTime",
        "hardware_release"
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
.field static final synthetic $$INSTANCE:Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;

.field private static final terminalTimeFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->$$INSTANCE:Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;

    .line 130
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->terminalTimeFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$formatted(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;Lcom/stripe/currency/Amount;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->formatted(Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$formattedWith(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;JLcom/stripe/currency/CurrencyCode;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->formattedWith(JLcom/stripe/currency/CurrencyCode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toTerminalTime(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;J)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->toTerminalTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final formatted(Lcom/stripe/currency/Amount;)Ljava/lang/String;
    .locals 2

    .line 133
    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->formattedWith(JLcom/stripe/currency/CurrencyCode;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final formattedWith(JLcom/stripe/currency/CurrencyCode;)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const-string p2, "valueOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Lcom/stripe/currency/CurrencyCode;->getMinorUnit()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toPlainString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final toTerminalTime(J)Ljava/lang/String;
    .locals 1

    .line 146
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->terminalTimeFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
