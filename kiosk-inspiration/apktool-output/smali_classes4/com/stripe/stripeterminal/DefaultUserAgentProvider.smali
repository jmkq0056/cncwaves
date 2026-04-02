.class public final Lcom/stripe/stripeterminal/DefaultUserAgentProvider;
.super Ljava/lang/Object;
.source "DefaultUserAgentProvider.kt"

# interfaces
.implements Lcom/stripe/jvmcore/environment/UserAgentProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/DefaultUserAgentProvider;",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "applicationInformationProvider",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)V",
        "appInfo",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "getAppInfo",
        "()Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "appInfo$delegate",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "userAgent",
        "Lcom/stripe/proto/model/rest/UserAgent;",
        "getUserAgent",
        "()Lcom/stripe/proto/model/rest/UserAgent;",
        "userAgent$delegate",
        "Lkotlin/Lazy;",
        "get",
        "sdkmanager_publish"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

.field private final userAgent$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 10
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "appInfo"

    const-string v3, "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;"

    const-class v4, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)V
    .locals 1

    const-string v0, "applicationInformationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    .line 12
    new-instance p1, Lcom/stripe/stripeterminal/DefaultUserAgentProvider$userAgent$2;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/DefaultUserAgentProvider$userAgent$2;-><init>(Lcom/stripe/stripeterminal/DefaultUserAgentProvider;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->userAgent$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAppInfo(Lcom/stripe/stripeterminal/DefaultUserAgentProvider;)Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object p0

    return-object p0
.end method

.method private final getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    sget-object v1, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method private final getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->userAgent$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/UserAgent;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/proto/model/rest/UserAgent;
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;->getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v0

    return-object v0
.end method
