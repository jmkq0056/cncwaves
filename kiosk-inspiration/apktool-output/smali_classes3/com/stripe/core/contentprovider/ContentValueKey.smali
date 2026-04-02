.class public abstract Lcom/stripe/core/contentprovider/ContentValueKey;
.super Ljava/lang/Object;
.source "AbstractProtoContentProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;,
        Lcom/stripe/core/contentprovider/ContentValueKey$ValidContentValueKey;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u0013\u0008\u0004\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/core/contentprovider/ContentValueKey;",
        "",
        "value",
        "",
        "(Ljava/lang/String;)V",
        "getValue$contentprovider_release",
        "()Ljava/lang/String;",
        "UnusedContentValueKey",
        "ValidContentValueKey",
        "Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;",
        "Lcom/stripe/core/contentprovider/ContentValueKey$ValidContentValueKey;",
        "contentprovider_release"
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
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/core/contentprovider/ContentValueKey;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    move-object p1, p3

    .line 65
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/stripe/core/contentprovider/ContentValueKey;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/core/contentprovider/ContentValueKey;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue$contentprovider_release()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/stripe/core/contentprovider/ContentValueKey;->value:Ljava/lang/String;

    return-object v0
.end method
