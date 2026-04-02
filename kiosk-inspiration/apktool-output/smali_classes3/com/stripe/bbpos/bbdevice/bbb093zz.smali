.class Lcom/stripe/bbpos/bbdevice/bbb093zz;
.super Lcom/stripe/bbpos/bbdevice/bbb005zz;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/bbb005zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    return-void
.end method


# virtual methods
.method aaa000([B)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v1, "Error when get Random. (error code - 9017)"

    invoke-virtual {p1, v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa021(Ljava/lang/String;)V

    return-void
.end method
