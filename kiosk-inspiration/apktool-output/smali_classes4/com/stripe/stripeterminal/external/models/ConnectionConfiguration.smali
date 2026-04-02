.class public abstract Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;,
        Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;,
        Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;,
        Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;,
        Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;,
        Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0006\u0015\u0016\u0017\u0018\u0019\u001aB\u0019\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J)\u0010\u000f\u001a\u00020\n2\u001f\u0008\u0002\u0010\u0010\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0012\u0012\u0004\u0012\u00020\u00130\u0011\u00a2\u0006\u0002\u0008\u0014H\u0004R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u0082\u0001\u0006\u001b\u001c\u001d\u001e\u001f \u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "",
        "locationRegistration",
        "Lcom/stripe/stripeterminal/internal/models/LocationRegistration;",
        "failIfInUse",
        "",
        "(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;Z)V",
        "getFailIfInUse",
        "()Z",
        "locationId",
        "",
        "getLocationId",
        "()Ljava/lang/String;",
        "getLocationRegistration",
        "()Lcom/stripe/stripeterminal/internal/models/LocationRegistration;",
        "buildToString",
        "builder",
        "Lkotlin/Function1;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "BluetoothConnectionConfiguration",
        "EmbeddedConnectionConfiguration",
        "HandoffConnectionConfiguration",
        "InternetConnectionConfiguration",
        "TapToPayConnectionConfiguration",
        "UsbConnectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;",
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


# instance fields
.field private final failIfInUse:Z

.field private final locationId:Ljava/lang/String;

.field private final locationRegistration:Lcom/stripe/stripeterminal/internal/models/LocationRegistration;


# direct methods
.method private constructor <init>(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->locationRegistration:Lcom/stripe/stripeterminal/internal/models/LocationRegistration;

    .line 13
    iput-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->failIfInUse:Z

    .line 19
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UseId;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UseId;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UseId;->getLocationId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_0
    sget-object p2, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;->INSTANCE:Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 18
    :goto_0
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->locationId:Ljava/lang/String;

    return-void

    .line 20
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;-><init>(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;-><init>(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;Z)V

    return-void
.end method

.method public static synthetic buildToString$default(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 12
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$buildToString$1;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$buildToString$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->buildToString(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: buildToString"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final buildToString(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failIfInUse="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->failIfInUse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locationRegistration="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->locationRegistration:Lcom/stripe/stripeterminal/internal/models/LocationRegistration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 148
    const-string p1, ", "

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    .line 147
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .line 149
    const-string p1, "}"

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 146
    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getFailIfInUse()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->failIfInUse:Z

    return v0
.end method

.method public final getLocationId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->locationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationRegistration()Lcom/stripe/stripeterminal/internal/models/LocationRegistration;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->locationRegistration:Lcom/stripe/stripeterminal/internal/models/LocationRegistration;

    return-object v0
.end method
