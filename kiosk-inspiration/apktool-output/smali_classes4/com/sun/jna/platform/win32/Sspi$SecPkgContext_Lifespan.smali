.class public Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_Lifespan;
.super Lcom/sun/jna/Structure;
.source "Sspi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "tsStart",
        "tsExpiry"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecPkgContext_Lifespan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_Lifespan$ByReference;
    }
.end annotation


# instance fields
.field public tsExpiry:Lcom/sun/jna/platform/win32/Sspi$TimeStamp;

.field public tsStart:Lcom/sun/jna/platform/win32/Sspi$TimeStamp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 983
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method
