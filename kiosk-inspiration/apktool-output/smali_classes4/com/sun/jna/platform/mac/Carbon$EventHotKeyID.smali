.class public Lcom/sun/jna/platform/mac/Carbon$EventHotKeyID;
.super Lcom/sun/jna/Structure;
.source "Carbon.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "signature",
        "id"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/Carbon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHotKeyID"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/mac/Carbon$EventHotKeyID$ByValue;
    }
.end annotation


# instance fields
.field public id:I

.field public signature:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
