.class public final Lcom/stripe/stripeterminal/external/json/ApiErrorJsonAdapter;
.super Ljava/lang/Object;
.source "ApiErrorJsonAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/json/ApiErrorJsonAdapter;",
        "",
        "()V",
        "fromJson",
        "Lcom/stripe/stripeterminal/external/api/ApiError;",
        "jsonReader",
        "Lcom/squareup/moshi/JsonReader;",
        "delegate",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/stripe/stripeterminal/external/serialization/InnerError;",
        "toJson",
        "",
        "jsonWriter",
        "Lcom/squareup/moshi/JsonWriter;",
        "apiError",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Lcom/squareup/moshi/JsonReader;Lcom/squareup/moshi/JsonAdapter;)Lcom/stripe/stripeterminal/external/api/ApiError;
    .locals 2
    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonReader;",
            "Lcom/squareup/moshi/JsonAdapter<",
            "Lcom/stripe/stripeterminal/external/serialization/InnerError;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/api/ApiError;"
        }
    .end annotation

    const-string v0, "jsonReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiError;

    invoke-virtual {p2, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/api/ApiError;-><init>(Lcom/stripe/stripeterminal/external/serialization/InnerError;)V

    return-object v0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->nextNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/api/ApiError;

    return-object p1
.end method

.method public final toJson(Lcom/squareup/moshi/JsonWriter;Lcom/stripe/stripeterminal/external/api/ApiError;Lcom/squareup/moshi/JsonAdapter;)V
    .locals 1
    .annotation runtime Lcom/squareup/moshi/ToJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonWriter;",
            "Lcom/stripe/stripeterminal/external/api/ApiError;",
            "Lcom/squareup/moshi/JsonAdapter<",
            "Lcom/stripe/stripeterminal/external/serialization/InnerError;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jsonWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->nullValue()Lcom/squareup/moshi/JsonWriter;

    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/api/ApiError;->getError$public_release()Lcom/stripe/stripeterminal/external/serialization/InnerError;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
