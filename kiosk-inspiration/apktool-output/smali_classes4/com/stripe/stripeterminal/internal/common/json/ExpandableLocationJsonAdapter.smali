.class public final Lcom/stripe/stripeterminal/internal/common/json/ExpandableLocationJsonAdapter;
.super Ljava/lang/Object;
.source "ExpandableLocationJsonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/json/ExpandableLocationJsonAdapter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/json/ExpandableLocationJsonAdapter;",
        "",
        "()V",
        "fromJson",
        "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;",
        "jsonReader",
        "Lcom/squareup/moshi/JsonReader;",
        "delegate",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "toJson",
        "",
        "jsonWriter",
        "Lcom/squareup/moshi/JsonWriter;",
        "location",
        "common_publish"
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
.method public final fromJson(Lcom/squareup/moshi/JsonReader;Lcom/squareup/moshi/JsonAdapter;)Lcom/stripe/stripeterminal/external/models/ExpandableLocation;
    .locals 2
    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonReader;",
            "Lcom/squareup/moshi/JsonAdapter<",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;"
        }
    .end annotation

    const-string v0, "jsonReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/json/ExpandableLocationJsonAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/squareup/moshi/JsonReader$Token;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    .line 20
    new-instance p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nextString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    return-object p2

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->nextNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    return-object p1

    .line 18
    :cond_2
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    invoke-virtual {p2, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/models/Location;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;-><init>(Lcom/stripe/stripeterminal/external/models/Location;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    return-object v0
.end method

.method public final toJson(Lcom/squareup/moshi/JsonWriter;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Lcom/squareup/moshi/JsonAdapter;)V
    .locals 1
    .annotation runtime Lcom/squareup/moshi/ToJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonWriter;",
            "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;",
            "Lcom/squareup/moshi/JsonAdapter<",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jsonWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_0
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;

    if-eqz p3, :cond_1

    check-cast p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/moshi/JsonWriter;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->nullValue()Lcom/squareup/moshi/JsonWriter;

    :cond_2
    return-void
.end method
