.class abstract Lcom/stripe/bbpos/bbdevice/ccc062zz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final aaa002:[B


# instance fields
.field private aaa000:B

.field private aaa001:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa002:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x3bt
        -0x9t
        0x2at
        0x6ct
    .end array-data
.end method

.method protected constructor <init>(BB)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa000:B

    .line 3
    iput-byte p2, p0, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa001:B

    return-void
.end method


# virtual methods
.method protected abstract aaa000()Lcom/stripe/bbpos/bbdevice/ccc062zz;
.end method

.method protected aaa000(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa001:B

    return-void
.end method

.method protected abstract aaa001()[B
.end method

.method protected aaa002()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa000:B

    return v0
.end method

.method protected aaa003()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa001:B

    return v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc062zz;

    move-result-object v0

    return-object v0
.end method
