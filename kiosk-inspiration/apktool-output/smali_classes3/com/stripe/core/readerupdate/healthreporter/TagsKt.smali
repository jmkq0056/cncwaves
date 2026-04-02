.class public final Lcom/stripe/core/readerupdate/healthreporter/TagsKt;
.super Ljava/lang/Object;
.source "Tags.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010%\n\u0002\u0008\u0002\u001a0\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a \u0010\u0006\u001a\u00020\u0007*\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "getComprehensiveTags",
        "",
        "",
        "tags",
        "endpoint",
        "Lcom/stripe/core/readerupdate/healthreporter/Endpoint;",
        "addEnumTag",
        "",
        "",
        "tag",
        "readerupdate_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final addEnumTag(Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/core/readerupdate/healthreporter/Endpoint;",
            ")V"
        }
    .end annotation

    .line 8
    const-string v0, "endpoint"

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/healthreporter/Endpoint;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final getComprehensiveTags(Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/core/readerupdate/healthreporter/Endpoint;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 12
    invoke-static {p0, p1}, Lcom/stripe/core/readerupdate/healthreporter/TagsKt;->addEnumTag(Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V

    return-object p0
.end method
