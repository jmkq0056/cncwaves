.class public interface abstract Lcom/stripe/logwriter/dagger/LogWriterModule$Bindings;
.super Ljava/lang/Object;
.source "LogWriterModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/logwriter/dagger/LogWriterModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\t\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/logwriter/dagger/LogWriterModule$Bindings;",
        "",
        "bindLogLevelAwareWriter",
        "Lcom/stripe/logwriter/LogLevelAwareWriter;",
        "terminalLogWriter",
        "Lcom/stripe/logwriter/TerminalLogWriter;",
        "bindLogLevelWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "logLevelAwareWriter",
        "wiring"
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
.method public abstract bindLogLevelAwareWriter(Lcom/stripe/logwriter/TerminalLogWriter;)Lcom/stripe/logwriter/LogLevelAwareWriter;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindLogLevelWriter(Lcom/stripe/logwriter/LogLevelAwareWriter;)Lcom/stripe/logwriter/LogWriter;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
