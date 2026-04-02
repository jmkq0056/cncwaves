.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;
.super Lcom/squareup/wire/Message;
.source "SettingsScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B3\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ4\u0010\u000b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;",
        "change_theme",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "change_brightness_level",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;",
        "change_screen_timeout",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;)V",
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
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Gauge#ADAPTER"
        jsonName = "changeBrightnessLevel"
        oneofName = "event"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Gauge#ADAPTER"
        jsonName = "changeScreenTimeout"
        oneofName = "event"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "changeTheme"
        oneofName = "event"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Companion;

    .line 188
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 187
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 191
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 187
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 54
    iput-object p2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 67
    iput-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 79
    invoke-static {p1, p2, p3}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of change_theme, change_brightness_level, change_screen_timeout may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 76
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 32
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 124
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 125
    iget-object p2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 126
    iget-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 123
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 95
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 104
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->hashCode:I

    if-nez v0, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 108
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 110
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;
    .locals 2

    .line 85
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 87
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 88
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 89
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "change_theme="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_theme:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "change_brightness_level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_brightness_level:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "change_screen_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;->change_screen_timeout:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "SettingsScope{"

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
