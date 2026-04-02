.class public Lcom/sun/jna/platform/unix/X11$Pixmap;
.super Lcom/sun/jna/platform/unix/X11$Drawable;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pixmap"
.end annotation


# static fields
.field public static final None:Lcom/sun/jna/platform/unix/X11$Pixmap; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/sun/jna/platform/unix/X11$Drawable;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/unix/X11$Drawable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;
    .locals 2

    .line 262
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/unix/X11$Pixmap;->isNone(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 263
    sget-object p1, Lcom/sun/jna/platform/unix/X11$Pixmap;->None:Lcom/sun/jna/platform/unix/X11$Pixmap;

    return-object p1

    .line 264
    :cond_0
    new-instance p2, Lcom/sun/jna/platform/unix/X11$Pixmap;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/sun/jna/platform/unix/X11$Pixmap;-><init>(J)V

    return-object p2
.end method
