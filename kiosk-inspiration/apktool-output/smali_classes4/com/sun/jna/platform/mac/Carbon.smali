.class public interface abstract Lcom/sun/jna/platform/mac/Carbon;
.super Ljava/lang/Object;
.source "Carbon.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/mac/Carbon$EventHandlerProcPtr;,
        Lcom/sun/jna/platform/mac/Carbon$EventHotKeyID;,
        Lcom/sun/jna/platform/mac/Carbon$EventTypeSpec;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/mac/Carbon;

.field public static final cmdKey:I = 0x100

.field public static final controlKey:I = 0x1000

.field public static final optionKey:I = 0x800

.field public static final shiftKey:I = 0x200


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "Carbon"

    const-class v1, Lcom/sun/jna/platform/mac/Carbon;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/mac/Carbon;

    sput-object v0, Lcom/sun/jna/platform/mac/Carbon;->INSTANCE:Lcom/sun/jna/platform/mac/Carbon;

    return-void
.end method


# virtual methods
.method public abstract GetEventDispatcherTarget()Lcom/sun/jna/Pointer;
.end method

.method public abstract GetEventParameter(Lcom/sun/jna/Pointer;IILcom/sun/jna/Pointer;ILjava/nio/IntBuffer;Lcom/sun/jna/platform/mac/Carbon$EventHotKeyID;)I
.end method

.method public abstract InstallEventHandler(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/mac/Carbon$EventHandlerProcPtr;I[Lcom/sun/jna/platform/mac/Carbon$EventTypeSpec;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract RegisterEventHotKey(IILcom/sun/jna/platform/mac/Carbon$EventHotKeyID$ByValue;Lcom/sun/jna/Pointer;ILcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract RemoveEventHandler(Lcom/sun/jna/Pointer;)I
.end method

.method public abstract UnregisterEventHotKey(Lcom/sun/jna/Pointer;)I
.end method
