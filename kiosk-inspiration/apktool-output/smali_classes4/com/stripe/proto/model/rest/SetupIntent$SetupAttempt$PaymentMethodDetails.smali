.class public final Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;
.super Lcom/squareup/wire/Message;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentMethodDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;,
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;,
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B3\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ4\u0010\u000b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;",
        "type",
        "",
        "card_present",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;",
        "interac_present",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;)V",
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
        "CardPresent",
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
            "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent#ADAPTER"
        jsonName = "cardPresent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent#ADAPTER"
        jsonName = "interacPresent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->Companion:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Companion;

    .line 1844
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 1843
    const-class v1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1847
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1843
    new-instance v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1751
    sget-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1719
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->type:Ljava/lang/String;

    .line 1729
    iput-object p2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    .line 1741
    iput-object p3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 1750
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 1715
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 1792
    iget-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 1793
    iget-object p2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 1794
    iget-object p3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 1795
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 1791
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->copy(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1796
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1763
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1764
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1765
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1766
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1767
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1772
    iget v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->hashCode:I

    if-nez v0, :cond_3

    .line 1774
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1775
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->type:Ljava/lang/String;

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

    .line 1776
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1777
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 1778
    iput v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1715
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;
    .locals 2

    .line 1753
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;-><init>()V

    .line 1754
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->type:Ljava/lang/String;

    .line 1755
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    .line 1756
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    .line 1757
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1785
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1786
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_present="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1787
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interac_present="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1788
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PaymentMethodDetails{"

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
