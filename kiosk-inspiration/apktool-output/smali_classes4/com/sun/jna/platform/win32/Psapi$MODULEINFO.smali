.class public Lcom/sun/jna/platform/win32/Psapi$MODULEINFO;
.super Lcom/sun/jna/Structure;
.source "Psapi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "lpBaseOfDll",
        "SizeOfImage",
        "EntryPoint"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Psapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MODULEINFO"
.end annotation


# instance fields
.field public EntryPoint:Lcom/sun/jna/Pointer;

.field public SizeOfImage:I

.field public lpBaseOfDll:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
