.class public final Lcom/stripe/proto/model/observability/schema/Payload$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Payload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/observability/schema/Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/observability/schema/Payload;",
        "Lcom/stripe/proto/model/observability/schema/Payload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/observability/schema/Payload$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/observability/schema/Payload;",
        "()V",
        "android",
        "Lcom/stripe/proto/model/observability/schema/android/Payload;",
        "android_reader",
        "Lcom/stripe/proto/model/observability/schema/androidreader/Payload;",
        "connectivity",
        "Lcom/stripe/proto/model/observability/schema/connectivity/Payload;",
        "crash",
        "Lcom/stripe/proto/model/observability/schema/crash/Payload;",
        "power",
        "Lcom/stripe/proto/model/observability/schema/power/Payload;",
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
.field public android:Lcom/stripe/proto/model/observability/schema/android/Payload;

.field public android_reader:Lcom/stripe/proto/model/observability/schema/androidreader/Payload;

.field public connectivity:Lcom/stripe/proto/model/observability/schema/connectivity/Payload;

.field public crash:Lcom/stripe/proto/model/observability/schema/crash/Payload;

.field public power:Lcom/stripe/proto/model/observability/schema/power/Payload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final android(Lcom/stripe/proto/model/observability/schema/android/Payload;)Lcom/stripe/proto/model/observability/schema/Payload$Builder;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android:Lcom/stripe/proto/model/observability/schema/android/Payload;

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android_reader:Lcom/stripe/proto/model/observability/schema/androidreader/Payload;

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->power:Lcom/stripe/proto/model/observability/schema/power/Payload;

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->crash:Lcom/stripe/proto/model/observability/schema/crash/Payload;

    .line 178
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->connectivity:Lcom/stripe/proto/model/observability/schema/connectivity/Payload;

    return-object p0
.end method

.method public final android_reader(Lcom/stripe/proto/model/observability/schema/androidreader/Payload;)Lcom/stripe/proto/model/observability/schema/Payload$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android_reader:Lcom/stripe/proto/model/observability/schema/androidreader/Payload;

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->power:Lcom/stripe/proto/model/observability/schema/power/Payload;

    .line 158
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android:Lcom/stripe/proto/model/observability/schema/android/Payload;

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->crash:Lcom/stripe/proto/model/observability/schema/crash/Payload;

    .line 160
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->connectivity:Lcom/stripe/proto/model/observability/schema/connectivity/Payload;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->build()Lcom/stripe/proto/model/observability/schema/Payload;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/observability/schema/Payload;
    .locals 7

    .line 200
    new-instance v0, Lcom/stripe/proto/model/observability/schema/Payload;

    .line 201
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android_reader:Lcom/stripe/proto/model/observability/schema/androidreader/Payload;

    .line 202
    iget-object v2, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->power:Lcom/stripe/proto/model/observability/schema/power/Payload;

    .line 203
    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android:Lcom/stripe/proto/model/observability/schema/android/Payload;

    .line 204
    iget-object v4, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->crash:Lcom/stripe/proto/model/observability/schema/crash/Payload;

    .line 205
    iget-object v5, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->connectivity:Lcom/stripe/proto/model/observability/schema/connectivity/Payload;

    .line 206
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 200
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/observability/schema/Payload;-><init>(Lcom/stripe/proto/model/observability/schema/androidreader/Payload;Lcom/stripe/proto/model/observability/schema/power/Payload;Lcom/stripe/proto/model/observability/schema/android/Payload;Lcom/stripe/proto/model/observability/schema/crash/Payload;Lcom/stripe/proto/model/observability/schema/connectivity/Payload;Lokio/ByteString;)V

    return-object v0
.end method

.method public final connectivity(Lcom/stripe/proto/model/observability/schema/connectivity/Payload;)Lcom/stripe/proto/model/observability/schema/Payload$Builder;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->connectivity:Lcom/stripe/proto/model/observability/schema/connectivity/Payload;

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android_reader:Lcom/stripe/proto/model/observability/schema/androidreader/Payload;

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->power:Lcom/stripe/proto/model/observability/schema/power/Payload;

    .line 195
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android:Lcom/stripe/proto/model/observability/schema/android/Payload;

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->crash:Lcom/stripe/proto/model/observability/schema/crash/Payload;

    return-object p0
.end method

.method public final crash(Lcom/stripe/proto/model/observability/schema/crash/Payload;)Lcom/stripe/proto/model/observability/schema/Payload$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->crash:Lcom/stripe/proto/model/observability/schema/crash/Payload;

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android_reader:Lcom/stripe/proto/model/observability/schema/androidreader/Payload;

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->power:Lcom/stripe/proto/model/observability/schema/power/Payload;

    .line 186
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android:Lcom/stripe/proto/model/observability/schema/android/Payload;

    .line 187
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->connectivity:Lcom/stripe/proto/model/observability/schema/connectivity/Payload;

    return-object p0
.end method

.method public final power(Lcom/stripe/proto/model/observability/schema/power/Payload;)Lcom/stripe/proto/model/observability/schema/Payload$Builder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->power:Lcom/stripe/proto/model/observability/schema/power/Payload;

    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android_reader:Lcom/stripe/proto/model/observability/schema/androidreader/Payload;

    .line 167
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->android:Lcom/stripe/proto/model/observability/schema/android/Payload;

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->crash:Lcom/stripe/proto/model/observability/schema/crash/Payload;

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Payload$Builder;->connectivity:Lcom/stripe/proto/model/observability/schema/connectivity/Payload;

    return-object p0
.end method
