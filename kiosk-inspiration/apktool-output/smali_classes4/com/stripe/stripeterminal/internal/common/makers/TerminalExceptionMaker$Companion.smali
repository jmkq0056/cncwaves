.class public final Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker$Companion;
.super Ljava/lang/Object;
.source "TerminalExceptionMaker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker$Companion;",
        "",
        "()V",
        "fromReaderUpdateException",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "exception",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 8

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v0, p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 12
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 14
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 11
    const-string v3, "Update failed due to configuration error"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedBatteryLow;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 17
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 19
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 16
    const-string v3, "Update failed due to low battery"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 21
    :cond_1
    instance-of v0, p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedInterrupted;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 22
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 24
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 21
    const-string v3, "Update failed due to being interrupted"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 26
    :cond_2
    instance-of v0, p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedReaderError;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 27
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 29
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 26
    const-string v3, "Update failed since there is no connected reader"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 31
    :cond_3
    instance-of v0, p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 32
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 34
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 31
    const-string v3, "Update failed due to lack of internet connection"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 36
    :cond_4
    instance-of v0, p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UnexpectedError;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 37
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 39
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 36
    const-string v3, "Unexpected SDK error"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 41
    :cond_5
    instance-of v0, p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$Canceled;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 42
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 44
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 41
    const-string v3, "Update canceled"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 46
    :cond_6
    instance-of v0, p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 47
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 49
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 46
    const-string v3, "Not connected to reader"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
