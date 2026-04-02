.class public final Lio/ktor/http/ContentType$Video;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/http/ContentType$Video;",
        "",
        "()V",
        "Any",
        "Lio/ktor/http/ContentType;",
        "getAny",
        "()Lio/ktor/http/ContentType;",
        "MP4",
        "getMP4",
        "MPEG",
        "getMPEG",
        "OGG",
        "getOGG",
        "QuickTime",
        "getQuickTime",
        "ktor-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Any:Lio/ktor/http/ContentType;

.field public static final INSTANCE:Lio/ktor/http/ContentType$Video;

.field private static final MP4:Lio/ktor/http/ContentType;

.field private static final MPEG:Lio/ktor/http/ContentType;

.field private static final OGG:Lio/ktor/http/ContentType;

.field private static final QuickTime:Lio/ktor/http/ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lio/ktor/http/ContentType$Video;

    invoke-direct {v0}, Lio/ktor/http/ContentType$Video;-><init>()V

    sput-object v0, Lio/ktor/http/ContentType$Video;->INSTANCE:Lio/ktor/http/ContentType$Video;

    .line 264
    new-instance v1, Lio/ktor/http/ContentType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "video"

    const-string v3, "*"

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lio/ktor/http/ContentType$Video;->Any:Lio/ktor/http/ContentType;

    .line 265
    new-instance v2, Lio/ktor/http/ContentType;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "video"

    const-string v4, "mpeg"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/ktor/http/ContentType$Video;->MPEG:Lio/ktor/http/ContentType;

    .line 266
    new-instance v3, Lio/ktor/http/ContentType;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "video"

    const-string v5, "mp4"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lio/ktor/http/ContentType$Video;->MP4:Lio/ktor/http/ContentType;

    .line 267
    new-instance v4, Lio/ktor/http/ContentType;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "video"

    const-string v6, "ogg"

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lio/ktor/http/ContentType$Video;->OGG:Lio/ktor/http/ContentType;

    .line 268
    new-instance v5, Lio/ktor/http/ContentType;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "video"

    const-string v7, "quicktime"

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lio/ktor/http/ContentType$Video;->QuickTime:Lio/ktor/http/ContentType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAny()Lio/ktor/http/ContentType;
    .locals 1

    .line 264
    sget-object v0, Lio/ktor/http/ContentType$Video;->Any:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getMP4()Lio/ktor/http/ContentType;
    .locals 1

    .line 266
    sget-object v0, Lio/ktor/http/ContentType$Video;->MP4:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getMPEG()Lio/ktor/http/ContentType;
    .locals 1

    .line 265
    sget-object v0, Lio/ktor/http/ContentType$Video;->MPEG:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getOGG()Lio/ktor/http/ContentType;
    .locals 1

    .line 267
    sget-object v0, Lio/ktor/http/ContentType$Video;->OGG:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getQuickTime()Lio/ktor/http/ContentType;
    .locals 1

    .line 268
    sget-object v0, Lio/ktor/http/ContentType$Video;->QuickTime:Lio/ktor/http/ContentType;

    return-object v0
.end method
