.class public interface abstract Lcom/stripe/logwriter/LogLevelAwareWriter;
.super Ljava/lang/Object;
.source "LogLevelAwareWriter.kt"

# interfaces
.implements Lcom/stripe/logwriter/LogWriter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0006\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/logwriter/LogLevelAwareWriter;",
        "Lcom/stripe/logwriter/LogWriter;",
        "minLogLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "getMinLogLevel",
        "()Lcom/stripe/loggingmodels/LogLevel;",
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


# virtual methods
.method public abstract getMinLogLevel()Lcom/stripe/loggingmodels/LogLevel;
.end method
