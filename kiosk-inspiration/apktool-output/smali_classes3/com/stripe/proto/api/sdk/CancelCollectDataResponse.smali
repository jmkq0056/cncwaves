.class public final Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;
.super Lcom/squareup/wire/Message;
.source "CancelCollectDataResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Builder;,
        Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;",
        "Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Builder;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Companion;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->Companion:Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Companion;

    .line 57
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 56
    const-class v1, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 60
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 56
    new-instance v3, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    return-void
.end method

.method public synthetic constructor <init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 26
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;-><init>(Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->copy(Lokio/ByteString;)Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lokio/ByteString;)Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;

    invoke-direct {v0, p1}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;-><init>(Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 36
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->newBuilder()Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Builder;
    .locals 2

    .line 29
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Builder;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/CancelCollectDataResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "CancelCollectDataResponse{}"

    return-object v0
.end method
