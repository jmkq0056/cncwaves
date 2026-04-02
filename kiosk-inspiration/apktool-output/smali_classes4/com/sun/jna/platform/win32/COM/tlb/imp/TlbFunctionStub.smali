.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;
.source "TlbFunctionStub.java"


# direct methods
.method public constructor <init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V
    .locals 7

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 56
    iget-object p1, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-virtual {p4, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getName()Ljava/lang/String;

    move-result-object p2

    .line 58
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getDocString()Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v0, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    iget-short v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->paramCount:S

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4, v0, v1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getNames(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;I)[Ljava/lang/String;

    move-result-object p4

    .line 62
    iget-short v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->paramCount:S

    const-string v1, ", "

    if-lez v0, :cond_0

    .line 63
    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodvariables:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    iget-short v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->paramCount:S

    if-ge v0, v2, :cond_2

    .line 66
    iget-object v2, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->lprgelemdescParam:Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;

    iget-object v2, v2, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;->elemDescArg:[Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 67
    aget-object v4, p4, v3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodparams:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;->tdesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;

    invoke-virtual {p0, v2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->getType(Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    invoke-virtual {p0, v4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->replaceJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodparams:Ljava/lang/String;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodvariables:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodvariables:Ljava/lang/String;

    .line 73
    iget-short v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->paramCount:S

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodparams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodparams:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodvariables:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodvariables:Ljava/lang/String;

    :cond_1
    move v0, v3

    goto/16 :goto_0

    .line 79
    :cond_2
    const-string p3, "helpstring"

    invoke-virtual {p0, p3, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string p1, "returntype"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->returnType:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string p1, "methodname"

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string p1, "methodparams"

    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->methodparams:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-short p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->vtableId:S

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "vtableid"

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->memberid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "memberid"

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionStub.template"

    return-object v0
.end method
