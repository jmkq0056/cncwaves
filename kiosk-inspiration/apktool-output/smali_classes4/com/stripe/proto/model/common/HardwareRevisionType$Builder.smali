.class public final Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "HardwareRevisionType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/HardwareRevisionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/HardwareRevisionType;",
        "Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0012\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/HardwareRevisionType;",
        "()V",
        "chipper1x_revision",
        "Lcom/stripe/proto/model/common/Chipper1XRevision;",
        "chipper2x_revision",
        "Lcom/stripe/proto/model/common/Chipper2XRevision;",
        "wisecube_revision",
        "Lcom/stripe/proto/model/common/WiseCubeRevision;",
        "build",
        "common_release"
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
.field public chipper1x_revision:Lcom/stripe/proto/model/common/Chipper1XRevision;

.field public chipper2x_revision:Lcom/stripe/proto/model/common/Chipper2XRevision;

.field public wisecube_revision:Lcom/stripe/proto/model/common/WiseCubeRevision;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->build()Lcom/stripe/proto/model/common/HardwareRevisionType;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/HardwareRevisionType;
    .locals 5

    .line 146
    new-instance v0, Lcom/stripe/proto/model/common/HardwareRevisionType;

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->chipper2x_revision:Lcom/stripe/proto/model/common/Chipper2XRevision;

    .line 148
    iget-object v2, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->chipper1x_revision:Lcom/stripe/proto/model/common/Chipper1XRevision;

    .line 149
    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->wisecube_revision:Lcom/stripe/proto/model/common/WiseCubeRevision;

    .line 150
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 146
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/common/HardwareRevisionType;-><init>(Lcom/stripe/proto/model/common/Chipper2XRevision;Lcom/stripe/proto/model/common/Chipper1XRevision;Lcom/stripe/proto/model/common/WiseCubeRevision;Lokio/ByteString;)V

    return-object v0
.end method

.method public final chipper1x_revision(Lcom/stripe/proto/model/common/Chipper1XRevision;)Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->chipper1x_revision:Lcom/stripe/proto/model/common/Chipper1XRevision;

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->chipper2x_revision:Lcom/stripe/proto/model/common/Chipper2XRevision;

    .line 134
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->wisecube_revision:Lcom/stripe/proto/model/common/WiseCubeRevision;

    return-object p0
.end method

.method public final chipper2x_revision(Lcom/stripe/proto/model/common/Chipper2XRevision;)Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->chipper2x_revision:Lcom/stripe/proto/model/common/Chipper2XRevision;

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->chipper1x_revision:Lcom/stripe/proto/model/common/Chipper1XRevision;

    .line 127
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->wisecube_revision:Lcom/stripe/proto/model/common/WiseCubeRevision;

    return-object p0
.end method

.method public final wisecube_revision(Lcom/stripe/proto/model/common/WiseCubeRevision;)Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "wisecube_revision is deprecated"
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->wisecube_revision:Lcom/stripe/proto/model/common/WiseCubeRevision;

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->chipper2x_revision:Lcom/stripe/proto/model/common/Chipper2XRevision;

    .line 142
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;->chipper1x_revision:Lcom/stripe/proto/model/common/Chipper1XRevision;

    return-object p0
.end method
