.class public Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;
.super Lcom/sun/jna/Structure;
.source "Winsvc.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "type",
        "delay"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SC_ACTION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION$ByReference;
    }
.end annotation


# instance fields
.field public delay:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
