.class public final Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;
.super Lcom/squareup/wire/Message;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardPresent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;,
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\'\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J(\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0008\u0010\u0011\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;",
        "generated_card",
        "",
        "emv_auth_data",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final emv_auth_data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "emvAuthData"
        redacted = true
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final generated_card:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "generatedCard"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->Companion:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Companion;

    .line 2007
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 2006
    const-class v1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 2010
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 2006
    new-instance v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1932
    sget-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1911
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->generated_card:Ljava/lang/String;

    .line 1922
    iput-object p2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->emv_auth_data:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 1931
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 1907
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1969
    iget-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->generated_card:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 1970
    iget-object p2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->emv_auth_data:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 1971
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object p3

    .line 1968
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->copy(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1972
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1943
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1944
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1945
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->generated_card:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->generated_card:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1946
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->emv_auth_data:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->emv_auth_data:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1951
    iget v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->hashCode:I

    if-nez v0, :cond_2

    .line 1953
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1954
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->generated_card:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1955
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->emv_auth_data:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 1956
    iput v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1907
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;
    .locals 2

    .line 1934
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;-><init>()V

    .line 1935
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->generated_card:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;->generated_card:Ljava/lang/String;

    .line 1936
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->emv_auth_data:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;->emv_auth_data:Ljava/lang/String;

    .line 1937
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1963
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->generated_card:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generated_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->generated_card:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1964
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->emv_auth_data:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "emv_auth_data=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1965
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CardPresent{"

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
