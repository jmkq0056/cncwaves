.class public final Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 KotlinxSerializationConverter.kt\nio/ktor/serialization/kotlinx/KotlinxSerializationConverter\n*L\n1#1,222:1\n54#2:223\n58#3:224\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $charset$inlined:Ljava/nio/charset/Charset;

.field final synthetic $contentType$inlined:Lio/ktor/http/ContentType;

.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $typeInfo$inlined:Lio/ktor/util/reflect/TypeInfo;

.field final synthetic $value$inlined:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$contentType$inlined:Lio/ktor/http/ContentType;

    iput-object p3, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$charset$inlined:Ljava/nio/charset/Charset;

    iput-object p4, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$typeInfo$inlined:Lio/ktor/util/reflect/TypeInfo;

    iput-object p5, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$value$inlined:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;

    iget v1, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;-><init>(Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p2, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->label:I

    const/4 v7, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v7, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    iget-object p2, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 223
    move-object v1, v6

    check-cast v1, Lkotlin/coroutines/Continuation;

    move-object v1, p1

    check-cast v1, Lio/ktor/serialization/kotlinx/KotlinxSerializationExtension;

    move p1, v2

    .line 224
    iget-object v2, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$contentType$inlined:Lio/ktor/http/ContentType;

    iget-object v3, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$charset$inlined:Ljava/nio/charset/Charset;

    iget-object v4, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$typeInfo$inlined:Lio/ktor/util/reflect/TypeInfo;

    iget-object v5, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2;->$value$inlined:Ljava/lang/Object;

    iput-object p2, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput p1, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->label:I

    invoke-interface/range {v1 .. v6}, Lio/ktor/serialization/kotlinx/KotlinxSerializationExtension;->serialize(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    :goto_1
    const/4 v1, 0x0

    .line 223
    iput-object v1, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput v7, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1$2$1;->label:I

    invoke-interface {p1, p2, v6}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_2
    return-object v0

    .line 53
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
