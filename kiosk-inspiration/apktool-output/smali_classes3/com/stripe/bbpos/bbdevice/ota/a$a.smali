.class Lcom/stripe/bbpos/bbdevice/ota/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ota/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/stripe/bbpos/bbdevice/ota/a;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/a$a;->b:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/a$a;->a:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/a$a;->b:Lcom/stripe/bbpos/bbdevice/ota/a;

    const-string v1, "[PollingThread] [clear]"

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/a;->a(Lcom/stripe/bbpos/bbdevice/ota/a;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/a$a;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/stripe/bbpos/bbdevice/ota/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/a$a;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/a$a;->a:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x64

    .line 4
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/a$a;->a:Z

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/a$a;->b:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/a;->a(Lcom/stripe/bbpos/bbdevice/ota/a;)V

    :cond_1
    return-void
.end method
