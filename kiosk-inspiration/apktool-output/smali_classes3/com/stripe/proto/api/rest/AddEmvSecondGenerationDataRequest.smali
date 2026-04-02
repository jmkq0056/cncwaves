.class public final Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;
.super Lcom/squareup/wire/Message;
.source "AddEmvSecondGenerationDataRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;,
        Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BO\u0012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJU\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u0005H\u0016R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0012\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;",
        "expand",
        "",
        "",
        "is_approved",
        "",
        "second_generation_data",
        "rejection_reason",
        "id",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;",
        "equals",
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
            "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final expand:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final is_approved:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "isApproved"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final rejection_reason:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "rejectionReason"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final second_generation_data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "secondGenerationData"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->Companion:Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Companion;

    .line 219
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 218
    const-class v1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 222
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 218
    new-instance v3, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p2, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->is_approved:Ljava/lang/Boolean;

    .line 49
    iput-object p3, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->second_generation_data:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->rejection_reason:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->id:Ljava/lang/String;

    .line 90
    invoke-static {v0, p1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->expand:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

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

    .line 78
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 33
    invoke-direct/range {p2 .. p8}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 140
    iget-object p1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->expand:Ljava/util/List;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 141
    iget-object p2, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->is_approved:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 142
    iget-object p3, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->second_generation_data:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 143
    iget-object p4, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->rejection_reason:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 144
    iget-object p5, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->id:Ljava/lang/String;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 139
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->copy(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->expand:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->expand:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->is_approved:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->is_approved:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->second_generation_data:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->second_generation_data:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->rejection_reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->rejection_reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 111
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 116
    iget v0, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->hashCode:I

    if-nez v0, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->expand:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->is_approved:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 121
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->second_generation_data:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 122
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->rejection_reason:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 123
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->id:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 124
    iput v0, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->newBuilder()Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;
    .locals 2

    .line 93
    new-instance v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->expand:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;->expand:Ljava/util/List;

    .line 95
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->is_approved:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;->is_approved:Ljava/lang/Boolean;

    .line 96
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->second_generation_data:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;->second_generation_data:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->rejection_reason:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;->rejection_reason:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;->id:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->expand:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expand="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->expand:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->is_approved:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_approved="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->is_approved:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->second_generation_data:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "second_generation_data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->second_generation_data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->rejection_reason:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rejection_reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->rejection_reason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->id:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "AddEmvSecondGenerationDataRequest{"

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
