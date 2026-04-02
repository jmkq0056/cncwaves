.class public abstract Lcom/sun/jna/platform/win32/COM/COMInvoker;
.super Lcom/sun/jna/PointerType;
.source "COMInvoker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    return-void
.end method


# virtual methods
.method protected _invokeNativeInt(I[Ljava/lang/Object;)I
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMInvoker;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 37
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr p1, v1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Function;

    move-result-object p1

    .line 39
    invoke-virtual {p1, p2}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected _invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMInvoker;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 46
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr p1, v1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Function;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p3, p2}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _invokeNativeVoid(I[Ljava/lang/Object;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMInvoker;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 55
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr p1, v1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Function;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p2}, Lcom/sun/jna/Function;->invokeVoid([Ljava/lang/Object;)V

    return-void
.end method
