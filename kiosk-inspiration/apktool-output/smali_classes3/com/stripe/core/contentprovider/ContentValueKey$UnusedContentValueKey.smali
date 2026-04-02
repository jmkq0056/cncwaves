.class public final Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;
.super Lcom/stripe/core/contentprovider/ContentValueKey;
.source "AbstractProtoContentProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/contentprovider/ContentValueKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnusedContentValueKey"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;",
        "Lcom/stripe/core/contentprovider/ContentValueKey;",
        "()V",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;

    invoke-direct {v0}, Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;-><init>()V

    sput-object v0, Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;->INSTANCE:Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v0}, Lcom/stripe/core/contentprovider/ContentValueKey;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
