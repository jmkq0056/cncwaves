.class public final Lcom/stripe/proto/model/rest/Charges$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Charges.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Charges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/Charges;",
        "Lcom/stripe/proto/model/rest/Charges$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000fR\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Charges$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/Charges;",
        "()V",
        "data_",
        "",
        "Lcom/stripe/proto/model/rest/Charge;",
        "has_more",
        "",
        "Ljava/lang/Boolean;",
        "total_count",
        "",
        "Ljava/lang/Integer;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/Charges$Builder;",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/Charges$Builder;",
        "internal_release"
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
.field public data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/rest/Charge;",
            ">;"
        }
    .end annotation
.end field

.field public has_more:Ljava/lang/Boolean;

.field public total_count:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 120
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/Charges$Builder;->data_:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Charges$Builder;->build()Lcom/stripe/proto/model/rest/Charges;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/Charges;
    .locals 5

    .line 153
    new-instance v0, Lcom/stripe/proto/model/rest/Charges;

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charges$Builder;->data_:Ljava/util/List;

    .line 155
    iget-object v2, p0, Lcom/stripe/proto/model/rest/Charges$Builder;->has_more:Ljava/lang/Boolean;

    .line 156
    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charges$Builder;->total_count:Ljava/lang/Integer;

    .line 157
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Charges$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 153
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/rest/Charges;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final data_(Ljava/util/List;)Lcom/stripe/proto/model/rest/Charges$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/rest/Charge;",
            ">;)",
            "Lcom/stripe/proto/model/rest/Charges$Builder;"
        }
    .end annotation

    const-string v0, "data_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charges$Builder;->data_:Ljava/util/List;

    return-object p0
.end method

.method public final has_more(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/Charges$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charges$Builder;->has_more:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final total_count(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/Charges$Builder;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charges$Builder;->total_count:Ljava/lang/Integer;

    return-object p0
.end method
