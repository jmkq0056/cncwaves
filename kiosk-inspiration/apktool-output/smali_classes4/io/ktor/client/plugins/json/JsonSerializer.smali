.class public interface abstract Lio/ktor/client/plugins/json/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/json/JsonSerializer$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Please use ContentNegotiation plugin and its converters: https://ktor.io/docs/migrating-2.html#serialization-client"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0001H\u0016J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000bH&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/client/plugins/json/JsonSerializer;",
        "",
        "read",
        "type",
        "Lio/ktor/util/reflect/TypeInfo;",
        "body",
        "Lio/ktor/utils/io/core/Input;",
        "write",
        "Lio/ktor/http/content/OutgoingContent;",
        "data",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "ktor-client-json"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract read(Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
.end method

.method public abstract write(Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;
.end method

.method public abstract write(Ljava/lang/Object;Lio/ktor/http/ContentType;)Lio/ktor/http/content/OutgoingContent;
.end method
