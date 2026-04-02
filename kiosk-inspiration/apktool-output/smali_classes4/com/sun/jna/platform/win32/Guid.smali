.class public interface abstract Lcom/sun/jna/platform/win32/Guid;
.super Ljava/lang/Object;
.source "Guid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Guid$IID;,
        Lcom/sun/jna/platform/win32/Guid$REFIID;,
        Lcom/sun/jna/platform/win32/Guid$CLSID;,
        Lcom/sun/jna/platform/win32/Guid$GUID;
    }
.end annotation


# static fields
.field public static final IID_NULL:Lcom/sun/jna/platform/win32/Guid$IID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>()V

    sput-object v0, Lcom/sun/jna/platform/win32/Guid;->IID_NULL:Lcom/sun/jna/platform/win32/Guid$IID;

    return-void
.end method
