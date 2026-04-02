.class public Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatIntr;
.super Lcom/sun/jna/Structure;
.source "LibKstat.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "intrs"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/solaris/LibKstat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KstatIntr"
.end annotation


# instance fields
.field public intrs:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x5

    .line 236
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatIntr;->intrs:[I

    return-void
.end method
