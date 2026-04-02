.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;
.source "TlbPropertyGetStub.java"


# direct methods
.method public constructor <init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 55
    iget-object p1, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-virtual {p4, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getDocString()Ljava/lang/String;

    move-result-object p2

    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "get"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string p3, "helpstring"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string p2, "returntype"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;->returnType:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string p2, "methodname"

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-short p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;->vtableId:S

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "vtableid"

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;->memberid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "memberid"

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyGetStub.template"

    return-object v0
.end method
