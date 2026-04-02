.class public final Lcom/stripe/loggingmodels/TagKt;
.super Ljava/lang/Object;
.source "Tag.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTag.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tag.kt\ncom/stripe/loggingmodels/TagKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "toTags",
        "",
        "Lcom/stripe/loggingmodels/Tag;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "public_release"
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
.method public static final toTags(Lcom/stripe/proto/model/rest/ErrorWrapper;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 131
    iget-object p0, p0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz p0, :cond_2

    .line 132
    sget-object v1, Lcom/stripe/loggingmodels/Tag$StripeErrorType;->Companion:Lcom/stripe/loggingmodels/Tag$StripeErrorType$Companion;

    invoke-virtual {v1, p0}, Lcom/stripe/loggingmodels/Tag$StripeErrorType$Companion;->toStripeErrorType(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/loggingmodels/Tag$StripeErrorType;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/stripe/loggingmodels/Tag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    sget-object v1, Lcom/stripe/loggingmodels/Tag$StripeErrorCode;->Companion:Lcom/stripe/loggingmodels/Tag$StripeErrorCode$Companion;

    invoke-virtual {v1, p0}, Lcom/stripe/loggingmodels/Tag$StripeErrorCode$Companion;->toStripeErrorCode(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/loggingmodels/Tag$StripeErrorCode;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/stripe/loggingmodels/Tag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    sget-object v1, Lcom/stripe/loggingmodels/Tag$StripeDeclineCode;->Companion:Lcom/stripe/loggingmodels/Tag$StripeDeclineCode$Companion;

    invoke-virtual {v1, p0}, Lcom/stripe/loggingmodels/Tag$StripeDeclineCode$Companion;->toStripeDeclineCode(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/loggingmodels/Tag$StripeDeclineCode;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/stripe/loggingmodels/Tag;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
