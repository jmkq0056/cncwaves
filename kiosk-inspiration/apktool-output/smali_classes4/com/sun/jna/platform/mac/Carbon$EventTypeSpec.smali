.class public Lcom/sun/jna/platform/mac/Carbon$EventTypeSpec;
.super Lcom/sun/jna/Structure;
.source "Carbon.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "eventClass",
        "eventKind"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/Carbon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventTypeSpec"
.end annotation


# instance fields
.field public eventClass:I

.field public eventKind:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
