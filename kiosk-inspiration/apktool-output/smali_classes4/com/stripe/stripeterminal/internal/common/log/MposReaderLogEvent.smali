.class public interface abstract Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;
.super Ljava/lang/Object;
.source "MposReaderLogEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;,
        Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;,
        Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;,
        Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0004\n\u000b\u000c\rR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0004\u000e\u000f\u0010\u0011\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
        "",
        "eventData",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "getEventData",
        "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "Battery",
        "CoinCellVoltage",
        "Connect",
        "Disconnect",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;",
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


# virtual methods
.method public abstract getEventData()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
.end method

.method public abstract getReader()Lcom/stripe/stripeterminal/external/models/Reader;
.end method
