.class public Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat;
.super Lcom/sun/jna/platform/unix/X11$XID;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11$Xrender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictFormat"
.end annotation


# static fields
.field public static final None:Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 322
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/unix/X11$XID;-><init>(J)V

    return-void
.end method


# virtual methods
.method public fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;
    .locals 2

    .line 325
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat;->isNone(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 326
    sget-object p1, Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat;->None:Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat;

    return-object p1

    .line 327
    :cond_0
    new-instance p2, Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat;-><init>(J)V

    return-object p2
.end method
