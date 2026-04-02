.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;
.super Lcom/squareup/wire/Message;
.source "ApplicationLifecycleEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Companion;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0016\u0017\u0018\u0019\u001aB1\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ2\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;",
        "timestamp_ms",
        "",
        "crash",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;",
        "android_settings_intent",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;",
        "unknownFields",
        "Lokio/ByteString;",
        "(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "AndroidSettingsIntentEvent",
        "Builder",
        "Companion",
        "CrashEvent",
        "Exception",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent$AndroidSettingsIntentEvent#ADAPTER"
        jsonName = "androidSettingsIntent"
        oneofName = "data"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent$CrashEvent#ADAPTER"
        oneofName = "data"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final timestamp_ms:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        jsonName = "timestampMs"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Companion;

    .line 157
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 156
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 160
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 156
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;-><init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->timestamp_ms:J

    .line 44
    iput-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    .line 52
    iput-object p4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    .line 64
    invoke-static {p3, p4}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of crash, android_settings_intent may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move-object v3, p2

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v4, p2

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 61
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_3
    move-object v0, p0

    move-object v5, p5

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;-><init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 109
    iget-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->timestamp_ms:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 110
    iget-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 111
    iget-object p4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_3
    move-object v0, p0

    move-object v5, p5

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->copy(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;-><init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 82
    :cond_2
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->timestamp_ms:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->timestamp_ms:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 89
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->hashCode:I

    if-nez v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 92
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->timestamp_ms:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 95
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;
    .locals 3

    .line 70
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;-><init>()V

    .line 71
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->timestamp_ms:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->timestamp_ms:J

    .line 72
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    .line 73
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    .line 74
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 102
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timestamp_ms="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->timestamp_ms:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "crash="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->crash:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android_settings_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;->android_settings_intent:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ApplicationLifecycleEvent{"

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
