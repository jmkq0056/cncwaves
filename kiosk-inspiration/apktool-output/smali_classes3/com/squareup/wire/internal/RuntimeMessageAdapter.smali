.class public final Lcom/squareup/wire/internal/RuntimeMessageAdapter;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RuntimeMessageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/wire/ProtoAdapter<",
        "TM;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRuntimeMessageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuntimeMessageAdapter.kt\ncom/squareup/wire/internal/RuntimeMessageAdapter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,229:1\n37#2,2:230\n11065#3:232\n11400#3,3:233\n11065#3:236\n11400#3,3:237\n11065#3:240\n11400#3,3:241\n*S KotlinDebug\n*F\n+ 1 RuntimeMessageAdapter.kt\ncom/squareup/wire/internal/RuntimeMessageAdapter\n*L\n40#1:230,2\n41#1:232\n41#1:233,3\n57#1:236\n57#1:237,3\n58#1:240\n58#1:241,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 ?*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0004:\u0001?B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\u001f\u001a\u00028\u00002\u0006\u0010 \u001a\u00020!H\u0016\u00a2\u0006\u0002\u0010\"J\u001d\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010(J\u001d\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020)2\u0006\u0010\'\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010*J\u0015\u0010+\u001a\u00020\u00102\u0006\u0010\'\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0008\u00100\u001a\u00020\u0010H\u0016J\u000b\u00101\u001a\u00028\u0001\u00a2\u0006\u0002\u00102J\u0015\u00103\u001a\u00028\u00002\u0006\u0010\'\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00104J\u0015\u00105\u001a\u00020\u00152\u0006\u0010\'\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00106JU\u00107\u001a\u00020$\"\u0004\u0008\u0002\u001082\u0008\u00109\u001a\u0004\u0018\u00018\u00002\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u0002H80\u00142\u0008\u0010;\u001a\u0004\u0018\u0001H82 \u0010<\u001a\u001c\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u00020$0=\u00a2\u0006\u0002\u0010>R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u0010\u0008\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n0\t\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR)\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0010\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n0\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0016\u0010\u001a\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001c\u001a\u00020\u0015*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006@"
    }
    d2 = {
        "Lcom/squareup/wire/internal/RuntimeMessageAdapter;",
        "M",
        "",
        "B",
        "Lcom/squareup/wire/ProtoAdapter;",
        "binding",
        "Lcom/squareup/wire/internal/MessageBinding;",
        "(Lcom/squareup/wire/internal/MessageBinding;)V",
        "fieldBindingsArray",
        "",
        "Lcom/squareup/wire/internal/FieldOrOneOfBinding;",
        "getFieldBindingsArray",
        "()[Lcom/squareup/wire/internal/FieldOrOneOfBinding;",
        "[Lcom/squareup/wire/internal/FieldOrOneOfBinding;",
        "fields",
        "",
        "",
        "getFields",
        "()Ljava/util/Map;",
        "jsonAlternateNames",
        "",
        "",
        "getJsonAlternateNames",
        "()Ljava/util/List;",
        "jsonNames",
        "getJsonNames",
        "messageType",
        "Lkotlin/reflect/KClass;",
        "jsonName",
        "getJsonName",
        "(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V",
        "encodedSize",
        "(Ljava/lang/Object;)I",
        "equals",
        "",
        "other",
        "hashCode",
        "newBuilder",
        "()Ljava/lang/Object;",
        "redact",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "toString",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "writeAllFields",
        "A",
        "message",
        "jsonAdapters",
        "redactedFieldsAdapter",
        "encodeValue",
        "Lkotlin/Function3;",
        "(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V",
        "Companion",
        "wire-runtime"
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
.field public static final Companion:Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;

.field private static final REDACTED:Ljava/lang/String; = "\u2588\u2588"


# instance fields
.field private final binding:Lcom/squareup/wire/internal/MessageBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/internal/MessageBinding<",
            "TM;TB;>;"
        }
    .end annotation
.end field

.field private final fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;>;"
        }
    .end annotation
.end field

.field private final jsonAlternateNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final messageType:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "-TM;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->Companion:Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/internal/MessageBinding;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/internal/MessageBinding<",
            "TM;TB;>;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 29
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getMessageType()Lkotlin/reflect/KClass;

    move-result-object v1

    .line 30
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getSyntax()Lcom/squareup/wire/Syntax;

    move-result-object v3

    .line 27
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    .line 26
    iput-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    .line 33
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getMessageType()Lkotlin/reflect/KClass;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    .line 34
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getFields()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    .line 40
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    .line 231
    new-array v1, v0, [Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 40
    iput-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 233
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 41
    invoke-virtual {p0, v4}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 41
    iput-object v1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonNames:Ljava/util/List;

    .line 56
    move-object p1, p0

    check-cast p1, Lcom/squareup/wire/internal/RuntimeMessageAdapter;

    .line 57
    iget-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 237
    array-length v2, p1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 57
    invoke-virtual {p0, v4}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 239
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 58
    iget-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 241
    array-length v3, p1

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    .line 60
    invoke-virtual {p0, v5}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getDeclaredName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getDeclaredName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 61
    :cond_2
    invoke-virtual {p0, v5}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 63
    :cond_3
    invoke-virtual {v5}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getDeclaredName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/squareup/wire/internal/_PlatformKt;->camelCase$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-virtual {p0, v5}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 66
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_3

    :cond_4
    move-object v5, v8

    .line 242
    :goto_3
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 243
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 56
    iput-object v2, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonAlternateNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoReader;",
            ")TM;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->newBuilder()Ljava/lang/Object;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 168
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 170
    iget-object v4, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    if-eqz v4, :cond_1

    .line 173
    :try_start_0
    invoke-virtual {v4}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->isMap()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    invoke-virtual {v4}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {v4}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    .line 178
    :goto_1
    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 179
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v5}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->value(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 183
    iget-object v6, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v6, v0, v3, v4, v5}, Lcom/squareup/wire/internal/MessageBinding;->addUnknownField(Ljava/lang/Object;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 187
    iget-object v5, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v0, v3, v6, v4}, Lcom/squareup/wire/internal/MessageBinding;->addUnknownField(Ljava/lang/Object;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    .line 192
    iget-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {p1, v0}, Lcom/squareup/wire/internal/MessageBinding;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoWriter;",
            "TM;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 100
    invoke-virtual {v1, p2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getTag()I

    move-result v1

    invoke-virtual {v3, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p2}, Lcom/squareup/wire/internal/MessageBinding;->unknownFields(Ljava/lang/Object;)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ReverseProtoWriter;",
            "TM;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p2}, Lcom/squareup/wire/internal/MessageBinding;->unknownFields(Ljava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 108
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    aget-object v1, v1, v0

    .line 110
    invoke-virtual {v1, p2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getTag()I

    move-result v1

    invoke-virtual {v3, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public encodedSize(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p1}, Lcom/squareup/wire/internal/MessageBinding;->getCachedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 89
    invoke-virtual {v2, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getTag()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p1}, Lcom/squareup/wire/internal/MessageBinding;->unknownFields(Ljava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 94
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p1, v1}, Lcom/squareup/wire/internal/MessageBinding;->setCachedSerializedSize(Ljava/lang/Object;I)V

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 144
    instance-of v0, p1, Lcom/squareup/wire/internal/RuntimeMessageAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/wire/internal/RuntimeMessageAdapter;

    iget-object p1, p1, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getFieldBindingsArray()[Lcom/squareup/wire/internal/FieldOrOneOfBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    return-object v0
.end method

.method public final getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public final getJsonAlternateNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonAlternateNames:Ljava/util/List;

    return-object v0
.end method

.method public final getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getWireFieldJsonName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getDeclaredName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getWireFieldJsonName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getJsonNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonNames:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final newBuilder()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0}, Lcom/squareup/wire/internal/MessageBinding;->newBuilder()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TM;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->newBuilder()Ljava/lang/Object;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 118
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getRedacted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v2

    sget-object v3, Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Field \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is required and cannot be redacted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->isMessage()Z

    move-result v2

    .line 124
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getRedacted()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v1, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getFromBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    .line 135
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {v2, v3}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 125
    :cond_4
    :goto_2
    invoke-virtual {v1, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getFromBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 128
    invoke-virtual {v1, p1, v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p1}, Lcom/squareup/wire/internal/MessageBinding;->clearUnknownFields(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p1}, Lcom/squareup/wire/internal/MessageBinding;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 154
    invoke-virtual {v3, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 155
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_1
    invoke-virtual {v3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getRedacted()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v4, "\u2588\u2588"

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/16 p1, 0x7d

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final writeAllFields(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TM;",
            "Ljava/util/List<",
            "+TA;>;TA;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "-TA;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jsonAdapters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeValue"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 207
    iget-object v3, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    aget-object v3, v3, v2

    .line 208
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 209
    invoke-virtual {p0}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getSyntax()Lcom/squareup/wire/Syntax;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->omitFromJson(Lcom/squareup/wire/Syntax;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 210
    invoke-virtual {v3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getRedacted()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p4, v3, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 220
    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-ne p1, p2, :cond_4

    .line 221
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "__redacted_fields"

    invoke-interface {p4, p1, v1, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
