.class public final Lcom/stripe/ext/KafkaPublishConfiguration$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "KafkaPublishConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/KafkaPublishConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/KafkaPublishConfiguration;",
        "Lcom/stripe/ext/KafkaPublishConfiguration$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/ext/KafkaPublishConfiguration$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/KafkaPublishConfiguration;",
        "()V",
        "allow_publishing_later",
        "",
        "Ljava/lang/Boolean;",
        "envelope_collection",
        "",
        "sync",
        "wire_format",
        "Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;",
        "(Ljava/lang/Boolean;)Lcom/stripe/ext/KafkaPublishConfiguration$Builder;",
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
.field public allow_publishing_later:Ljava/lang/Boolean;

.field public envelope_collection:Ljava/lang/String;

.field public sync:Ljava/lang/Boolean;

.field public wire_format:Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final allow_publishing_later(Ljava/lang/Boolean;)Lcom/stripe/ext/KafkaPublishConfiguration$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->allow_publishing_later:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->build()Lcom/stripe/ext/KafkaPublishConfiguration;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/KafkaPublishConfiguration;
    .locals 6

    .line 266
    new-instance v0, Lcom/stripe/ext/KafkaPublishConfiguration;

    .line 267
    iget-object v1, p0, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->sync:Ljava/lang/Boolean;

    .line 268
    iget-object v2, p0, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->wire_format:Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;

    .line 269
    iget-object v3, p0, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->envelope_collection:Ljava/lang/String;

    .line 270
    iget-object v4, p0, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->allow_publishing_later:Ljava/lang/Boolean;

    .line 271
    invoke-virtual {p0}, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/stripe/ext/KafkaPublishConfiguration;-><init>(Ljava/lang/Boolean;Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final envelope_collection(Ljava/lang/String;)Lcom/stripe/ext/KafkaPublishConfiguration$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->envelope_collection:Ljava/lang/String;

    return-object p0
.end method

.method public final sync(Ljava/lang/Boolean;)Lcom/stripe/ext/KafkaPublishConfiguration$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->sync:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final wire_format(Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;)Lcom/stripe/ext/KafkaPublishConfiguration$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/stripe/ext/KafkaPublishConfiguration$Builder;->wire_format:Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;

    return-object p0
.end method
