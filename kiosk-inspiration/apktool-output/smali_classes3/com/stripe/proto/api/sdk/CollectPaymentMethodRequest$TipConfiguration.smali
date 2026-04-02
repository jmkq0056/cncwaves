.class public final Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;
.super Lcom/squareup/wire/Message;
.source "CollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TipConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;,
        Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B)\u0012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;",
        "options",
        "",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;",
        "hide_custom_amount",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/util/List;ZLokio/ByteString;)V",
        "copy",
        "equals",
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
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final hide_custom_amount:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "hideCustomAmount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final options:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.CollectPaymentMethodRequest$TipOption#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->Companion:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Companion;

    .line 902
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 901
    const-class v1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 905
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 901
    new-instance v3, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;-><init>(Ljava/util/List;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;",
            ">;Z",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    sget-object v1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 804
    iput-boolean p2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hide_custom_amount:Z

    .line 825
    invoke-static {v0, p1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->options:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 800
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 813
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 799
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;-><init>(Ljava/util/List;ZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;Ljava/util/List;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 863
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->options:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 864
    iget-boolean p2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hide_custom_amount:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 865
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object p3

    .line 862
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->copy(Ljava/util/List;ZLokio/ByteString;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/util/List;ZLokio/ByteString;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;",
            ">;Z",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;-><init>(Ljava/util/List;ZLokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 837
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 838
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 839
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->options:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->options:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 840
    :cond_3
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hide_custom_amount:Z

    iget-boolean p1, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hide_custom_amount:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 845
    iget v0, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hashCode:I

    if-nez v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 848
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->options:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 849
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hide_custom_amount:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 850
    iput v0, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->newBuilder()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;
    .locals 2

    .line 828
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;-><init>()V

    .line 829
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->options:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->options:Ljava/util/List;

    .line 830
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hide_custom_amount:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->hide_custom_amount:Z

    .line 831
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 857
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->options:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->options:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hide_custom_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hide_custom_amount:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 859
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "TipConfiguration{"

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
