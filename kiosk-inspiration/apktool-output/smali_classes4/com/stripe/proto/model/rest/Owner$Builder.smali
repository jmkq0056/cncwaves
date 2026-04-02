.class public final Lcom/stripe/proto/model/rest/Owner$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Owner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Owner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/Owner;",
        "Lcom/stripe/proto/model/rest/Owner$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Owner$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/Owner;",
        "()V",
        "address",
        "",
        "email",
        "name",
        "phone",
        "verified_address",
        "verified_email",
        "verified_name",
        "verified_phone",
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
.field public address:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public verified_address:Ljava/lang/String;

.field public verified_email:Ljava/lang/String;

.field public verified_name:Ljava/lang/String;

.field public verified_phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final address(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Owner$Builder;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->address:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Owner$Builder;->build()Lcom/stripe/proto/model/rest/Owner;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/Owner;
    .locals 10

    .line 242
    new-instance v0, Lcom/stripe/proto/model/rest/Owner;

    .line 243
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->address:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->email:Ljava/lang/String;

    .line 245
    iget-object v3, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->name:Ljava/lang/String;

    .line 246
    iget-object v4, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->phone:Ljava/lang/String;

    .line 247
    iget-object v5, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->verified_address:Ljava/lang/String;

    .line 248
    iget-object v6, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->verified_email:Ljava/lang/String;

    .line 249
    iget-object v7, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->verified_name:Ljava/lang/String;

    .line 250
    iget-object v8, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->verified_phone:Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Owner$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 242
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/rest/Owner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final email(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Owner$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->email:Ljava/lang/String;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Owner$Builder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final phone(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Owner$Builder;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public final verified_address(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Owner$Builder;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->verified_address:Ljava/lang/String;

    return-object p0
.end method

.method public final verified_email(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Owner$Builder;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->verified_email:Ljava/lang/String;

    return-object p0
.end method

.method public final verified_name(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Owner$Builder;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->verified_name:Ljava/lang/String;

    return-object p0
.end method

.method public final verified_phone(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Owner$Builder;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Owner$Builder;->verified_phone:Ljava/lang/String;

    return-object p0
.end method
