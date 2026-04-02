.class public final Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OnReaderUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/OnReaderUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate;",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate;",
        "()V",
        "card_status_changed",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;",
        "offline_status_details_changed",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;",
        "reader_event",
        "Lcom/stripe/proto/api/sdk/ReaderEvent;",
        "reader_feature_flags_bytes",
        "Lokio/ByteString;",
        "token_status_changed",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;",
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
.field public card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

.field public offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

.field public reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

.field public reader_feature_flags_bytes:Lokio/ByteString;

.field public token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->build()Lcom/stripe/proto/api/sdk/OnReaderUpdate;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/OnReaderUpdate;
    .locals 7

    .line 205
    new-instance v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    .line 207
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    .line 208
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    .line 209
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    .line 210
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_feature_flags_bytes:Lokio/ByteString;

    .line 211
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 205
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;-><init>(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card_status_changed(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;)Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    .line 164
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_feature_flags_bytes:Lokio/ByteString;

    return-object p0
.end method

.method public final offline_status_details_changed(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;)Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    .line 172
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_feature_flags_bytes:Lokio/ByteString;

    return-object p0
.end method

.method public final reader_event(Lcom/stripe/proto/api/sdk/ReaderEvent;)Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    .line 181
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    .line 183
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_feature_flags_bytes:Lokio/ByteString;

    return-object p0
.end method

.method public final reader_feature_flags_bytes(Lokio/ByteString;)Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_feature_flags_bytes:Lokio/ByteString;

    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    .line 199
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    .line 200
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    .line 201
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    return-object p0
.end method

.method public final token_status_changed(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;)Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    .line 190
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    .line 191
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    .line 192
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_feature_flags_bytes:Lokio/ByteString;

    return-object p0
.end method
