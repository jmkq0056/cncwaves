.class public interface abstract Lcom/sun/jna/platform/win32/OpenGL32;
.super Ljava/lang/Object;
.source "OpenGL32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/OpenGL32;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "opengl32"

    const-class v1, Lcom/sun/jna/platform/win32/OpenGL32;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/OpenGL32;

    sput-object v0, Lcom/sun/jna/platform/win32/OpenGL32;->INSTANCE:Lcom/sun/jna/platform/win32/OpenGL32;

    return-void
.end method


# virtual methods
.method public abstract glGetString(I)Ljava/lang/String;
.end method

.method public abstract wglCreateContext(Lcom/sun/jna/platform/win32/WinDef$HDC;)Lcom/sun/jna/platform/win32/WinDef$HGLRC;
.end method

.method public abstract wglDeleteContext(Lcom/sun/jna/platform/win32/WinDef$HGLRC;)Z
.end method

.method public abstract wglGetCurrentContext()Lcom/sun/jna/platform/win32/WinDef$HGLRC;
.end method

.method public abstract wglGetProcAddress(Ljava/lang/String;)Lcom/sun/jna/Pointer;
.end method

.method public abstract wglMakeCurrent(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinDef$HGLRC;)Z
.end method
