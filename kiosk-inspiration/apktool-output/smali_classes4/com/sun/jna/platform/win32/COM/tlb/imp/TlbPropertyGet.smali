.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;
.source "TlbPropertyGet.java"


# direct methods
.method public constructor <init>(IILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V
    .locals 0

    .line 52
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "get"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->getMethodName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->methodName:Ljava/lang/String;

    .line 56
    const-string p2, "helpstring"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->docStr:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string p2, "returntype"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->returnType:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string p2, "methodname"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->methodName:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-short p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->vtableId:S

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "vtableid"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->memberid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "memberid"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string p2, "functionCount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGet.template"

    return-object v0
.end method
