.class final Lcom/stripe/bbpos/bbdevice/ota/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->b:Ljava/lang/String;

    const-string p1, ""

    if-nez p3, :cond_0

    .line 11
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->c:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->c:Ljava/lang/String;

    :goto_0
    if-nez p4, :cond_1

    .line 16
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->d:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_1
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->d:Ljava/lang/String;

    :goto_1
    if-nez p5, :cond_2

    .line 21
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->e:Ljava/lang/String;

    return-void

    .line 23
    :cond_2
    iput-object p5, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/k;->e:Ljava/lang/String;

    return-object v0
.end method
