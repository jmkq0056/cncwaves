.class public final Lcom/stripe/proto/model/payments/EmvKernelVersion;
.super Lcom/squareup/wire/Message;
.source "EmvKernelVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;,
        Lcom/stripe/proto/model/payments/EmvKernelVersion$Companion;,
        Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;,
        Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion;",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0015\u0016\u0017\u0018B-\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ.\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/EmvKernelVersion;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;",
        "kernel_type",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;",
        "version",
        "",
        "vector_configuration",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;)V",
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
        "KernelType",
        "VectorConfiguration",
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
            "Lcom/stripe/proto/model/payments/EmvKernelVersion;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/payments/EmvKernelVersion$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.EmvKernelVersion$KernelType#ADAPTER"
        jsonName = "kernelType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.EmvKernelVersion$VectorConfiguration#ADAPTER"
        jsonName = "vectorConfiguration"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/payments/EmvKernelVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->Companion:Lcom/stripe/proto/model/payments/EmvKernelVersion$Companion;

    .line 153
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 152
    const-class v1, Lcom/stripe/proto/model/payments/EmvKernelVersion;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 156
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 152
    new-instance v3, Lcom/stripe/proto/model/payments/EmvKernelVersion$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/payments/EmvKernelVersion$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/payments/EmvKernelVersion;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/payments/EmvKernelVersion;-><init>(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;)V
    .locals 1

    const-string v0, "kernel_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vector_configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    .line 43
    iput-object p2, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->version:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 39
    sget-object p1, Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;->UNKNOWN_KERNEL:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 50
    const-string p2, ""

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 62
    sget-object p3, Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;->NONE:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 63
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 30
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/payments/EmvKernelVersion;-><init>(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/payments/EmvKernelVersion;Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/payments/EmvKernelVersion;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 105
    iget-object p1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 106
    iget-object p2, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->version:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 107
    iget-object p3, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvKernelVersion;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 104
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/payments/EmvKernelVersion;->copy(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;)Lcom/stripe/proto/model/payments/EmvKernelVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;)Lcom/stripe/proto/model/payments/EmvKernelVersion;
    .locals 1

    const-string v0, "kernel_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vector_configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/stripe/proto/model/payments/EmvKernelVersion;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/model/payments/EmvKernelVersion;-><init>(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/payments/EmvKernelVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvKernelVersion;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/payments/EmvKernelVersion;

    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/EmvKernelVersion;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/EmvKernelVersion;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    if-eq v1, v3, :cond_3

    return v2

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/EmvKernelVersion;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    iget-object p1, p1, Lcom/stripe/proto/model/payments/EmvKernelVersion;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    iget v0, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->hashCode:I

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvKernelVersion;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 88
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    iput v0, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvKernelVersion;->newBuilder()Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;
    .locals 2

    .line 66
    new-instance v0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    .line 68
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->version:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    .line 70
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvKernelVersion;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 98
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kernel_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->kernel_type:Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->version:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vector_configuration="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/EmvKernelVersion;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "EmvKernelVersion{"

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
