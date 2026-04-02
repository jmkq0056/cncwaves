.class public abstract Lcom/squareup/wire/internal/FieldOrOneOfBinding;
.super Ljava/lang/Object;
.source "FieldOrOneOfBinding.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010(\u001a\u0004\u0018\u00010\u00032\u0006\u0010)\u001a\u00028\u0000H\u00a6\u0002\u00a2\u0006\u0002\u0010*J\u0017\u0010+\u001a\u0004\u0018\u00010\u00032\u0006\u0010,\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010*J\u0018\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u00010\u0003J\u0010\u00101\u001a\u00020\u00112\u0006\u0010.\u001a\u00020/H\u0002J\u001f\u00102\u001a\u0002032\u0006\u0010,\u001a\u00028\u00012\u0008\u00100\u001a\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u00104J\u001d\u00100\u001a\u0002032\u0006\u0010,\u001a\u00028\u00012\u0006\u00100\u001a\u00020\u0003H&\u00a2\u0006\u0002\u00104R\'\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00068FX\u0086\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u0012\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0012R\u0016\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\tR\u0012\u0010\u0016\u001a\u00020\u0017X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u000fR\u0012\u0010\u001c\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0012R\u0016\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\tR\u0012\u0010 \u001a\u00020!X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0012\u0010$\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u000fR\u0012\u0010&\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u0012\u00a8\u00065"
    }
    d2 = {
        "Lcom/squareup/wire/internal/FieldOrOneOfBinding;",
        "M",
        "B",
        "",
        "()V",
        "adapter",
        "Lcom/squareup/wire/ProtoAdapter;",
        "getAdapter$annotations",
        "getAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "declaredName",
        "",
        "getDeclaredName",
        "()Ljava/lang/String;",
        "isMap",
        "",
        "()Z",
        "isMessage",
        "keyAdapter",
        "getKeyAdapter",
        "label",
        "Lcom/squareup/wire/WireField$Label;",
        "getLabel",
        "()Lcom/squareup/wire/WireField$Label;",
        "name",
        "getName",
        "redacted",
        "getRedacted",
        "singleAdapter",
        "getSingleAdapter",
        "tag",
        "",
        "getTag",
        "()I",
        "wireFieldJsonName",
        "getWireFieldJsonName",
        "writeIdentityValues",
        "getWriteIdentityValues",
        "get",
        "message",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "getFromBuilder",
        "builder",
        "omitFromJson",
        "syntax",
        "Lcom/squareup/wire/Syntax;",
        "value",
        "omitIdentity",
        "set",
        "",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
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
.field private final adapter$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;

    invoke-direct {v0, p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;-><init>(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic getAdapter$annotations()V
    .locals 0

    return-void
.end method

.method private final omitIdentity(Lcom/squareup/wire/Syntax;)Z
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getWriteIdentityValues()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    sget-object v2, Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    if-ne p1, v0, :cond_2

    return v3

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->isMap()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    if-ne p1, v0, :cond_3

    return v3

    :cond_3
    return v1
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final getAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method

.method public abstract getDeclaredName()Ljava/lang/String;
.end method

.method public abstract getFromBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getKeyAdapter()Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getLabel()Lcom/squareup/wire/WireField$Label;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRedacted()Z
.end method

.method public abstract getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getTag()I
.end method

.method public abstract getWireFieldJsonName()Ljava/lang/String;
.end method

.method public abstract getWriteIdentityValues()Z
.end method

.method public abstract isMap()Z
.end method

.method public abstract isMessage()Z
.end method

.method public final omitFromJson(Lcom/squareup/wire/Syntax;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "syntax"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 82
    :cond_0
    invoke-direct {p0, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->omitIdentity(Lcom/squareup/wire/Syntax;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoAdapter;->getIdentity()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract value(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
