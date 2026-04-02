.class public abstract Lcom/stripe/jvmcore/restclient/RestResponse;
.super Ljava/lang/Object;
.source "RestResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/restclient/RestResponse$Companion;,
        Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;,
        Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;,
        Lcom/stripe/jvmcore/restclient/RestResponse$Success;,
        Lcom/stripe/jvmcore/restclient/RestResponse$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;*>;E:",
        "Lcom/squareup/wire/Message<",
        "TE;*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u001e*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002*\u0012\u0008\u0001\u0010\u0003*\u000c\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\u0008\u00030\u00022\u00020\u0004:\u0004\u001e\u001f !B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u001c\u001a\u00020\u0010H&J\u0006\u0010\u001d\u001a\u00020\u0010R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u0082\u0001\u0003\"#$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "M",
        "Lcom/squareup/wire/Message;",
        "E",
        "",
        "()V",
        "customMessageRedactor",
        "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "getCustomMessageRedactor",
        "()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "durationMillis",
        "",
        "getDurationMillis",
        "()Ljava/lang/Long;",
        "headers",
        "Ljava/util/TreeMap;",
        "",
        "getHeaders",
        "()Ljava/util/TreeMap;",
        "statusCode",
        "Lcom/stripe/proto/model/rest/StatusCode;",
        "getStatusCode",
        "()Lcom/stripe/proto/model/rest/StatusCode;",
        "url",
        "getUrl",
        "()Ljava/lang/String;",
        "shouldRetry",
        "",
        "toLogString",
        "toString",
        "Companion",
        "ParseError",
        "ServerError",
        "Success",
        "Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;",
        "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;",
        "Lcom/stripe/jvmcore/restclient/RestResponse$Success;",
        "base"
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
.field public static final Companion:Lcom/stripe/jvmcore/restclient/RestResponse$Companion;

.field private static final KEY_STRIPE_SHOULD_RETRY:Ljava/lang/String; = "stripe-should-retry"

.field private static final TAG:Ljava/lang/String; = "RestResponse"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/restclient/RestResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/restclient/RestResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/restclient/RestResponse;->Companion:Lcom/stripe/jvmcore/restclient/RestResponse$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/RestResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCustomMessageRedactor()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;
.end method

.method public abstract getDurationMillis()Ljava/lang/Long;
.end method

.method public abstract getHeaders()Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public final shouldRetry()Z
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse;->getHeaders()Ljava/util/TreeMap;

    move-result-object v0

    const-string v1, "stripe-should-retry"

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toBooleanStrictOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v0

    sget-object v3, Lcom/stripe/jvmcore/restclient/RestResponse$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/StatusCode;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 58
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract toLogString()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse;->toLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
