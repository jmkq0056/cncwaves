.class public final Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;
.super Lcom/squareup/wire/Message;
.source "CotsUpdateReaderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;,
        Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;",
        "Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u001b\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001c\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;",
        "reader_feature_flags",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V",
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
        "proto_release"
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
            "Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ReaderFeatureFlags#ADAPTER"
        jsonName = "readerFeatureFlags"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->Companion:Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Companion;

    .line 91
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 90
    const-class v1, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 94
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 90
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;-><init>(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p2}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 28
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 37
    sget-object p2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;-><init>(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 70
    iget-object p1, p0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->copy(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;

    invoke-direct {v0, p1, p2}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;-><init>(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;

    invoke-virtual {p1}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-object p1, p1, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 55
    iget v0, p0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->hashCode:I

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 58
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 59
    iput v0, p0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->newBuilder()Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;
    .locals 2

    .line 40
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    .line 42
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 66
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_feature_flags="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CotsUpdateReaderResponse{"

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
