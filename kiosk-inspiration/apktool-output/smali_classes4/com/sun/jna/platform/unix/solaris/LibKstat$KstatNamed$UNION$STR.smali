.class public Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION$STR;
.super Lcom/sun/jna/Structure;
.source "LibKstat.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "addr",
        "len"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STR"
.end annotation


# instance fields
.field public addr:Lcom/sun/jna/Pointer;

.field public len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
