.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;",
        "()V",
        "city",
        "",
        "country",
        "line1",
        "line2",
        "postal_code",
        "state",
        "build",
        "terminal_release"
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
.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public line1:Ljava/lang/String;

.field public line2:Ljava/lang/String;

.field public postal_code:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1735
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 1737
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->line1:Ljava/lang/String;

    .line 1740
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->line2:Ljava/lang/String;

    .line 1743
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->city:Ljava/lang/String;

    .line 1746
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->state:Ljava/lang/String;

    .line 1749
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->postal_code:Ljava/lang/String;

    .line 1752
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->country:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1735
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->build()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;
    .locals 8

    .line 1784
    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;

    .line 1785
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->line1:Ljava/lang/String;

    .line 1786
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->line2:Ljava/lang/String;

    .line 1787
    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->city:Ljava/lang/String;

    .line 1788
    iget-object v4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->state:Ljava/lang/String;

    .line 1789
    iget-object v5, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->postal_code:Ljava/lang/String;

    .line 1790
    iget-object v6, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->country:Ljava/lang/String;

    .line 1791
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 1784
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final city(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;
    .locals 1

    const-string v0, "city"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1765
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->city:Ljava/lang/String;

    return-object p0
.end method

.method public final country(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;
    .locals 1

    const-string v0, "country"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1780
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final line1(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;
    .locals 1

    const-string v0, "line1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1755
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->line1:Ljava/lang/String;

    return-object p0
.end method

.method public final line2(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;
    .locals 1

    const-string v0, "line2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1760
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->line2:Ljava/lang/String;

    return-object p0
.end method

.method public final postal_code(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;
    .locals 1

    const-string v0, "postal_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1775
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->postal_code:Ljava/lang/String;

    return-object p0
.end method

.method public final state(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1770
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;->state:Ljava/lang/String;

    return-object p0
.end method
