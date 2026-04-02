.class public final Lcom/stripe/cots/common/CotsErrorKt;
.super Ljava/lang/Object;
.source "CotsError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/common/CotsErrorKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toProto",
        "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;",
        "Lcom/stripe/cots/common/CotsError;",
        "common_release"
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
.method public static final toProto(Lcom/stripe/cots/common/CotsError;)Lcom/stripe/cots/aidlservice/CotsReader$CotsError;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/stripe/cots/common/CotsErrorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 36
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 35
    :pswitch_1
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->UNEXPECTED_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 34
    :pswitch_2
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 33
    :pswitch_3
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 32
    :pswitch_4
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 31
    :pswitch_5
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 30
    :pswitch_6
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 29
    :pswitch_7
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 28
    :pswitch_8
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 27
    :pswitch_9
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 26
    :pswitch_a
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    .line 25
    :pswitch_b
    sget-object p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->NONE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
