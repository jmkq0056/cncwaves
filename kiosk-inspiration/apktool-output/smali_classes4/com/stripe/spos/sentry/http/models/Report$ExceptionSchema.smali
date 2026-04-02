.class public final Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;
.super Ljava/lang/Object;
.source "Report.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/spos/sentry/http/models/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionSchema"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$$serializer;,
        Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 )2\u00020\u0001:\u0002()BA\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rB%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\nH\u00c6\u0003J1\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001J&\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u00c1\u0001\u00a2\u0006\u0002\u0008\'R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;",
        "",
        "seen1",
        "",
        "type",
        "",
        "value",
        "stacktrace",
        "Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;",
        "mechanism",
        "Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;)V",
        "getMechanism",
        "()Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;",
        "getStacktrace",
        "()Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;",
        "getType",
        "()Ljava/lang/String;",
        "getValue",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field public static final Companion:Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$Companion;


# instance fields
.field private final mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

.field private final stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

.field private final type:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->Companion:Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 21
    sget-object p6, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$$serializer;->INSTANCE:Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$$serializer;

    invoke-virtual {p6}, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    iput-object p5, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stacktrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mechanism"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    .line 26
    iput-object p4, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;ILjava/lang/Object;)Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;)Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$sentry_http(Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 21
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema$$serializer;->INSTANCE:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$$serializer;->INSTANCE:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    return-object v0
.end method

.method public final component4()Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;)Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stacktrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mechanism"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    iget-object p1, p1, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getMechanism()Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    return-object v0
.end method

.method public final getStacktrace()Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExceptionSchema(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stacktrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->stacktrace:Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mechanism="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;->mechanism:Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
