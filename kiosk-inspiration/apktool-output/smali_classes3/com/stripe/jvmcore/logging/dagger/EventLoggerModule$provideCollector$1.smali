.class final Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$provideCollector$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EventLoggerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->provideCollector(Lcom/stripe/logwriter/LogWriter;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;)Lcom/stripe/jvmcore/batchdispatcher/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$provideCollector$1;->this$0:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/io/File;)Ljava/io/File;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$provideCollector$1;->this$0:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

    invoke-static {v1}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->access$getEventsFile$p(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$provideCollector$1;->invoke(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
