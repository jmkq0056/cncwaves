.class public final Lio/ktor/util/AttributesKt;
.super Ljava/lang/Object;
.source "Attributes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Attributes.kt\nio/ktor/util/AttributesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n*S KotlinDebug\n*F\n+ 1 Attributes.kt\nio/ktor/util/AttributesKt\n*L\n109#1:115,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002*J\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0000\u0010\u0005\"\u0008\u0012\u0004\u0012\u0002H\u00050\u00062\u0008\u0012\u0004\u0012\u0002H\u00050\u0006B*\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u001c\u0008\n\u0012\u0018\u0008\u000bB\u0014\u0008\u000b\u0012\u0006\u0008\u000c\u0012\u0002\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "putAll",
        "",
        "Lio/ktor/util/Attributes;",
        "other",
        "EquatableAttributeKey",
        "T",
        "Lio/ktor/util/AttributeKey;",
        "Lkotlin/Deprecated;",
        "message",
        "Please use `AttributeKey` class instead",
        "replaceWith",
        "Lkotlin/ReplaceWith;",
        "imports",
        "expression",
        "AttributeKey",
        "ktor-utils"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic EquatableAttributeKey$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `AttributeKey` class instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AttributeKey"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final putAll(Lio/ktor/util/Attributes;Lio/ktor/util/Attributes;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface {p1}, Lio/ktor/util/Attributes;->getAllKeys()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 115
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/util/AttributeKey;

    .line 111
    const-string v2, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lio/ktor/util/Attributes;->get(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
