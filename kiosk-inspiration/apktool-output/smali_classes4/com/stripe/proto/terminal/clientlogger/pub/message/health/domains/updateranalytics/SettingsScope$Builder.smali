.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SettingsScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;",
        "()V",
        "change_brightness_level",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;",
        "change_screen_timeout",
        "change_theme",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "build",
        "common_release"
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
.field public change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

.field public change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

.field public change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;
    .locals 5

    .line 177
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 179
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 180
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 181
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 177
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;)V

    return-object v0
.end method

.method public final change_brightness_level(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 162
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    return-object p0
.end method

.method public final change_screen_timeout(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    return-object p0
.end method

.method public final change_theme(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 149
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    return-object p0
.end method
