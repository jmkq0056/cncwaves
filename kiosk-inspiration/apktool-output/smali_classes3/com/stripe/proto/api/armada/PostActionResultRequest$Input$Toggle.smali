.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;
.super Lcom/squareup/wire/Message;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Toggle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ8\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;",
        "title",
        "",
        "description",
        "default_value",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;",
        "value_",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;)V",
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
        "Value",
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
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Toggle$Value#ADAPTER"
        jsonName = "defaultValue"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Toggle$Value#ADAPTER"
        declaredName = "value"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->Companion:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion;

    .line 2011
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 2010
    const-class v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 2014
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 2010
    new-instance v3, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default_value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value_"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1914
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1879
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    .line 1887
    iput-object p2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    .line 1895
    iput-object p3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 1904
    iput-object p4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    .line 1878
    const-string v0, ""

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 1903
    sget-object p3, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 1912
    sget-object p4, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 1913
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1878
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 1959
    iget-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 1960
    iget-object p2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 1961
    iget-object p3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 1962
    iget-object p4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 1963
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 1958
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;
    .locals 7

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default_value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value_"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1964
    new-instance v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1927
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1928
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1929
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1930
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1931
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    if-eq v1, v3, :cond_5

    return v2

    .line 1932
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    iget-object p1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1937
    iget v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->hashCode:I

    if-nez v0, :cond_0

    .line 1939
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1940
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1941
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1942
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1943
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1944
    iput v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1878
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->newBuilder()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;
    .locals 2

    .line 1916
    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;-><init>()V

    .line 1917
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->title:Ljava/lang/String;

    .line 1918
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->description:Ljava/lang/String;

    .line 1919
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 1920
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 1921
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1951
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "title="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1952
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "description="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1953
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "default_value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1954
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "value_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1955
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "Toggle{"

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
