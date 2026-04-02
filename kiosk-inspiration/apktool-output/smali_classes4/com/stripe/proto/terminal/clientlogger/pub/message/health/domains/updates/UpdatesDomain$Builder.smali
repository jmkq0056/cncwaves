.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdatesDomain.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "()V",
        "end_to_end",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
        "stage",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
        "updater_state",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;",
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
.field public end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;

.field public stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;

.field public updater_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;


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
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;
    .locals 5

    .line 142
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 143
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;

    .line 144
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;

    .line 145
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->updater_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 142
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;Lokio/ByteString;)V

    return-object v0
.end method

.method public final end_to_end(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;

    .line 131
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->updater_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;

    return-object p0
.end method

.method public final stage(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->updater_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;

    return-object p0
.end method

.method public final updater_state(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->updater_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;

    return-object p0
.end method
