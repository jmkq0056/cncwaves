.class final Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;
.super Ljava/lang/Object;
.source "TerminalSdkManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/TerminalSdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Instance"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\nH\u00c6\u0003J7\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;",
        "",
        "locationHandler",
        "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "logFlusher",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
        "executors",
        "",
        "Ljava/util/concurrent/ExecutorService;",
        "session",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "(Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V",
        "getExecutors",
        "()Ljava/util/List;",
        "getLocationHandler",
        "()Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "getLogFlusher",
        "()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
        "getSession",
        "()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final executors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

.field private final logFlusher:Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

.field private final session:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            ")V"
        }
    .end annotation

    const-string v0, "locationHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logFlusher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    .line 284
    iput-object p2, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->logFlusher:Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    .line 285
    iput-object p3, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->executors:Ljava/util/List;

    .line 286
    iput-object p4, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->session:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;ILjava/lang/Object;)Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->logFlusher:Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->executors:Ljava/util/List;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->session:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->copy(Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/internal/common/LocationHandler;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    return-object v0
.end method

.method public final component2()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->logFlusher:Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->executors:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->session:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            ")",
            "Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;"
        }
    .end annotation

    const-string v0, "locationHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logFlusher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;-><init>(Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    iget-object v3, p1, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->logFlusher:Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    iget-object v3, p1, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->logFlusher:Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->executors:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->executors:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->session:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iget-object p1, p1, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->session:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getExecutors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->executors:Ljava/util/List;

    return-object v0
.end method

.method public final getLocationHandler()Lcom/stripe/stripeterminal/internal/common/LocationHandler;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    return-object v0
.end method

.method public final getLogFlusher()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->logFlusher:Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    return-object v0
.end method

.method public final getSession()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->session:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->logFlusher:Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->executors:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->session:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instance(locationHandler="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logFlusher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->logFlusher:Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->executors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->session:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
