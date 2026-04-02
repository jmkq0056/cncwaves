.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;
.super Lcom/squareup/wire/Message;
.source "FormsConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;,
        Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Companion;,
        Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;,
        Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;,
        Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;,
        Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u001b\u001c\u001d\u001e\u001f BG\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJH\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\nH\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0011\u0010\u0010R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;",
        "sdi_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;",
        "jackrabbit_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;",
        "handoff_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;",
        "interstitial_timeout_seconds",
        "",
        "interstitial_timeout_ms",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;)V",
        "getHandoff_config$annotations",
        "()V",
        "getInterstitial_timeout_seconds$annotations",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "Handoff",
        "JackRabbit",
        "Sdi",
        "SupportedSdkVersions",
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
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$Handoff#ADAPTER"
        jsonName = "handoffConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final interstitial_timeout_ms:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "interstitialTimeoutMs"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final interstitial_timeout_seconds:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "interstitialTimeoutSeconds"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$JackRabbit#ADAPTER"
        jsonName = "jackrabbitConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$Sdi#ADAPTER"
        jsonName = "sdiConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->Companion:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Companion;

    .line 208
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 207
    const-class v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 211
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 207
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    .line 44
    iput-object p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    .line 56
    iput-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    .line 66
    iput p4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_seconds:I

    .line 79
    iput p5, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_ms:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 88
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p7}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 138
    iget-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 139
    iget-object p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 140
    iget-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 141
    iget p4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_seconds:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 142
    iget p5, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_ms:I

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 143
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 137
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->copy(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getHandoff_config$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "handoff_config is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getInterstitial_timeout_seconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "interstitial_timeout_seconds is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;
    .locals 8

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 108
    :cond_5
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_seconds:I

    iget v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_seconds:I

    if-eq v1, v3, :cond_6

    return v2

    .line 109
    :cond_6
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_ms:I

    iget p1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_ms:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 114
    iget v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->hashCode:I

    if-nez v0, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 120
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_seconds:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 121
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_ms:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    iput v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;
    .locals 2

    .line 91
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    .line 95
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_seconds:I

    iput v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->interstitial_timeout_seconds:I

    .line 96
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_ms:I

    iput v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->interstitial_timeout_ms:I

    .line 97
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdi_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jackrabbit_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handoff_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interstitial_timeout_seconds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_seconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interstitial_timeout_ms="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->interstitial_timeout_ms:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "FormsConfigPb{"

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
