.class public final Lcom/stripe/core/logginginterceptors/HttpTimingTagKt;
.super Ljava/lang/Object;
.source "HttpTimingTag.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toHttpTimingTag",
        "Lcom/stripe/loggingmodels/Tag$HttpTimingTag;",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;",
        "logging-interceptors_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toHttpTimingTag(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;)Lcom/stripe/loggingmodels/Tag$HttpTimingTag;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/stripe/loggingmodels/Tag$HttpTimingTag;

    invoke-virtual {p0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;->getName()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/stripe/loggingmodels/Tag$HttpTimingTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
