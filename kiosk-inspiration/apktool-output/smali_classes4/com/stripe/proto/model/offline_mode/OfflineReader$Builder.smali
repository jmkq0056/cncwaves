.class public final Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/offline_mode/OfflineReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "()V",
        "account_id",
        "",
        "created_at",
        "",
        "id",
        "label",
        "last_activated_at",
        "reader_offline_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;",
        "serial_number",
        "stripe_id",
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
.field public account_id:Ljava/lang/String;

.field public created_at:J

.field public id:J

.field public label:Ljava/lang/String;

.field public last_activated_at:J

.field public reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

.field public serial_number:Ljava/lang/String;

.field public stripe_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->serial_number:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->stripe_id:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->account_id:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final account_id(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
    .locals 1

    const-string v0, "account_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->build()Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/offline_mode/OfflineReader;
    .locals 13

    .line 237
    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 238
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->serial_number:Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->stripe_id:Ljava/lang/String;

    .line 240
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->last_activated_at:J

    .line 241
    iget-object v5, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->account_id:Ljava/lang/String;

    .line 242
    iget-wide v6, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->id:J

    .line 243
    iget-wide v8, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->created_at:J

    .line 244
    iget-object v10, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    .line 245
    iget-object v11, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->label:Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 237
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/offline_mode/OfflineReader;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final created_at(J)Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
    .locals 0

    .line 223
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->created_at:J

    return-object p0
.end method

.method public final id(J)Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
    .locals 0

    .line 218
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->id:J

    return-object p0
.end method

.method public final label(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
    .locals 1

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final last_activated_at(J)Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
    .locals 0

    .line 208
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->last_activated_at:J

    return-object p0
.end method

.method public final reader_offline_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;)Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    return-object p0
.end method

.method public final serial_number(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
    .locals 1

    const-string v0, "serial_number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->serial_number:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_id(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
    .locals 1

    const-string v0, "stripe_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->stripe_id:Ljava/lang/String;

    return-object p0
.end method
