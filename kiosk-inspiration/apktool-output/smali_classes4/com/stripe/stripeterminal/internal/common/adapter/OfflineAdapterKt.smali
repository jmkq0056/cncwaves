.class public final Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;
.super Ljava/lang/Object;
.source "OfflineAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u001a\u000c\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0005\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0008\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0008\u001a>\u0010\n\u001a\u00020\u0005*\u00020\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u001a2\u0010\n\u001a\u00020\u0008*\u00020\u00132\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "entityId",
        "",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "hasOfflineId",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "offlineId",
        "requireOnlineId",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "requireOnlineOrOfflineId",
        "withOfflineDetails",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "storedAtMs",
        "",
        "requiresUpload",
        "cardPresentDetails",
        "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;",
        "amountDetails",
        "Lcom/stripe/stripeterminal/external/models/AmountDetails;",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "common_publish"
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
.method public static final entityId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    move-object p0, v0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final hasOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->offlineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static final offlineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final requireOnlineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    if-eqz p0, :cond_2

    return-object p0

    .line 97
    :cond_2
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 98
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 97
    const-string v2, "Cannot perform operation on PaymentIntent with null ID. PaymentIntent must be forwarded before proceeding."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public static final requireOnlineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    if-eqz p0, :cond_2

    return-object p0

    .line 115
    :cond_2
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 116
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 115
    const-string v2, "Cannot perform operation on SetupIntent with null ID. SetupIntent must be forwarded before proceeding."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public static final requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    if-nez v0, :cond_5

    .line 88
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->offlineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    return-object v2

    .line 89
    :cond_4
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 90
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 89
    const-string v5, "Payment intent ID cannot be null."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    :cond_5
    return-object v0
.end method

.method public static final requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    if-nez v0, :cond_6

    .line 106
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    return-object v2

    .line 107
    :cond_5
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 108
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 107
    const-string v5, "SetupIntent ID cannot be null."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    :cond_6
    return-object v0
.end method

.method public static final withOfflineDetails(Lcom/stripe/proto/model/rest/PaymentIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p0

    .line 44
    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->Companion:Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;->make(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;Z)Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)V

    return-object p0
.end method

.method public static final withOfflineDetails(Lcom/stripe/proto/model/rest/SetupIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p0

    .line 65
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;->make(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Z)Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)V

    return-object p0
.end method

.method public static synthetic withOfflineDetails$default(Lcom/stripe/proto/model/rest/PaymentIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x8

    const/4 p8, 0x0

    if-eqz p4, :cond_1

    move-object v5, p8

    goto :goto_0

    :cond_1
    move-object v5, p5

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_2

    move-object v6, p8

    goto :goto_1

    :cond_2
    move-object v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 36
    invoke-static/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->withOfflineDetails(Lcom/stripe/proto/model/rest/PaymentIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withOfflineDetails$default(Lcom/stripe/proto/model/rest/SetupIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->withOfflineDetails(Lcom/stripe/proto/model/rest/SetupIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p0

    return-object p0
.end method
