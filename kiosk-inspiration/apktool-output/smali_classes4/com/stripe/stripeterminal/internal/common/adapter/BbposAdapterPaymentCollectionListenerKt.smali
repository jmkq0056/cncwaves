.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListenerKt;
.super Ljava/lang/Object;
.source "BbposAdapterPaymentCollectionListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListenerKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "translateReaderType",
        "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;",
        "readerType",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "adapter_release"
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
.method public static final translateReaderType(Lcom/stripe/hardware/ReaderConfiguration$ReaderType;)Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;
    .locals 1

    const-string v0, "readerType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListenerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 245
    sget-object p0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->MANUAL_ENTRY:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 244
    :cond_1
    sget-object p0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->TAP:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object p0

    .line 243
    :cond_2
    sget-object p0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->INSERT:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object p0

    .line 242
    :cond_3
    sget-object p0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->SWIPE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object p0
.end method
