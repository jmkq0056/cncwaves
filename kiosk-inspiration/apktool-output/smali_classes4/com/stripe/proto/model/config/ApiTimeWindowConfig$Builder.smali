.class public final Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApiTimeWindowConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ApiTimeWindowConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/ApiTimeWindowConfig;",
        "Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/ApiTimeWindowConfig;",
        "()V",
        "can_override_locally",
        "",
        "end_hour",
        "",
        "start_hour",
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
.field public can_override_locally:Z

.field public end_hour:I

.field public start_hour:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;->build()Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/ApiTimeWindowConfig;
    .locals 5

    .line 142
    new-instance v0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;

    .line 143
    iget v1, p0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;->start_hour:I

    .line 144
    iget v2, p0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;->end_hour:I

    .line 145
    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;->can_override_locally:Z

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 142
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/config/ApiTimeWindowConfig;-><init>(IIZLokio/ByteString;)V

    return-object v0
.end method

.method public final can_override_locally(Z)Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;->can_override_locally:Z

    return-object p0
.end method

.method public final end_hour(I)Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;
    .locals 0

    .line 130
    iput p1, p0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;->end_hour:I

    return-object p0
.end method

.method public final start_hour(I)Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;
    .locals 0

    .line 125
    iput p1, p0, Lcom/stripe/proto/model/config/ApiTimeWindowConfig$Builder;->start_hour:I

    return-object p0
.end method
