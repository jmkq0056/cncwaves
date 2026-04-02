.class public final Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DebugConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/debugconfig/DebugConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/debugconfig/DebugConfig;",
        "Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/debugconfig/DebugConfig;",
        "()V",
        "environment_config",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;",
        "handoff_config",
        "Lcom/stripe/proto/model/debugconfig/HandoffConfig;",
        "navigation_config",
        "Lcom/stripe/proto/model/debugconfig/NavigationConfig;",
        "settings_ui_config",
        "Lcom/stripe/proto/model/debugconfig/SettingsUiConfig;",
        "update_config",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig;",
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
.field public environment_config:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;

.field public handoff_config:Lcom/stripe/proto/model/debugconfig/HandoffConfig;

.field public navigation_config:Lcom/stripe/proto/model/debugconfig/NavigationConfig;

.field public settings_ui_config:Lcom/stripe/proto/model/debugconfig/SettingsUiConfig;

.field public update_config:Lcom/stripe/proto/model/debugconfig/UpdateConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->build()Lcom/stripe/proto/model/debugconfig/DebugConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/debugconfig/DebugConfig;
    .locals 7

    .line 189
    new-instance v0, Lcom/stripe/proto/model/debugconfig/DebugConfig;

    .line 190
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->environment_config:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;

    .line 191
    iget-object v2, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->update_config:Lcom/stripe/proto/model/debugconfig/UpdateConfig;

    .line 192
    iget-object v3, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->navigation_config:Lcom/stripe/proto/model/debugconfig/NavigationConfig;

    .line 193
    iget-object v4, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->handoff_config:Lcom/stripe/proto/model/debugconfig/HandoffConfig;

    .line 194
    iget-object v5, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->settings_ui_config:Lcom/stripe/proto/model/debugconfig/SettingsUiConfig;

    .line 195
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 189
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/debugconfig/DebugConfig;-><init>(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;Lcom/stripe/proto/model/debugconfig/UpdateConfig;Lcom/stripe/proto/model/debugconfig/NavigationConfig;Lcom/stripe/proto/model/debugconfig/HandoffConfig;Lcom/stripe/proto/model/debugconfig/SettingsUiConfig;Lokio/ByteString;)V

    return-object v0
.end method

.method public final environment_config(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;)Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->environment_config:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;

    return-object p0
.end method

.method public final handoff_config(Lcom/stripe/proto/model/debugconfig/HandoffConfig;)Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->handoff_config:Lcom/stripe/proto/model/debugconfig/HandoffConfig;

    return-object p0
.end method

.method public final navigation_config(Lcom/stripe/proto/model/debugconfig/NavigationConfig;)Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->navigation_config:Lcom/stripe/proto/model/debugconfig/NavigationConfig;

    return-object p0
.end method

.method public final settings_ui_config(Lcom/stripe/proto/model/debugconfig/SettingsUiConfig;)Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->settings_ui_config:Lcom/stripe/proto/model/debugconfig/SettingsUiConfig;

    return-object p0
.end method

.method public final update_config(Lcom/stripe/proto/model/debugconfig/UpdateConfig;)Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;->update_config:Lcom/stripe/proto/model/debugconfig/UpdateConfig;

    return-object p0
.end method
