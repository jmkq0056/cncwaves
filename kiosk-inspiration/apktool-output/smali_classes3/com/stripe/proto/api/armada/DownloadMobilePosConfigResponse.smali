.class public final Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;
.super Lcom/squareup/wire/Message;
.source "DownloadMobilePosConfigResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;,
        Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B?\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ@\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;",
        "config",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "reader_metadata",
        "Lcom/stripe/proto/api/armada/ReaderMetadata;",
        "device_trace_level",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel;",
        "reader_feature_flags",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final config:Lcom/stripe/proto/model/config/MobileClientConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.MobileClientConfig#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.DeviceTraceLevel#ADAPTER"
        jsonName = "deviceTraceLevel"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ReaderFeatureFlags#ADAPTER"
        jsonName = "readerFeatureFlags"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.ReaderMetadata#ADAPTER"
        jsonName = "readerMetadata"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->Companion:Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Companion;

    .line 164
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 163
    const-class v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 167
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 163
    new-instance v3, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;-><init>(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 30
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    .line 38
    iput-object p2, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    .line 47
    iput-object p3, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 56
    iput-object p4, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 65
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 29
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;-><init>(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 111
    iget-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 112
    iget-object p2, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 113
    iget-object p3, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 114
    iget-object p4, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 110
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->copy(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;-><init>(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 84
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-object p1, p1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 89
    iget v0, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->hashCode:I

    if-nez v0, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/MobileClientConfig;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/ReaderMetadata;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/DeviceTraceLevel;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 95
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 96
    iput v0, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->newBuilder()Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;
    .locals 2

    .line 68
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    .line 70
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    .line 71
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 72
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    .line 73
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_trace_level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_feature_flags="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DownloadMobilePosConfigResponse{"

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
