.class public Lcom/sun/jna/platform/unix/X11$VisualID;
.super Lcom/sun/jna/NativeLong;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisualID"
.end annotation


# static fields
.field public static final None:Lcom/sun/jna/platform/unix/X11$VisualID; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/unix/X11$VisualID;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/NativeLong;-><init>(JZ)V

    return-void
.end method


# virtual methods
.method public fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;
    .locals 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/unix/X11$VisualID;->isNone(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    sget-object p1, Lcom/sun/jna/platform/unix/X11$VisualID;->None:Lcom/sun/jna/platform/unix/X11$VisualID;

    return-object p1

    .line 58
    :cond_0
    new-instance p2, Lcom/sun/jna/platform/unix/X11$VisualID;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/sun/jna/platform/unix/X11$VisualID;-><init>(J)V

    return-object p2
.end method

.method protected isNone(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 50
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
