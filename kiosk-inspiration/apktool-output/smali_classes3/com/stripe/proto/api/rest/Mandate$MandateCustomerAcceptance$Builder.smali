.class public final Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Mandate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;",
        "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u001a\u0010\u0007\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\tR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u001e\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;",
        "()V",
        "accepted_at",
        "",
        "Ljava/lang/Long;",
        "offline",
        "",
        "",
        "online",
        "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;",
        "type",
        "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;",
        "build",
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
.field public accepted_at:Ljava/lang/Long;

.field public offline:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public online:Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 253
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 261
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->offline:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accepted_at(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->accepted_at:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->build()Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;
    .locals 6

    .line 298
    new-instance v0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;

    .line 299
    iget-object v1, p0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->type:Ljava/lang/String;

    .line 300
    iget-object v2, p0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->accepted_at:Ljava/lang/Long;

    .line 301
    iget-object v3, p0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->offline:Ljava/util/Map;

    .line 302
    iget-object v4, p0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->online:Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    .line 303
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 298
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;Lokio/ByteString;)V

    return-object v0
.end method

.method public final offline(Ljava/util/Map;)Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;"
        }
    .end annotation

    const-string v0, "offline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iput-object p1, p0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->offline:Ljava/util/Map;

    return-object p0
.end method

.method public final online(Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;)Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->online:Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
