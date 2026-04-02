.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;
.super Ljava/lang/Object;
.source "JvmCoreLogModule_ProvideLogFlusher$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final logUploaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;->logUploaderProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;->logWriterProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;->executorServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideLogFlusher$wiring(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;
    .locals 1

    .line 58
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->provideLogFlusher$wiring(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;->logUploaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/logwriter/LogWriter;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;->executorServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;->provideLogFlusher$wiring(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;->get()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    move-result-object v0

    return-object v0
.end method
