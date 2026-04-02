.class public final Lcom/stripe/kmpcore/jackrabbitclient/extensions/CollectInputsExtensionsKt;
.super Ljava/lang/Object;
.source "CollectInputsExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0003\u001a\u0010\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008*\u00020\u0002\u00a8\u0006\t"
    }
    d2 = {
        "getDescription",
        "",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/Input;",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;",
        "getSkipButton",
        "getSubmitButton",
        "getTitle",
        "getToggles",
        "",
        "jackrabbitclient_release"
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
.method public static final getDescription(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object p0

    .line 26
    :cond_1
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    return-object p0

    .line 27
    :cond_3
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    return-object p0

    .line 28
    :cond_5
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    return-object v1

    :cond_6
    return-object p0

    .line 29
    :cond_7
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v1

    :cond_8
    return-object p0

    .line 30
    :cond_9
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    return-object v1

    :cond_a
    return-object p0

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final getDescription(Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static final getSkipButton(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSkipButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object p0

    .line 48
    :cond_1
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSkipButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    return-object p0

    .line 49
    :cond_3
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSkipButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    return-object p0

    .line 50
    :cond_5
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSkipButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    return-object v1

    :cond_6
    return-object p0

    .line 51
    :cond_7
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSkipButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v1

    :cond_8
    return-object p0

    .line 52
    :cond_9
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSkipButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    return-object v1

    :cond_a
    return-object p0

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final getSubmitButton(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSubmitButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object p0

    .line 37
    :cond_1
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSubmitButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    return-object p0

    .line 38
    :cond_3
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSubmitButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    return-object p0

    .line 39
    :cond_5
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;

    if-eqz v0, :cond_6

    return-object v1

    .line 40
    :cond_6
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSubmitButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    return-object v1

    :cond_7
    return-object p0

    .line 41
    :cond_8
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSubmitButtonText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    return-object v1

    :cond_9
    return-object p0

    :cond_a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final getTitle(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_1
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_2
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_3
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_4
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final getTitle(Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static final getToggles(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/Input;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getToggles()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getToggles()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 60
    :cond_1
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getToggles()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 61
    :cond_2
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getToggles()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 62
    :cond_3
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getToggles()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 63
    :cond_4
    instance-of v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getToggles()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
