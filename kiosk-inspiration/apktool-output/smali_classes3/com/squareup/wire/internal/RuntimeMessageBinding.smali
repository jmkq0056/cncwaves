.class final Lcom/squareup/wire/internal/RuntimeMessageBinding;
.super Ljava/lang/Object;
.source "reflection.kt"

# interfaces
.implements Lcom/squareup/wire/internal/MessageBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$Builder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;",
        "Lcom/squareup/wire/internal/MessageBinding<",
        "TM;TB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005Ba\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000b\u0012\u001e\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\u000e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f0\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J/\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00028\u00012\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\'J\u0015\u0010(\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010)J\u0015\u0010*\u001a\u00020\u000e2\u0006\u0010+\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010,J\r\u0010-\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010.J\u001d\u0010/\u001a\u00020\u001e2\u0006\u0010+\u001a\u00028\u00002\u0006\u00100\u001a\u00020\u000eH\u0016\u00a2\u0006\u0002\u00101J\u0015\u00102\u001a\u0002032\u0006\u0010+\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00104R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\u000e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f0\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u00065"
    }
    d2 = {
        "Lcom/squareup/wire/internal/RuntimeMessageBinding;",
        "M",
        "Lcom/squareup/wire/Message;",
        "B",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/squareup/wire/internal/MessageBinding;",
        "messageType",
        "Lkotlin/reflect/KClass;",
        "builderType",
        "Ljava/lang/Class;",
        "createBuilder",
        "Lkotlin/Function0;",
        "fields",
        "",
        "",
        "Lcom/squareup/wire/internal/FieldOrOneOfBinding;",
        "typeUrl",
        "",
        "syntax",
        "Lcom/squareup/wire/Syntax;",
        "(Lkotlin/reflect/KClass;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V",
        "getFields",
        "()Ljava/util/Map;",
        "getMessageType",
        "()Lkotlin/reflect/KClass;",
        "getSyntax",
        "()Lcom/squareup/wire/Syntax;",
        "getTypeUrl",
        "()Ljava/lang/String;",
        "addUnknownField",
        "",
        "builder",
        "tag",
        "fieldEncoding",
        "Lcom/squareup/wire/FieldEncoding;",
        "value",
        "",
        "(Lcom/squareup/wire/Message$Builder;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V",
        "build",
        "(Lcom/squareup/wire/Message$Builder;)Lcom/squareup/wire/Message;",
        "clearUnknownFields",
        "(Lcom/squareup/wire/Message$Builder;)V",
        "getCachedSerializedSize",
        "message",
        "(Lcom/squareup/wire/Message;)I",
        "newBuilder",
        "()Lcom/squareup/wire/Message$Builder;",
        "setCachedSerializedSize",
        "size",
        "(Lcom/squareup/wire/Message;I)V",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/squareup/wire/Message;)Lokio/ByteString;",
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


# instance fields
.field private final builderType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TB;>;"
        }
    .end annotation
.end field

.field private final createBuilder:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TB;>;"
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

.field private final messageType:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final syntax:Lcom/squareup/wire/Syntax;

.field private final typeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TM;>;",
            "Ljava/lang/Class<",
            "TB;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TB;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntax"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->messageType:Lkotlin/reflect/KClass;

    .line 117
    iput-object p2, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->builderType:Ljava/lang/Class;

    .line 118
    iput-object p3, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->createBuilder:Lkotlin/jvm/functions/Function0;

    .line 119
    iput-object p4, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->fields:Ljava/util/Map;

    .line 120
    iput-object p5, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->typeUrl:Ljava/lang/String;

    .line 121
    iput-object p6, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->syntax:Lcom/squareup/wire/Syntax;

    return-void
.end method


# virtual methods
.method public addUnknownField(Lcom/squareup/wire/Message$Builder;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldEncoding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, p2, p3, p4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    return-void
.end method

.method public bridge synthetic addUnknownField(Ljava/lang/Object;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/squareup/wire/Message$Builder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->addUnknownField(Lcom/squareup/wire/Message$Builder;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    return-void
.end method

.method public build(Lcom/squareup/wire/Message$Builder;)Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TM;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p1, Lcom/squareup/wire/Message$Builder;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->build(Lcom/squareup/wire/Message$Builder;)Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1
.end method

.method public clearUnknownFields(Lcom/squareup/wire/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    return-void
.end method

.method public bridge synthetic clearUnknownFields(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/squareup/wire/Message$Builder;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->clearUnknownFields(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method public getCachedSerializedSize(Lcom/squareup/wire/Message;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getCachedSerializedSize$wire_runtime()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getCachedSerializedSize(Ljava/lang/Object;)I
    .locals 0

    .line 115
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->getCachedSerializedSize(Lcom/squareup/wire/Message;)I

    move-result p1

    return p1
.end method

.method public getFields()Ljava/util/Map;
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

    .line 119
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public getMessageType()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "TM;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->messageType:Lkotlin/reflect/KClass;

    return-object v0
.end method

.method public getSyntax()Lcom/squareup/wire/Syntax;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->syntax:Lcom/squareup/wire/Syntax;

    return-object v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->typeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->createBuilder:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->newBuilder()Lcom/squareup/wire/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCachedSerializedSize(Lcom/squareup/wire/Message;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;I)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, p2}, Lcom/squareup/wire/Message;->setCachedSerializedSize$wire_runtime(I)V

    return-void
.end method

.method public bridge synthetic setCachedSerializedSize(Ljava/lang/Object;I)V
    .locals 0

    .line 115
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->setCachedSerializedSize(Lcom/squareup/wire/Message;I)V

    return-void
.end method

.method public unknownFields(Lcom/squareup/wire/Message;)Lokio/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Lokio/ByteString;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic unknownFields(Ljava/lang/Object;)Lokio/ByteString;
    .locals 0

    .line 115
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->unknownFields(Lcom/squareup/wire/Message;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method
