.class public final Lcom/stripe/loggingmodels/Tag$StripeErrorType$Companion;
.super Ljava/lang/Object;
.source "Tag.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/Tag$StripeErrorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTag.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tag.kt\ncom/stripe/loggingmodels/Tag$StripeErrorType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Tag$StripeErrorType$Companion;",
        "",
        "()V",
        "toStripeErrorType",
        "Lcom/stripe/loggingmodels/Tag$StripeErrorType;",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
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
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/loggingmodels/Tag$StripeErrorType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toStripeErrorType(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/loggingmodels/Tag$StripeErrorType;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->type:Ljava/lang/String;

    .line 77
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_3

    .line 78
    new-instance v0, Lcom/stripe/loggingmodels/Tag$StripeErrorType;

    invoke-direct {v0, p1, v1}, Lcom/stripe/loggingmodels/Tag$StripeErrorType;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_3
    return-object v1
.end method
