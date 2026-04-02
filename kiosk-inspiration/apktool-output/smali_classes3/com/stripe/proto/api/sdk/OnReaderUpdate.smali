.class public final Lcom/stripe/proto/api/sdk/OnReaderUpdate;
.super Lcom/squareup/wire/Message;
.source "OnReaderUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;,
        Lcom/stripe/proto/api/sdk/OnReaderUpdate$Companion;,
        Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;,
        Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;,
        Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate;",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0019\u001a\u001b\u001c\u001dBK\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u000eJL\u0010\u000f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;",
        "card_status_changed",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;",
        "offline_status_details_changed",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;",
        "reader_event",
        "Lcom/stripe/proto/api/sdk/ReaderEvent;",
        "token_status_changed",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;",
        "reader_feature_flags_bytes",
        "Lokio/ByteString;",
        "unknownFields",
        "(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;)V",
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
        "OnCardStatusChanged",
        "OnOfflineStatusDetailsChanged",
        "OnTokenStatusChanged",
        "internal_release"
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
            "Lcom/stripe/proto/api/sdk/OnReaderUpdate;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/OnReaderUpdate$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OnReaderUpdate$OnCardStatusChanged#ADAPTER"
        jsonName = "cardStatusChanged"
        oneofName = "updateMessage"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OnReaderUpdate$OnOfflineStatusDetailsChanged#ADAPTER"
        jsonName = "offlineStatusDetailsChanged"
        oneofName = "updateMessage"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.ReaderEvent#ADAPTER"
        jsonName = "readerEvent"
        oneofName = "updateMessage"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final reader_feature_flags_bytes:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        jsonName = "readerFeatureFlagsBytes"
        oneofName = "updateMessage"
        schemaIndex = 0x4
        tag = 0x6
    .end annotation
.end field

.field public final token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OnReaderUpdate$OnTokenStatusChanged#ADAPTER"
        jsonName = "tokenStatusChanged"
        oneofName = "updateMessage"
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->Companion:Lcom/stripe/proto/api/sdk/OnReaderUpdate$Companion;

    .line 218
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 217
    const-class v1, Lcom/stripe/proto/api/sdk/OnReaderUpdate;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 221
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 217
    new-instance v3, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;-><init>(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    .line 44
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    .line 53
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    .line 62
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    .line 71
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_feature_flags_bytes:Lokio/ByteString;

    .line 83
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of card_status_changed, offline_status_details_changed, reader_event, token_status_changed, reader_feature_flags_bytes may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 80
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p7}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;-><init>(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/OnReaderUpdate;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/OnReaderUpdate;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 136
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 137
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 138
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 139
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 140
    iget-object p5, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_feature_flags_bytes:Lokio/ByteString;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 141
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 135
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->copy(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/OnReaderUpdate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/OnReaderUpdate;
    .locals 8

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/stripe/proto/api/sdk/OnReaderUpdate;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;-><init>(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/OnReaderUpdate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/OnReaderUpdate;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_feature_flags_bytes:Lokio/ByteString;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_feature_flags_bytes:Lokio/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 112
    iget v0, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->hashCode:I

    if-nez v0, :cond_5

    .line 114
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/ReaderEvent;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_feature_flags_bytes:Lokio/ByteString;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    .line 120
    iput v0, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->newBuilder()Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;
    .locals 2

    .line 89
    new-instance v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_feature_flags_bytes:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->reader_feature_flags_bytes:Lokio/ByteString;

    .line 95
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_status_changed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->card_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_status_details_changed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->offline_status_details_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_event:Lcom/stripe/proto/api/sdk/ReaderEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "token_status_changed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->token_status_changed:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_feature_flags_bytes:Lokio/ByteString;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_feature_flags_bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate;->reader_feature_flags_bytes:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "OnReaderUpdate{"

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
