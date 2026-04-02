.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;
.source "TlbFunctionVTable.java"


# direct methods
.method public constructor <init>(IILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V
    .locals 5

    .line 53
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 55
    iget-object p2, p4, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    iget-short p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->paramCount:S

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p5, p2, p3}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getNames(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;I)[Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-short p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->paramCount:S

    const-string p5, ", "

    if-lez p3, :cond_0

    .line 59
    iput-object p5, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodvariables:Ljava/lang/String;

    :cond_0
    const/4 p3, 0x0

    .line 61
    :goto_0
    iget-short v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->paramCount:S

    if-ge p3, v0, :cond_2

    .line 62
    iget-object v0, p4, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->lprgelemdescParam:Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;->elemDescArg:[Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    aget-object v0, v0, p3

    add-int/lit8 v1, p3, 0x1

    .line 63
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodparams:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;->tdesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->getType(Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->replaceJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodparams:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodvariables:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodvariables:Ljava/lang/String;

    .line 69
    iget-short v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->paramCount:S

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_1

    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodparams:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodparams:Ljava/lang/String;

    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodvariables:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodvariables:Ljava/lang/String;

    :cond_1
    move p3, v1

    goto/16 :goto_0

    .line 75
    :cond_2
    const-string p2, "helpstring"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->docStr:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string p2, "returntype"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->returnType:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string p2, "methodname"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodName:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string p2, "methodparams"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodparams:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string p2, "methodvariables"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->methodvariables:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-short p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->vtableId:S

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "vtableid"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->memberid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "memberid"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string p2, "functionCount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbFunctionVTable.template"

    return-object v0
.end method
