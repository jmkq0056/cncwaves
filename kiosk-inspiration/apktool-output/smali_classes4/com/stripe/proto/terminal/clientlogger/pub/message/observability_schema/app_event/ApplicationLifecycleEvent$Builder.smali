.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApplicationLifecycleEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;",
        "()V",
        "android_settings_intent",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;",
        "crash",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;",
        "timestamp_ms",
        "",
        "build",
        "terminal_release"
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
.field public android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

.field public crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

.field public timestamp_ms:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final android_settings_intent(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;
    .locals 6

    .line 145
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 146
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->timestamp_ms:J

    .line 147
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    .line 148
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 145
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;-><init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;)V

    return-object v0
.end method

.method public final crash(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    return-object p0
.end method

.method public final timestamp_ms(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;
    .locals 0

    .line 129
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->timestamp_ms:J

    return-object p0
.end method
