.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;
.super Lcom/squareup/wire/Message;
.source "AccessibilityEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Companion;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0008\u001d\u001e\u001f !\"#$B_\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J`\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u0010H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;",
        "start_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;",
        "language_changed_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;",
        "api_error_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;",
        "end_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;",
        "volume_changed_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;",
        "type",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;",
        "session_id",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "AccessibilitySessionApiErrorEvent",
        "AccessibilitySessionEndedEvent",
        "AccessibilitySessionLanguageChangedEvent",
        "AccessibilitySessionStartedEvent",
        "AccessibilitySessionVolumeChangedEvent",
        "Builder",
        "Companion",
        "SessionType",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionApiErrorEvent#ADAPTER"
        jsonName = "apiErrorEvent"
        oneofName = "event"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionEndedEvent#ADAPTER"
        jsonName = "endEvent"
        oneofName = "event"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionLanguageChangedEvent#ADAPTER"
        jsonName = "languageChangedEvent"
        oneofName = "event"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final session_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "sessionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionStartedEvent#ADAPTER"
        jsonName = "startEvent"
        oneofName = "event"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$SessionType#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionVolumeChangedEvent#ADAPTER"
        jsonName = "volumeChangedEvent"
        oneofName = "event"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Companion;

    .line 273
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 272
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 276
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 272
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session_id"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p8}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 32
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;

    .line 41
    iput-object p2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;

    .line 50
    iput-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;

    .line 59
    iput-object p4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;

    .line 68
    iput-object p5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;

    .line 80
    iput-object p6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;

    .line 91
    iput-object p7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->session_id:Ljava/lang/String;

    .line 103
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of start_event, language_changed_event, api_error_event, end_event, volume_changed_event may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 87
    sget-object p6, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;->SESSION_TYPE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    .line 99
    const-string p7, ""

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 100
    sget-object p8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_7
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 31
    invoke-direct/range {p1 .. p9}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 164
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 165
    iget-object p2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    .line 166
    iget-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 167
    iget-object p4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 168
    iget-object p5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 169
    iget-object p6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    .line 170
    iget-object p7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->session_id:Ljava/lang/String;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 171
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->unknownFields()Lokio/ByteString;

    move-result-object p8

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 163
    invoke-virtual/range {p2 .. p10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;
    .locals 10

    const-string v0, "type"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session_id"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 123
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 128
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 129
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 130
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;

    if-eq v1, v3, :cond_8

    return v2

    .line 131
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->session_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->session_id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 136
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->hashCode:I

    if-nez v0, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 139
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 141
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 142
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 143
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->session_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;
    .locals 2

    .line 109
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;->start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;

    .line 111
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;->language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;

    .line 112
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;->api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;->end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;->volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->session_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;->session_id:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start_event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "language_changed_event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->language_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api_error_event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->api_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end_event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->end_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "volume_changed_event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->volume_changed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;->session_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "AccessibilityEvent{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
