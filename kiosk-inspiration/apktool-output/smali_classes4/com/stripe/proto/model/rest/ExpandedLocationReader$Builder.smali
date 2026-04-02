.class public final Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ExpandedLocationReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/ExpandedLocationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/ExpandedLocationReader;",
        "Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/ExpandedLocationReader;",
        "()V",
        "base_url",
        "",
        "device_sw_version",
        "device_type",
        "id",
        "ip_address",
        "label",
        "livemode",
        "",
        "Ljava/lang/Boolean;",
        "location",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "object_",
        "serial_number",
        "status",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;",
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
.field public base_url:Ljava/lang/String;

.field public device_sw_version:Ljava/lang/String;

.field public device_type:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public ip_address:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public livemode:Ljava/lang/Boolean;

.field public location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

.field public object_:Ljava/lang/String;

.field public serial_number:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final base_url(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->base_url:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->build()Lcom/stripe/proto/model/rest/ExpandedLocationReader;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/ExpandedLocationReader;
    .locals 13

    .line 358
    new-instance v0, Lcom/stripe/proto/model/rest/ExpandedLocationReader;

    .line 359
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->id:Ljava/lang/String;

    .line 360
    iget-object v2, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->object_:Ljava/lang/String;

    .line 361
    iget-object v3, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->device_sw_version:Ljava/lang/String;

    .line 362
    iget-object v4, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->device_type:Ljava/lang/String;

    .line 363
    iget-object v5, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->ip_address:Ljava/lang/String;

    .line 364
    iget-object v6, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->label:Ljava/lang/String;

    .line 365
    iget-object v7, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 366
    iget-object v8, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->serial_number:Ljava/lang/String;

    .line 367
    iget-object v9, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->status:Ljava/lang/String;

    .line 368
    iget-object v10, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->livemode:Ljava/lang/Boolean;

    .line 369
    iget-object v11, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->base_url:Ljava/lang/String;

    .line 370
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 358
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/rest/ExpandedLocationReader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_sw_version(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->device_sw_version:Ljava/lang/String;

    return-object p0
.end method

.method public final device_type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->device_type:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final ip_address(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->ip_address:Ljava/lang/String;

    return-object p0
.end method

.method public final label(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final location(Lcom/stripe/proto/model/merchant/ApiLocationPb;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    return-object p0
.end method

.method public final object_(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->object_:Ljava/lang/String;

    return-object p0
.end method

.method public final serial_number(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->serial_number:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;->status:Ljava/lang/String;

    return-object p0
.end method
