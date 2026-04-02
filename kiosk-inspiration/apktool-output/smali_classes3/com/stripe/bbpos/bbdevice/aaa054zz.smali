.class Lcom/stripe/bbpos/bbdevice/aaa054zz;
.super Lcom/stripe/bbpos/bbdevice/aaa012zz;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa012zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    return-void
.end method


# virtual methods
.method aaa000(I)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005:I

    const-string v2, ""

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc091:[B

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p1, v3, v1, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    iput-object p1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc093:[B

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p1, v3, v1, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    iput-object p1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v0, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V

    return-void
.end method
