.class public final Lcom/stripe/stripeterminal/internal/common/makers/ReaderDisplayMessageMaker$Companion;
.super Ljava/lang/Object;
.source "ReaderDisplayMessageMaker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/makers/ReaderDisplayMessageMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/makers/ReaderDisplayMessageMaker$Companion;",
        "",
        "()V",
        "fromCoreObject",
        "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;",
        "message",
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
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
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderDisplayMessageMaker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromCoreObject(Lcom/stripe/hardware/status/ReaderDisplayMessage;)Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderDisplayMessage;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
