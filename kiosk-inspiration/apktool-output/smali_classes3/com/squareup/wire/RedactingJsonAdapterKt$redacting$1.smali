.class public final Lcom/squareup/wire/RedactingJsonAdapterKt$redacting$1;
.super Lcom/squareup/moshi/JsonAdapter;
.source "RedactingJsonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/RedactingJsonAdapterKt;->redacting(Lcom/squareup/moshi/JsonAdapter;)Lcom/squareup/moshi/JsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/JsonAdapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0017\u0010\u0002\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0003\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010\u0005J\u001f\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/squareup/wire/RedactingJsonAdapterKt$redacting$1",
        "Lcom/squareup/moshi/JsonAdapter;",
        "fromJson",
        "reader",
        "Lcom/squareup/moshi/JsonReader;",
        "(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;",
        "toJson",
        "",
        "writer",
        "Lcom/squareup/moshi/JsonWriter;",
        "value",
        "(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V",
        "wire-moshi-adapter"
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
.field final synthetic $delegate:Lcom/squareup/moshi/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/JsonAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/moshi/JsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/squareup/wire/RedactingJsonAdapterKt$redacting$1;->$delegate:Lcom/squareup/moshi/JsonAdapter;

    .line 24
    invoke-direct {p0}, Lcom/squareup/moshi/JsonAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonReader;",
            ")TT;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/squareup/wire/RedactingJsonAdapterKt$redacting$1;->$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-class v0, Lcom/squareup/wire/RedactedTag;

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonWriter;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/RedactedTag;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/squareup/wire/RedactedTag;

    invoke-direct {v0}, Lcom/squareup/wire/RedactedTag;-><init>()V

    .line 33
    const-class v1, Lcom/squareup/wire/RedactedTag;

    invoke-virtual {p1, v1, v0}, Lcom/squareup/moshi/JsonWriter;->setTag(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/wire/RedactedTag;->getEnabled()Z

    move-result v1

    const/4 v2, 0x1

    .line 36
    invoke-virtual {v0, v2}, Lcom/squareup/wire/RedactedTag;->setEnabled(Z)V

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/squareup/wire/RedactingJsonAdapterKt$redacting$1;->$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v0, v1}, Lcom/squareup/wire/RedactedTag;->setEnabled(Z)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/RedactedTag;->setEnabled(Z)V

    throw p1
.end method
