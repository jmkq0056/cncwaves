.class Lcom/stripe/bbpos/bbdevice/ccc017zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;
    }
.end annotation


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

.field private aaa001:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-nez p2, :cond_0

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    return-object v0
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    return-void
.end method

.method aaa000(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001:Ljava/lang/String;

    return-void
.end method

.method aaa001()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001:Ljava/lang/String;

    return-object v0
.end method
