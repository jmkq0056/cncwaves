.class public final Lcom/stripe/proto/model/rest/SetupIntent$NextAction;
.super Lcom/squareup/wire/Message;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NextAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;,
        Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Companion;,
        Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B=\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ>\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;",
        "redirect_to_url",
        "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;",
        "type",
        "",
        "use_stripe_sdk",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V",
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
        "RedirectToUrl",
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
            "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.SetupIntent$NextAction$RedirectToUrl#ADAPTER"
        jsonName = "redirectToUrl"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final use_stripe_sdk:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "useStripeSdk"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->Companion:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Companion;

    .line 955
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 954
    const-class v1, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 958
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 954
    new-instance v3, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;-><init>(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "use_stripe_sdk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    sget-object v1, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 828
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    .line 840
    iput-object p2, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->type:Ljava/lang/String;

    .line 862
    invoke-static {v0, p3}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->use_stripe_sdk:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 847
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 848
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 824
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;-><init>(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/SetupIntent$NextAction;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 904
    iget-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 905
    iget-object p2, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->type:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 906
    iget-object p3, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->use_stripe_sdk:Ljava/util/Map;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 907
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 903
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->copy(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$NextAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;"
        }
    .end annotation

    const-string v0, "use_stripe_sdk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;-><init>(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 875
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 876
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 878
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 879
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->use_stripe_sdk:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->use_stripe_sdk:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 884
    iget v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->hashCode:I

    if-nez v0, :cond_2

    .line 886
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 887
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 888
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 889
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->use_stripe_sdk:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 890
    iput v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 824
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;
    .locals 2

    .line 865
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;-><init>()V

    .line 866
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    .line 867
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->type:Ljava/lang/String;

    .line 868
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->use_stripe_sdk:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->use_stripe_sdk:Ljava/util/Map;

    .line 869
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 897
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "redirect_to_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->use_stripe_sdk:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "use_stripe_sdk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$NextAction;->use_stripe_sdk:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "NextAction{"

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
