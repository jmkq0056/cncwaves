.class public final Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;
.super Lcom/squareup/wire/Message;
.source "ConfirmReusableCardResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;,
        Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBI\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJJ\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0008\u0010\u001a\u001a\u00020\u0006H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "request_id",
        "",
        "created_reusable_card",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "confirm_error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "created_reusuable_card",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;)V",
        "getCreated_reusuable_card$annotations",
        "()V",
        "getSystem_context$annotations",
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
            "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final confirm_error:Lcom/stripe/proto/model/sdk/Error;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.Error#ADAPTER"
        jsonName = "confirmError"
        oneofName = "reusable_card_result"
        schemaIndex = 0x3
        tag = 0x3
    .end annotation
.end field

.field public final created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentMethod#ADAPTER"
        jsonName = "createdReusableCard"
        oneofName = "reusable_card_result"
        schemaIndex = 0x2
        tag = 0x5
    .end annotation
.end field

.field public final created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentMethod#ADAPTER"
        jsonName = "createdReusuableCard"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x2
    .end annotation
.end field

.field public final request_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "requestId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x4
    .end annotation
.end field

.field public final system_context:Lcom/stripe/proto/model/sdk/SystemContext;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER"
        jsonName = "systemContext"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->Companion:Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Companion;

    .line 227
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 226
    const-class v1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 230
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 226
    new-instance v3, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;)V
    .locals 1

    const-string v0, "request_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 36
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 49
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->request_id:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 73
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 82
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 95
    invoke-static {p3, p4}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of created_reusable_card, confirm_error may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 57
    const-string p2, ""

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

    .line 92
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 32
    invoke-direct/range {p1 .. p7}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 148
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 149
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->request_id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 150
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 151
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 152
    iget-object p5, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 153
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 147
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->copy(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCreated_reusuable_card$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "created_reusuable_card is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getSystem_context$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;
    .locals 8

    const-string v0, "request_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 113
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->request_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->request_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 119
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 124
    iget v0, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->hashCode:I

    if-nez v0, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/SystemContext;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentMethod;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/Error;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentMethod;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 132
    iput v0, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->newBuilder()Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;
    .locals 2

    .line 101
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->request_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->request_id:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 107
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 139
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system_context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->request_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created_reusable_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirm_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created_reusuable_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ConfirmReusableCardResponse{"

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
