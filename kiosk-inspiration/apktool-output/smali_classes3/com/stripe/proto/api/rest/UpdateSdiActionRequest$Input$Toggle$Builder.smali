.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdateSdiActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
        "()V",
        "default_value",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;",
        "description",
        "",
        "title",
        "value_",
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
.field public default_value:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

.field public description:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public value_:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2078
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 2078
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->build()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;
    .locals 6

    .line 2111
    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;

    .line 2112
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->title:Ljava/lang/String;

    .line 2113
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->description:Ljava/lang/String;

    .line 2114
    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->default_value:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    .line 2115
    iget-object v4, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->value_:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    .line 2116
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 2111
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;Lokio/ByteString;)V

    return-object v0
.end method

.method public final default_value(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;
    .locals 0

    .line 2102
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->default_value:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;
    .locals 0

    .line 2097
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;
    .locals 0

    .line 2092
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final value_(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;
    .locals 0

    .line 2107
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;->value_:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    return-object p0
.end method
