.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LogData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0012\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;",
        "()V",
        "battery_state",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;",
        "exception",
        "",
        "message",
        "tamper_coin_cell_battery_state",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;",
        "test_log",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;",
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
.field public battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

.field public exception:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

.field public test_log:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->message:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->exception:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final battery_state(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "battery_state is deprecated"
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->test_log:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;

    .line 195
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;
    .locals 7

    .line 210
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->message:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->exception:Ljava/lang/String;

    .line 213
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->test_log:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;

    .line 214
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 215
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 216
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 210
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lokio/ByteString;)V

    return-object v0
.end method

.method public final exception(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->exception:Ljava/lang/String;

    return-object p0
.end method

.method public final message(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final tamper_coin_cell_battery_state(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "tamper_coin_cell_battery_state is deprecated"
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->test_log:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;

    .line 206
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    return-object p0
.end method

.method public final test_log(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->test_log:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    return-object p0
.end method
