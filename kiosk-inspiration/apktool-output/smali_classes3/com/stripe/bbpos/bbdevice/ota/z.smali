.class final Lcom/stripe/bbpos/bbdevice/ota/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->g:Ljava/util/Hashtable;

    .line 3
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->h:Ljava/util/Hashtable;

    .line 8
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/z;->j()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->j:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->j:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/bbpos/bbdevice/ota/y$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/z;->j()V

    .line 2
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->g:Ljava/util/Hashtable;

    .line 3
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->a:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->b:Z

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->i:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->i:Ljava/lang/String;

    return-void
.end method

.method b(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/bbpos/bbdevice/ota/y$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/z;->j()V

    .line 2
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->h:Ljava/util/Hashtable;

    .line 3
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->a:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    return-void
.end method

.method b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->c:Z

    return-void
.end method

.method c()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->g:Ljava/util/Hashtable;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->f:Ljava/lang/String;

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->f:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->d:Ljava/lang/String;

    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->d:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->e:Ljava/lang/String;

    return-void
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->e:Ljava/lang/String;

    return-object v0
.end method

.method g()Lcom/stripe/bbpos/bbdevice/ota/y$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->a:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    return-object v0
.end method

.method h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->b:Z

    return v0
.end method

.method i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->c:Z

    return v0
.end method

.method j()V
    .locals 2

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->a:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->a:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->c:Z

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->g:Ljava/util/Hashtable;

    .line 7
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->h:Ljava/util/Hashtable;

    .line 8
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->f:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->i:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/z;->j:Ljava/lang/String;

    return-void
.end method
