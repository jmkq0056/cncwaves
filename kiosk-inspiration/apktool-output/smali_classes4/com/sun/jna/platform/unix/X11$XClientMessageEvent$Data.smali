.class public Lcom/sun/jna/platform/unix/X11$XClientMessageEvent$Data;
.super Lcom/sun/jna/Union;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11$XClientMessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public b:[B

.field public l:[Lcom/sun/jna/NativeLong;

.field public s:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1532
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    const/16 v0, 0x14

    .line 1533
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/unix/X11$XClientMessageEvent$Data;->b:[B

    const/16 v0, 0xa

    .line 1534
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sun/jna/platform/unix/X11$XClientMessageEvent$Data;->s:[S

    const/4 v0, 0x5

    .line 1535
    new-array v0, v0, [Lcom/sun/jna/NativeLong;

    iput-object v0, p0, Lcom/sun/jna/platform/unix/X11$XClientMessageEvent$Data;->l:[Lcom/sun/jna/NativeLong;

    return-void
.end method
