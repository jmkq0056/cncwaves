.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;
.source "TlbPropertyPutStub.java"


# direct methods
.method public constructor <init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V
    .locals 4

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 56
    iget-object p1, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-virtual {p4, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getDocString()Ljava/lang/String;

    move-result-object p2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v0, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    iget-short v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->paramCount:S

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4, v0, v1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getNames(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;I)[Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-short v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->paramCount:S

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->lprgelemdescParam:Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;->elemDescArg:[Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    aget-object v1, v1, v0

    .line 63
    invoke-virtual {p0, v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->getType(Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;)Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->methodparams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p4, v0

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->replaceJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->methodparams:Ljava/lang/String;

    .line 68
    iget-short v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->paramCount:S

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->methodparams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->methodparams:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const-string p3, "helpstring"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string p2, "methodname"

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string p1, "methodparams"

    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->methodparams:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-short p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->vtableId:S

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "vtableid"

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->memberid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "memberid"

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPutStub.template"

    return-object v0
.end method
