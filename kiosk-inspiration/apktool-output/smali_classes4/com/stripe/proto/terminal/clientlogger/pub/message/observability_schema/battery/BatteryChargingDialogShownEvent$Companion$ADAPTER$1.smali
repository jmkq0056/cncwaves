.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "BatteryChargingDialogShownEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBatteryChargingDialogShownEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BatteryChargingDialogShownEvent.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,138:1\n463#2,7:139\n*S KotlinDebug\n*F\n+ 1 BatteryChargingDialogShownEvent.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent$Companion$ADAPTER$1\n*L\n115#1:139,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 95
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/message/observability_schema/battery/battery_model.proto"

    .line 89
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.message.observability_schema.battery.BatteryChargingDialogShownEvent"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;
    .locals 6

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 141
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 117
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 121
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    invoke-direct {v0, v2, v3, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;-><init>(DLokio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->percentage:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->percentage:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 105
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 110
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->percentage:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->percentage:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 99
    iget-wide v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->percentage:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->percentage:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 89
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p1

    .line 127
    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;->copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;DLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    move-result-object p1

    return-object p1
.end method
