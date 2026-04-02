.class public final Lcom/stripe/stripeterminal/external/models/OfflineStatus;
.super Ljava/lang/Object;
.source "OfflineStatus.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/OfflineStatus$$serializer;,
        Lcom/stripe/stripeterminal/external/models/OfflineStatus$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \"2\u00060\u0001j\u0002`\u0002:\u0002!\"B-\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\u0017\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J&\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u00c1\u0001\u00a2\u0006\u0002\u0008 R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\r\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "sdk",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V",
        "getReader",
        "()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "getSdk",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$public_release",
        "$serializer",
        "Companion",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/OfflineStatus$Companion;


# instance fields
.field private final reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

.field private final sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/OfflineStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/OfflineStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->Companion:Lcom/stripe/stripeterminal/external/models/OfflineStatus$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 20
    sget-object p4, Lcom/stripe/stripeterminal/external/models/OfflineStatus$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/OfflineStatus$$serializer;

    invoke-virtual {p4}, Lcom/stripe/stripeterminal/external/models/OfflineStatus$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    .line 23
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/OfflineStatus;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/OfflineStatus;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->copy(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/OfflineStatus;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 20
    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)Lcom/stripe/stripeterminal/external/models/OfflineStatus;
    .locals 1

    const-string v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/external/models/OfflineStatus;-><init>(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getReader()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    return-object v0
.end method

.method public final getSdk()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineStatus(reader="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->reader:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->sdk:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
