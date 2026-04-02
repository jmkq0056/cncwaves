.class public final Lcom/stripe/core/stripeterminal/storage/TraceEntity;
.super Ljava/lang/Object;
.source "TraceEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/stripeterminal/storage/TraceEntity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010$\n\u0002\u00082\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 L2\u00020\u0001:\u0001LB\u0081\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0011J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0017\u00105\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000fH\u00c6\u0003J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0005H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010:\u001a\u00020\u0005H\u00c6\u0003J\t\u0010;\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010=\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010-J\u000b\u0010>\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u00a0\u0001\u0010?\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010@J\u0013\u0010A\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010D\u001a\u00020EH\u00d6\u0001J\u0014\u0010F\u001a\u00020G2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020J0IJ\t\u0010K\u001a\u00020\u0005H\u00d6\u0001R \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015R\u001e\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013\"\u0004\u0008\u0019\u0010\u0015R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013\"\u0004\u0008\u001b\u0010\u0015R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013\"\u0004\u0008\u001d\u0010\u0015R \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0013\"\u0004\u0008\u001f\u0010\u0015R\u001e\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0013\"\u0004\u0008!\u0010\u0015R \u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0013\"\u0004\u0008#\u0010\u0015R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R,\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00100\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001e\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010%\"\u0004\u00082\u0010\'\u00a8\u0006M"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/storage/TraceEntity;",
        "",
        "startTimeMs",
        "",
        "id",
        "",
        "request",
        "response",
        "service",
        "method",
        "exception",
        "totalTimeMs",
        "sessionId",
        "serialNumber",
        "tags",
        "",
        "uid",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V",
        "getException",
        "()Ljava/lang/String;",
        "setException",
        "(Ljava/lang/String;)V",
        "getId",
        "setId",
        "getMethod",
        "setMethod",
        "getRequest",
        "setRequest",
        "getResponse",
        "setResponse",
        "getSerialNumber",
        "setSerialNumber",
        "getService",
        "setService",
        "getSessionId",
        "setSessionId",
        "getStartTimeMs",
        "()J",
        "setStartTimeMs",
        "(J)V",
        "getTags",
        "()Ljava/util/Map;",
        "setTags",
        "(Ljava/util/Map;)V",
        "getTotalTimeMs",
        "()Ljava/lang/Long;",
        "setTotalTimeMs",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getUid",
        "setUid",
        "component1",
        "component10",
        "component11",
        "component12",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Lcom/stripe/core/stripeterminal/storage/TraceEntity;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toModel",
        "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
        "logPoint",
        "",
        "Lcom/stripe/loggingmodels/LogPoint;",
        "toString",
        "Companion",
        "stripeterminal_release"
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
.field public static final Companion:Lcom/stripe/core/stripeterminal/storage/TraceEntity$Companion;


# instance fields
.field private exception:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private request:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private service:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private startTimeMs:J

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalTimeMs:Ljava/lang/Long;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/stripeterminal/storage/TraceEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->Companion:Lcom/stripe/core/stripeterminal/storage/TraceEntity$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    .line 11
    iput-object p3, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    .line 15
    iput-object p7, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    .line 16
    iput-object p8, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    .line 17
    iput-object p9, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    .line 18
    iput-object p10, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    .line 19
    iput-object p11, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    .line 20
    iput-object p12, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    .line 21
    iput-wide p13, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->uid:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p15

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v15, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v15, p13

    :goto_0
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 9
    invoke-direct/range {v2 .. v16}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/stripeterminal/storage/TraceEntity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JILjava/lang/Object;)Lcom/stripe/core/stripeterminal/storage/TraceEntity;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-wide v14, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->uid:J

    move-wide/from16 p14, v14

    goto :goto_b

    :cond_b
    move-wide/from16 p14, p13

    :goto_b
    move-object/from16 p1, v0

    move-wide/from16 p2, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    invoke-virtual/range {p1 .. p15}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Lcom/stripe/core/stripeterminal/storage/TraceEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public final component12()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->uid:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Lcom/stripe/core/stripeterminal/storage/TraceEntity;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/stripe/core/stripeterminal/storage/TraceEntity;"
        }
    .end annotation

    const-string v0, "id"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;

    move-wide/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;

    iget-wide v3, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    iget-wide v5, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->uid:J

    iget-wide v5, p1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->uid:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getException()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequest()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponse()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getService()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTimeMs()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    return-wide v0
.end method

.method public final getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public final getTotalTimeMs()Ljava/lang/Long;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUid()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->uid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setException(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public final setMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    return-void
.end method

.method public final setRequest(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    return-void
.end method

.method public final setResponse(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    return-void
.end method

.method public final setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public final setService(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public final setStartTimeMs(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    return-void
.end method

.method public final setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    return-void
.end method

.method public final setTotalTimeMs(Ljava/lang/Long;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    return-void
.end method

.method public final setUid(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->uid:J

    return-void
.end method

.method public final toModel(Ljava/util/List;)Lcom/stripe/jvmcore/logging/terminal/log/Span;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/LogPoint;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/Span;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "logPoint"

    move-object/from16 v14, p1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v2, Lcom/stripe/jvmcore/logging/terminal/log/Span;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;

    .line 45
    iget-wide v3, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    .line 46
    iget-object v5, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    .line 47
    iget-object v6, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    .line 48
    iget-object v7, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    .line 49
    iget-object v8, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    .line 50
    iget-object v9, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    .line 51
    iget-object v10, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    .line 52
    iget-object v11, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    .line 53
    iget-object v12, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    .line 54
    iget-object v13, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    .line 56
    iget-object v15, v0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    .line 44
    invoke-virtual/range {v2 .. v15}, Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;->recreateFromDb(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/stripe/jvmcore/logging/terminal/log/Span;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TraceEntity(startTimeMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->startTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->request:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->service:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->exception:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->totalTimeMs:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serialNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->serialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->tags:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
