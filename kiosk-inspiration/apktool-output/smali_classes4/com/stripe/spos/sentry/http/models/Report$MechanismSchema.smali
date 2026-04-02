.class public final Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;
.super Ljava/lang/Object;
.source "Report.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/spos/sentry/http/models/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MechanismSchema"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$$serializer;,
        Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB!\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u00c1\u0001\u00a2\u0006\u0002\u0008\u001aR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;",
        "",
        "seen1",
        "",
        "handled",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Z)V",
        "getHandled",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
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
        "write$Self$sentry_http",
        "$serializer",
        "Companion",
        "sentry-http"
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
.field public static final Companion:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$Companion;


# instance fields
.field private final handled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->Companion:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 29
    sget-object p3, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$$serializer;->INSTANCE:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$$serializer;

    invoke-virtual {p3}, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;ZILjava/lang/Object;)Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->copy(Z)Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$sentry_http(Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 29
    iget-boolean p0, p0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    return v0
.end method

.method public final copy(Z)Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;
    .locals 1

    new-instance v0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    invoke-direct {v0, p1}, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    iget-boolean v1, p0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    iget-boolean p1, p1, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getHandled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MechanismSchema(handled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->handled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
