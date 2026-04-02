.class public Lcom/sun/jna/platform/mac/SystemB$Timeval;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "tv_sec",
        "tv_usec"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Timeval"
.end annotation


# instance fields
.field public tv_sec:Lcom/sun/jna/NativeLong;

.field public tv_usec:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
