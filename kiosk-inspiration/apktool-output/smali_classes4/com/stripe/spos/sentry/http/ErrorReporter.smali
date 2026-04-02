.class public interface abstract Lcom/stripe/spos/sentry/http/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J-\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H&\u00f8\u0001\u0002\u0082\u0002\u0011\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0004\u0008!0\u0001\u00a8\u0006\r\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/spos/sentry/http/ErrorReporter;",
        "",
        "blockingReportError",
        "Lkotlin/Result;",
        "Lcom/stripe/spos/sentry/http/models/ErrorReportIdentifier;",
        "error",
        "",
        "handled",
        "",
        "blockingReportError-gIAlu-s",
        "(Ljava/lang/Throwable;Z)Ljava/lang/Object;",
        "reportErrorAsync",
        "",
        "sentry-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic blockingReportError-gIAlu-s$default(Lcom/stripe/spos/sentry/http/ErrorReporter;Ljava/lang/Throwable;ZILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 16
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/spos/sentry/http/ErrorReporter;->blockingReportError-gIAlu-s(Ljava/lang/Throwable;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: blockingReportError-gIAlu-s"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic reportErrorAsync$default(Lcom/stripe/spos/sentry/http/ErrorReporter;Ljava/lang/Throwable;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 25
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/spos/sentry/http/ErrorReporter;->reportErrorAsync(Ljava/lang/Throwable;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: reportErrorAsync"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract blockingReportError-gIAlu-s(Ljava/lang/Throwable;Z)Ljava/lang/Object;
.end method

.method public abstract reportErrorAsync(Ljava/lang/Throwable;Z)V
.end method
