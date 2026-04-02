.class public final Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderSettingsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;",
        "()V",
        "accessibility_settings",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;",
        "accessibility_settings_error",
        "Lcom/stripe/proto/model/sdk/Error;",
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
.field public accessibility_settings:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;

.field public accessibility_settings_error:Lcom/stripe/proto/model/sdk/Error;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final accessibility_settings(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;)Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;->accessibility_settings:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;->accessibility_settings_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final accessibility_settings_error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;->accessibility_settings_error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;->accessibility_settings:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;->build()Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;
    .locals 4

    .line 118
    new-instance v0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;->accessibility_settings:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;

    .line 120
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;->accessibility_settings_error:Lcom/stripe/proto/model/sdk/Error;

    .line 121
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 118
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;-><init>(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-object v0
.end method
