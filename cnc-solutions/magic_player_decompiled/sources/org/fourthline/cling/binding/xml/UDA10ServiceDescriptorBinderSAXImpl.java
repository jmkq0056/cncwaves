package org.fourthline.cling.binding.xml;

import android.support.v4.media.f;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;
import org.fourthline.cling.binding.staging.MutableAction;
import org.fourthline.cling.binding.staging.MutableActionArgument;
import org.fourthline.cling.binding.staging.MutableAllowedValueRange;
import org.fourthline.cling.binding.staging.MutableService;
import org.fourthline.cling.binding.staging.MutableStateVariable;
import org.fourthline.cling.binding.xml.Descriptor;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.meta.StateVariableEventDetails;
import org.fourthline.cling.model.types.CustomDatatype;
import org.fourthline.cling.model.types.Datatype;
import org.seamless.xml.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes2.dex */
public class UDA10ServiceDescriptorBinderSAXImpl extends UDA10ServiceDescriptorBinderImpl {
    private static Logger log = Logger.getLogger(ServiceDescriptorBinder.class.getName());

    /* JADX INFO: renamed from: org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT;

        static {
            int[] iArr = new int[Descriptor.Service.ELEMENT.values().length];
            $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT = iArr;
            try {
                iArr[Descriptor.Service.ELEMENT.name.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[Descriptor.Service.ELEMENT.direction.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[Descriptor.Service.ELEMENT.relatedStateVariable.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[Descriptor.Service.ELEMENT.retval.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[Descriptor.Service.ELEMENT.dataType.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[Descriptor.Service.ELEMENT.defaultValue.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[Descriptor.Service.ELEMENT.allowedValue.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[Descriptor.Service.ELEMENT.minimum.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[Descriptor.Service.ELEMENT.maximum.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[Descriptor.Service.ELEMENT.step.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static class ActionArgumentHandler extends ServiceDescriptorHandler<MutableActionArgument> {
        public static final Descriptor.Service.ELEMENT EL = Descriptor.Service.ELEMENT.argument;

        public ActionArgumentHandler(MutableActionArgument mutableActionArgument, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableActionArgument, serviceDescriptorHandler);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void endElement(Descriptor.Service.ELEMENT element) {
            int i4 = AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[element.ordinal()];
            if (i4 == 1) {
                getInstance().name = getCharacters();
                return;
            }
            if (i4 != 2) {
                if (i4 == 3) {
                    getInstance().relatedStateVariable = getCharacters();
                    return;
                } else {
                    if (i4 != 4) {
                        return;
                    }
                    getInstance().retval = true;
                    return;
                }
            }
            String characters = getCharacters();
            try {
                getInstance().direction = ActionArgument.Direction.valueOf(characters.toUpperCase(Locale.ROOT));
            } catch (IllegalArgumentException unused) {
                UDA10ServiceDescriptorBinderSAXImpl.log.warning("UPnP specification violation: Invalid action argument direction, assuming 'IN': " + characters);
                getInstance().direction = ActionArgument.Direction.IN;
            }
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public boolean isLastElement(Descriptor.Service.ELEMENT element) {
            return element.equals(EL);
        }
    }

    public static class ActionArgumentListHandler extends ServiceDescriptorHandler<List<MutableActionArgument>> {
        public static final Descriptor.Service.ELEMENT EL = Descriptor.Service.ELEMENT.argumentList;

        public ActionArgumentListHandler(List<MutableActionArgument> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public boolean isLastElement(Descriptor.Service.ELEMENT element) {
            return element.equals(EL);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void startElement(Descriptor.Service.ELEMENT element, Attributes attributes) {
            if (element.equals(ActionArgumentHandler.EL)) {
                MutableActionArgument mutableActionArgument = new MutableActionArgument();
                getInstance().add(mutableActionArgument);
                new ActionArgumentHandler(mutableActionArgument, this);
            }
        }
    }

    public static class ActionHandler extends ServiceDescriptorHandler<MutableAction> {
        public static final Descriptor.Service.ELEMENT EL = Descriptor.Service.ELEMENT.action;

        public ActionHandler(MutableAction mutableAction, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableAction, serviceDescriptorHandler);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void endElement(Descriptor.Service.ELEMENT element) {
            if (AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[element.ordinal()] != 1) {
                return;
            }
            getInstance().name = getCharacters();
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public boolean isLastElement(Descriptor.Service.ELEMENT element) {
            return element.equals(EL);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void startElement(Descriptor.Service.ELEMENT element, Attributes attributes) {
            if (element.equals(ActionArgumentListHandler.EL)) {
                ArrayList arrayList = new ArrayList();
                getInstance().arguments = arrayList;
                new ActionArgumentListHandler(arrayList, this);
            }
        }
    }

    public static class ActionListHandler extends ServiceDescriptorHandler<List<MutableAction>> {
        public static final Descriptor.Service.ELEMENT EL = Descriptor.Service.ELEMENT.actionList;

        public ActionListHandler(List<MutableAction> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public boolean isLastElement(Descriptor.Service.ELEMENT element) {
            return element.equals(EL);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void startElement(Descriptor.Service.ELEMENT element, Attributes attributes) {
            if (element.equals(ActionHandler.EL)) {
                MutableAction mutableAction = new MutableAction();
                getInstance().add(mutableAction);
                new ActionHandler(mutableAction, this);
            }
        }
    }

    public static class AllowedValueListHandler extends ServiceDescriptorHandler<List<String>> {
        public static final Descriptor.Service.ELEMENT EL = Descriptor.Service.ELEMENT.allowedValueList;

        public AllowedValueListHandler(List<String> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void endElement(Descriptor.Service.ELEMENT element) {
            if (AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[element.ordinal()] != 7) {
                return;
            }
            getInstance().add(getCharacters());
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public boolean isLastElement(Descriptor.Service.ELEMENT element) {
            return element.equals(EL);
        }
    }

    public static class AllowedValueRangeHandler extends ServiceDescriptorHandler<MutableAllowedValueRange> {
        public static final Descriptor.Service.ELEMENT EL = Descriptor.Service.ELEMENT.allowedValueRange;

        public AllowedValueRangeHandler(MutableAllowedValueRange mutableAllowedValueRange, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableAllowedValueRange, serviceDescriptorHandler);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void endElement(Descriptor.Service.ELEMENT element) {
            try {
                switch (AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[element.ordinal()]) {
                    case 8:
                        getInstance().minimum = Long.valueOf(getCharacters());
                        break;
                    case 9:
                        getInstance().maximum = Long.valueOf(getCharacters());
                        break;
                    case 10:
                        getInstance().step = Long.valueOf(getCharacters());
                        break;
                }
            } catch (Exception unused) {
            }
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public boolean isLastElement(Descriptor.Service.ELEMENT element) {
            return element.equals(EL);
        }
    }

    public static class RootHandler extends ServiceDescriptorHandler<MutableService> {
        public RootHandler(MutableService mutableService, SAXParser sAXParser) {
            super(mutableService, sAXParser);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void startElement(Descriptor.Service.ELEMENT element, Attributes attributes) {
            if (element.equals(ActionListHandler.EL)) {
                ArrayList arrayList = new ArrayList();
                getInstance().actions = arrayList;
                new ActionListHandler(arrayList, this);
            }
            if (element.equals(StateVariableListHandler.EL)) {
                ArrayList arrayList2 = new ArrayList();
                getInstance().stateVariables = arrayList2;
                new StateVariableListHandler(arrayList2, this);
            }
        }
    }

    public static class ServiceDescriptorHandler<I> extends SAXParser.Handler<I> {
        public ServiceDescriptorHandler(I i4) {
            super(i4);
        }

        @Override // org.seamless.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            super.endElement(str, str2, str3);
            Descriptor.Service.ELEMENT elementValueOrNullOf = Descriptor.Service.ELEMENT.valueOrNullOf(str2);
            if (elementValueOrNullOf == null) {
                return;
            }
            endElement(elementValueOrNullOf);
        }

        public void endElement(Descriptor.Service.ELEMENT element) {
        }

        @Override // org.seamless.xml.SAXParser.Handler
        public boolean isLastElement(String str, String str2, String str3) {
            Descriptor.Service.ELEMENT elementValueOrNullOf = Descriptor.Service.ELEMENT.valueOrNullOf(str2);
            return elementValueOrNullOf != null && isLastElement(elementValueOrNullOf);
        }

        public boolean isLastElement(Descriptor.Service.ELEMENT element) {
            return false;
        }

        @Override // org.seamless.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            super.startElement(str, str2, str3, attributes);
            Descriptor.Service.ELEMENT elementValueOrNullOf = Descriptor.Service.ELEMENT.valueOrNullOf(str2);
            if (elementValueOrNullOf == null) {
                return;
            }
            startElement(elementValueOrNullOf, attributes);
        }

        public void startElement(Descriptor.Service.ELEMENT element, Attributes attributes) {
        }

        public ServiceDescriptorHandler(I i4, SAXParser sAXParser) {
            super(i4, sAXParser);
        }

        public ServiceDescriptorHandler(I i4, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(i4, serviceDescriptorHandler);
        }

        public ServiceDescriptorHandler(I i4, SAXParser sAXParser, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(i4, sAXParser, serviceDescriptorHandler);
        }
    }

    public static class StateVariableHandler extends ServiceDescriptorHandler<MutableStateVariable> {
        public static final Descriptor.Service.ELEMENT EL = Descriptor.Service.ELEMENT.stateVariable;

        public StateVariableHandler(MutableStateVariable mutableStateVariable, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableStateVariable, serviceDescriptorHandler);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void endElement(Descriptor.Service.ELEMENT element) {
            int i4 = AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT[element.ordinal()];
            if (i4 == 1) {
                getInstance().name = getCharacters();
                return;
            }
            if (i4 != 5) {
                if (i4 != 6) {
                    return;
                }
                getInstance().defaultValue = getCharacters();
            } else {
                String characters = getCharacters();
                Datatype.Builtin byDescriptorName = Datatype.Builtin.getByDescriptorName(characters);
                getInstance().dataType = byDescriptorName != null ? byDescriptorName.getDatatype() : new CustomDatatype(characters);
            }
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public boolean isLastElement(Descriptor.Service.ELEMENT element) {
            return element.equals(EL);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void startElement(Descriptor.Service.ELEMENT element, Attributes attributes) {
            if (element.equals(AllowedValueListHandler.EL)) {
                ArrayList arrayList = new ArrayList();
                getInstance().allowedValues = arrayList;
                new AllowedValueListHandler(arrayList, this);
            }
            if (element.equals(AllowedValueRangeHandler.EL)) {
                MutableAllowedValueRange mutableAllowedValueRange = new MutableAllowedValueRange();
                getInstance().allowedValueRange = mutableAllowedValueRange;
                new AllowedValueRangeHandler(mutableAllowedValueRange, this);
            }
        }
    }

    public static class StateVariableListHandler extends ServiceDescriptorHandler<List<MutableStateVariable>> {
        public static final Descriptor.Service.ELEMENT EL = Descriptor.Service.ELEMENT.serviceStateTable;

        public StateVariableListHandler(List<MutableStateVariable> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public boolean isLastElement(Descriptor.Service.ELEMENT element) {
            return element.equals(EL);
        }

        @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public void startElement(Descriptor.Service.ELEMENT element, Attributes attributes) {
            if (element.equals(StateVariableHandler.EL)) {
                MutableStateVariable mutableStateVariable = new MutableStateVariable();
                String value = attributes.getValue(Descriptor.Service.ATTRIBUTE.sendEvents.toString());
                mutableStateVariable.eventDetails = new StateVariableEventDetails(value != null && value.toUpperCase(Locale.ROOT).equals("YES"));
                getInstance().add(mutableStateVariable);
                new StateVariableHandler(mutableStateVariable, this);
            }
        }
    }

    @Override // org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderImpl, org.fourthline.cling.binding.xml.ServiceDescriptorBinder
    public <S extends Service> S describe(S s3, String str) throws ValidationException, DescriptorBindingException {
        if (str == null || str.length() == 0) {
            throw new DescriptorBindingException("Null or empty descriptor");
        }
        try {
            log.fine("Reading service from XML descriptor");
            SAXParser sAXParser = new SAXParser();
            MutableService mutableService = new MutableService();
            hydrateBasic(mutableService, s3);
            new RootHandler(mutableService, sAXParser);
            sAXParser.parse(new InputSource(new StringReader(str.trim())));
            return (S) mutableService.build(s3.getDevice());
        } catch (ValidationException e4) {
            throw e4;
        } catch (Exception e5) {
            StringBuilder sbA = f.a("Could not parse service descriptor: ");
            sbA.append(e5.toString());
            throw new DescriptorBindingException(sbA.toString(), e5);
        }
    }
}
