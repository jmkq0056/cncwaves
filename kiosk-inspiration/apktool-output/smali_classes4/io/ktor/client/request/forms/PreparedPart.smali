.class abstract Lio/ktor/client/request/forms/PreparedPart;
.super Ljava/lang/Object;
.source "FormDataContent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/request/forms/PreparedPart$ChannelPart;,
        Lio/ktor/client/request/forms/PreparedPart$InputPart;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00082\u0018\u00002\u00020\u0001:\u0002\u000c\rB\u0019\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u0082\u0001\u0002\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/client/request/forms/PreparedPart;",
        "",
        "headers",
        "",
        "size",
        "",
        "([BLjava/lang/Long;)V",
        "getHeaders",
        "()[B",
        "getSize",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "ChannelPart",
        "InputPart",
        "Lio/ktor/client/request/forms/PreparedPart$ChannelPart;",
        "Lio/ktor/client/request/forms/PreparedPart$InputPart;",
        "ktor-client-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final headers:[B

.field private final size:Ljava/lang/Long;


# direct methods
.method private constructor <init>([BLjava/lang/Long;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/request/forms/PreparedPart;->headers:[B

    iput-object p2, p0, Lio/ktor/client/request/forms/PreparedPart;->size:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>([BLjava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/ktor/client/request/forms/PreparedPart;-><init>([BLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getHeaders()[B
    .locals 1

    .line 149
    iget-object v0, p0, Lio/ktor/client/request/forms/PreparedPart;->headers:[B

    return-object v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 149
    iget-object v0, p0, Lio/ktor/client/request/forms/PreparedPart;->size:Ljava/lang/Long;

    return-object v0
.end method
