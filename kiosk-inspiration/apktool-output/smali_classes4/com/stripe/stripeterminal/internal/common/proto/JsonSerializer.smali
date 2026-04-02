.class public interface abstract Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J)\u0010\u0002\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0001*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0006H&\u00a2\u0006\u0002\u0010\u0007J)\u0010\u0008\u001a\u00020\u0004\"\u0008\u0008\u0000\u0010\t*\u00020\u0001*\u0002H\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0006H&\u00a2\u0006\u0002\u0010\nJ)\u0010\u000b\u001a\u00020\u0004\"\u0008\u0008\u0000\u0010\t*\u00020\u0001*\u0002H\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0006H&\u00a2\u0006\u0002\u0010\nJ)\u0010\u000c\u001a\u00020\u0004\"\u0008\u0008\u0000\u0010\t*\u00020\u0001*\u0002H\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0006H&\u00a2\u0006\u0002\u0010\n\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\r\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;",
        "",
        "fromJson",
        "Output",
        "",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;",
        "prettyPrint",
        "Input",
        "(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;",
        "toJson",
        "toJsonContentString",
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


# virtual methods
.method public abstract fromJson(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/reflect/KClass<",
            "TOutput;>;)TOutput;"
        }
    .end annotation
.end method

.method public abstract prettyPrint(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Input:",
            "Ljava/lang/Object;",
            ">(TInput;",
            "Lkotlin/reflect/KClass<",
            "TInput;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract toJson(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Input:",
            "Ljava/lang/Object;",
            ">(TInput;",
            "Lkotlin/reflect/KClass<",
            "TInput;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract toJsonContentString(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Input:",
            "Ljava/lang/Object;",
            ">(TInput;",
            "Lkotlin/reflect/KClass<",
            "TInput;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
