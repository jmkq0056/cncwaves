.class public interface abstract Lcom/sun/jna/platform/win32/Winevt$EVT_RPC_LOGIN_FLAGS;
.super Ljava/lang/Object;
.source "Winevt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winevt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EVT_RPC_LOGIN_FLAGS"
.end annotation


# static fields
.field public static final EvtRpcLoginAuthDefault:I = 0x0

.field public static final EvtRpcLoginAuthKerberos:I = 0x2

.field public static final EvtRpcLoginAuthNTLM:I = 0x3

.field public static final EvtRpcLoginAuthNegotiate:I = 0x1
