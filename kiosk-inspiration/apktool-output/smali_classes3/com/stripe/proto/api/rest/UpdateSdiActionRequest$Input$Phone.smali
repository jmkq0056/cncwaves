.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;
.super Lcom/squareup/wire/Message;
.source "UpdateSdiActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001c\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;",
        "value_",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
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
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final value_:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        declaredName = "value"
        redacted = true
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->Companion:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Companion;

    .line 1708
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 1707
    const-class v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1711
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1707
    new-instance v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1656
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p2}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1646
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1655
    sget-object p2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 1645
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 1688
    iget-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->unknownFields()Lokio/ByteString;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->copy(Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1688
    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    invoke-direct {v0, p1, p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1666
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1667
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1668
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1673
    iget v0, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->hashCode:I

    if-nez v0, :cond_1

    .line 1675
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1676
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 1677
    iput v0, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1645
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->newBuilder()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;
    .locals 2

    .line 1658
    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;-><init>()V

    .line 1659
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;->value_:Ljava/lang/String;

    .line 1660
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1684
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "value_=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1685
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "Phone{"

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
