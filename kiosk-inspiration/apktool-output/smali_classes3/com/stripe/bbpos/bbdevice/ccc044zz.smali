.class final Lcom/stripe/bbpos/bbdevice/ccc044zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaa000:Ljava/lang/String;

.field private aaa001:Ljava/lang/String;

.field private aaa002:I

.field private aaa003:I

.field private aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

.field private aaa005:I

.field private aaa006:I

.field private aaa007:Z

.field private aaa008:I

.field aaa009:Z

.field aaa010:Z

.field aaa011:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa010()V

    return-void
.end method

.method private aaa000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method aaa000()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa006:I

    return v0
.end method

.method aaa000(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa006:I

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    return-void
.end method

.method aaa000(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa010:Z

    return-void
.end method

.method aaa001()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003:I

    return v0
.end method

.method aaa001(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003:I

    return-void
.end method

.method aaa001(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000:Ljava/lang/String;

    return-void
.end method

.method aaa001(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa007:Z

    return-void
.end method

.method aaa002()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    return-object v0
.end method

.method aaa002(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa005:I

    return-void
.end method

.method aaa002(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setProductId] productId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001:Ljava/lang/String;

    return-void
.end method

.method aaa002(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa009:Z

    return-void
.end method

.method aaa003()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa005:I

    return v0
.end method

.method aaa003(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa002:I

    return-void
.end method

.method aaa003(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa011:Z

    return-void
.end method

.method aaa004()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa002:I

    return v0
.end method

.method aaa004(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa008:I

    return-void
.end method

.method aaa005()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getProductId] productId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001:Ljava/lang/String;

    return-object v0
.end method

.method aaa006()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa008:I

    return v0
.end method

.method aaa007()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa010:Z

    return v0
.end method

.method aaa008()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa007:Z

    return v0
.end method

.method aaa009()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa011:Z

    return v0
.end method

.method aaa010()V
    .locals 1

    .line 1
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa001:Ljava/lang/String;

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa002:I

    .line 4
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003:I

    .line 5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa005:I

    .line 7
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa006:I

    .line 8
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa007:Z

    .line 9
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa008:I

    .line 10
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa009:Z

    .line 11
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa010:Z

    .line 12
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa011:Z

    return-void
.end method
