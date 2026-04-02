.class Lcom/stripe/bbpos/bbdevice/ccc067zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
        ">;"
    }
.end annotation


# instance fields
.field final aaa000:Ljava/lang/String;

.field final aaa001:Ljava/lang/String;

.field private final aaa002:[B

.field final aaa003:Z

.field final aaa004:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;[BZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa009(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa002:[B

    .line 7
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa003:Z

    .line 9
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa004:Ljava/util/List;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid tag"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static aaa000(Ljava/lang/String;[B)Lcom/stripe/bbpos/bbdevice/ccc067zz;
    .locals 3

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/stripe/bbpos/bbdevice/ccc067zz;-><init>(Ljava/lang/String;[BZLjava/util/List;)V

    return-object v0
.end method

.method static aaa000(Ljava/lang/String;[BLjava/util/List;)Lcom/stripe/bbpos/bbdevice/ccc067zz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;)",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/stripe/bbpos/bbdevice/ccc067zz;-><init>(Ljava/lang/String;[BZLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method aaa000()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa002:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa004(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    array-length v0, v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa004(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TLV{tag=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', length=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isNested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa003:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tlvList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa004:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
