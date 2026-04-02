.class public final Lcom/stripe/core/readerconnection/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerconnection/ConnectionManager$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cJ$\u0010\u000e\u001a\u00020\t2\u0014\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0016\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/core/readerconnection/ConnectionManager;",
        "",
        "()V",
        "<set-?>",
        "Lcom/stripe/core/readerconnection/ConnectionSummary;",
        "summary",
        "getSummary",
        "()Lcom/stripe/core/readerconnection/ConnectionSummary;",
        "endOperation",
        "",
        "startConnect",
        "reader",
        "Lcom/stripe/core/hardware/Reader;",
        "startDisconnect",
        "startDiscovery",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "connectionType",
        "Lcom/stripe/core/hardware/ConnectionType;",
        "startReaderInfo",
        "startReboot",
        "startSession",
        "Companion",
        "readerconnection_release"
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
.field public static final Companion:Lcom/stripe/core/readerconnection/ConnectionManager$Companion;

.field public static final TAG:Ljava/lang/String; = "ConnectionManager"


# instance fields
.field private summary:Lcom/stripe/core/readerconnection/ConnectionSummary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/readerconnection/ConnectionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionManager;->Companion:Lcom/stripe/core/readerconnection/ConnectionManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionSummary;

    sget-object v2, Lcom/stripe/core/readerconnection/ConnectionState;->NONE:Lcom/stripe/core/readerconnection/ConnectionState;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionManager;->summary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-void
.end method


# virtual methods
.method public final endOperation()V
    .locals 10

    .line 66
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "ConnectionManager"

    const-string v2, "endOperation"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v3, Lcom/stripe/core/readerconnection/ConnectionSummary;

    sget-object v5, Lcom/stripe/core/readerconnection/ConnectionState;->NONE:Lcom/stripe/core/readerconnection/ConnectionState;

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Lcom/stripe/core/readerconnection/ConnectionManager;->summary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-void
.end method

.method public final getSummary()Lcom/stripe/core/readerconnection/ConnectionSummary;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionManager;->summary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-object v0
.end method

.method public final startConnect(Lcom/stripe/core/hardware/Reader;)V
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "ConnectionManager"

    const-string v2, "startConnect"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v3, Lcom/stripe/core/readerconnection/ConnectionSummary;

    sget-object v5, Lcom/stripe/core/readerconnection/ConnectionState;->CONNECTING:Lcom/stripe/core/readerconnection/ConnectionState;

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Lcom/stripe/core/readerconnection/ConnectionManager;->summary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-void
.end method

.method public final startDisconnect(Lcom/stripe/core/hardware/Reader;)V
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "ConnectionManager"

    const-string v2, "startDisconnect"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v3, Lcom/stripe/core/readerconnection/ConnectionSummary;

    sget-object v5, Lcom/stripe/core/readerconnection/ConnectionState;->DISCONNECTING:Lcom/stripe/core/readerconnection/ConnectionState;

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Lcom/stripe/core/readerconnection/ConnectionManager;->summary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-void
.end method

.method public final startDiscovery(Ljava/util/List;Lcom/stripe/core/hardware/ConnectionType;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;",
            "Lcom/stripe/core/hardware/ConnectionType;",
            ")V"
        }
    .end annotation

    const-string v0, "readerClasses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "ConnectionManager"

    const-string v2, "startDiscovery"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v5, Lcom/stripe/core/readerconnection/ConnectionState;->DISCOVERING:Lcom/stripe/core/readerconnection/ConnectionState;

    .line 58
    new-instance v3, Lcom/stripe/core/readerconnection/ConnectionSummary;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    move-object v4, p2

    invoke-direct/range {v3 .. v9}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Lcom/stripe/core/readerconnection/ConnectionManager;->summary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-void
.end method

.method public final startReaderInfo()V
    .locals 10

    .line 38
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "ConnectionManager"

    const-string v2, "startReaderInfo"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v3, Lcom/stripe/core/readerconnection/ConnectionSummary;

    sget-object v5, Lcom/stripe/core/readerconnection/ConnectionState;->FETCHING_INFO:Lcom/stripe/core/readerconnection/ConnectionState;

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Lcom/stripe/core/readerconnection/ConnectionManager;->summary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-void
.end method

.method public final startReboot(Lcom/stripe/core/hardware/Reader;)V
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "ConnectionManager"

    const-string v2, "startReboot"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v3, Lcom/stripe/core/readerconnection/ConnectionSummary;

    sget-object v5, Lcom/stripe/core/readerconnection/ConnectionState;->REBOOTING:Lcom/stripe/core/readerconnection/ConnectionState;

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Lcom/stripe/core/readerconnection/ConnectionManager;->summary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-void
.end method

.method public final startSession(Lcom/stripe/core/hardware/Reader;)V
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "ConnectionManager"

    const-string v2, "startSession"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v3, Lcom/stripe/core/readerconnection/ConnectionSummary;

    sget-object v5, Lcom/stripe/core/readerconnection/ConnectionState;->STARTING_SESSION:Lcom/stripe/core/readerconnection/ConnectionState;

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Lcom/stripe/core/readerconnection/ConnectionManager;->summary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-void
.end method
