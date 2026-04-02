.class public final Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderSettingsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;",
        "()V",
        "text_to_speech_status",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;",
        "build",
        "internal_release"
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
.field public text_to_speech_status:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 231
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 234
    sget-object v0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;->TEXT_TO_SPEECH_STATUS_INVALID:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;->text_to_speech_status:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;->build()Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;
    .locals 3

    .line 241
    new-instance v0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;

    .line 242
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;->text_to_speech_status:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;

    .line 243
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 241
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;-><init>(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final text_to_speech_status(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;)Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;
    .locals 1

    const-string v0, "text_to_speech_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;->text_to_speech_status:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;

    return-object p0
.end method
