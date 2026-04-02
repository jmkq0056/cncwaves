.class public final Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "WrappedAddressPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/merchant/WrappedAddressPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/merchant/WrappedAddressPb;",
        "Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/merchant/WrappedAddressPb;",
        "()V",
        "city",
        "",
        "country",
        "line1",
        "line2",
        "postal_code",
        "state",
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
.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public line1:Ljava/lang/String;

.field public line2:Ljava/lang/String;

.field public postal_code:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->build()Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/merchant/WrappedAddressPb;
    .locals 8

    .line 182
    new-instance v0, Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    .line 183
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->line1:Ljava/lang/String;

    .line 184
    iget-object v2, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->city:Ljava/lang/String;

    .line 185
    iget-object v3, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->state:Ljava/lang/String;

    .line 186
    iget-object v4, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->postal_code:Ljava/lang/String;

    .line 187
    iget-object v5, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->country:Ljava/lang/String;

    .line 188
    iget-object v6, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->line2:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 182
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/merchant/WrappedAddressPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final city(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->city:Ljava/lang/String;

    return-object p0
.end method

.method public final country(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final line1(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->line1:Ljava/lang/String;

    return-object p0
.end method

.method public final line2(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->line2:Ljava/lang/String;

    return-object p0
.end method

.method public final postal_code(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->postal_code:Ljava/lang/String;

    return-object p0
.end method

.method public final state(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;->state:Ljava/lang/String;

    return-object p0
.end method
