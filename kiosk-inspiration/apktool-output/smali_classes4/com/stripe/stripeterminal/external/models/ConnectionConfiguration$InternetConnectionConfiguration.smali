.class public final Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;
.super Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
.source "ConnectionConfiguration.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternetConnectionConfiguration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "failIfInUse",
        "",
        "internetReaderListener",
        "Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;",
        "(ZLcom/stripe/stripeterminal/external/callable/InternetReaderListener;)V",
        "getInternetReaderListener",
        "()Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;",
        "toString",
        "",
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
.field private final internetReaderListener:Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;


# direct methods
.method public constructor <init>(ZLcom/stripe/stripeterminal/external/callable/InternetReaderListener;)V
    .locals 2

    .line 35
    sget-object v0, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;->INSTANCE:Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;

    check-cast v0, Lcom/stripe/stripeterminal/internal/models/LocationRegistration;

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, v0, p1, v1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;-><init>(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;->internetReaderListener:Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/stripe/stripeterminal/external/callable/InternetReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;-><init>(ZLcom/stripe/stripeterminal/external/callable/InternetReaderListener;)V

    return-void
.end method


# virtual methods
.method public final getInternetReaderListener()Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;->internetReaderListener:Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->buildToString$default(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
