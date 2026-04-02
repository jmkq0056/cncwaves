.class public Lcom/sun/jna/platform/unix/X11$KeySym;
.super Lcom/sun/jna/platform/unix/X11$XID;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeySym"
.end annotation


# static fields
.field public static final None:Lcom/sun/jna/platform/unix/X11$KeySym; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/sun/jna/platform/unix/X11$XID;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/unix/X11$XID;-><init>(J)V

    return-void
.end method


# virtual methods
.method public fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;
    .locals 2

    .line 219
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/unix/X11$KeySym;->isNone(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 220
    sget-object p1, Lcom/sun/jna/platform/unix/X11$KeySym;->None:Lcom/sun/jna/platform/unix/X11$KeySym;

    return-object p1

    .line 221
    :cond_0
    new-instance p2, Lcom/sun/jna/platform/unix/X11$KeySym;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/sun/jna/platform/unix/X11$KeySym;-><init>(J)V

    return-object p2
.end method
