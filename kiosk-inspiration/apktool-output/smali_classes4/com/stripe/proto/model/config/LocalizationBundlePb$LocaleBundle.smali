.class public final Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;
.super Lcom/squareup/wire/Message;
.source "LocalizationBundlePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/LocalizationBundlePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleBundle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;,
        Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Companion;,
        Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;",
        "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B)\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;",
        "locale",
        "Lcom/stripe/proto/model/config/Locale;",
        "strings",
        "",
        "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;)V",
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
        "LocaleString",
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
            "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final locale:Lcom/stripe/proto/model/config/Locale;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.Locale#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final strings:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.LocalizationBundlePb$LocaleBundle$LocaleString#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->Companion:Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Companion;

    .line 236
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 235
    const-class v1, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 239
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 235
    new-instance v3, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;-><init>(Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/config/Locale;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 147
    iput-object p1, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->locale:Lcom/stripe/proto/model/config/Locale;

    .line 165
    invoke-static {v0, p2}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->strings:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 154
    sget-object p1, Lcom/stripe/proto/model/config/Locale;->INVALID_LOCALE:Lcom/stripe/proto/model/config/Locale;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 155
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 156
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 146
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;-><init>(Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 203
    iget-object p1, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->locale:Lcom/stripe/proto/model/config/Locale;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 204
    iget-object p2, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->strings:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->unknownFields()Lokio/ByteString;

    move-result-object p3

    .line 202
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->copy(Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/config/Locale;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;"
        }
    .end annotation

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;-><init>(Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 177
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->locale:Lcom/stripe/proto/model/config/Locale;

    iget-object v3, p1, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->locale:Lcom/stripe/proto/model/config/Locale;

    if-eq v1, v3, :cond_3

    return v2

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->strings:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->strings:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 185
    iget v0, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->hashCode:I

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 188
    iget-object v1, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->locale:Lcom/stripe/proto/model/config/Locale;

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 189
    iget-object v1, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->strings:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    iput v0, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->newBuilder()Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;
    .locals 2

    .line 168
    new-instance v0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->locale:Lcom/stripe/proto/model/config/Locale;

    iput-object v1, v0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;->locale:Lcom/stripe/proto/model/config/Locale;

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->strings:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;->strings:Ljava/util/List;

    .line 171
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 197
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locale="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->locale:Lcom/stripe/proto/model/config/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v2, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->strings:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strings="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;->strings:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "LocaleBundle{"

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
