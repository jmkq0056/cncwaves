.class public Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;
.super Lcom/sun/jna/Structure;
.source "MacFileUtils.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "hidden"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FSRef"
.end annotation


# instance fields
.field public hidden:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x50

    .line 58
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;->hidden:[B

    return-void
.end method
