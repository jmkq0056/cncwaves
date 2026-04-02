package org.fourthline.cling.support.model.dlna;

import android.support.v4.media.f;
import java.util.EnumMap;
import java.util.Map;
import org.fourthline.cling.support.model.Protocol;
import org.fourthline.cling.support.model.ProtocolInfo;
import org.fourthline.cling.support.model.dlna.DLNAAttribute;
import org.seamless.util.MimeType;

/* JADX INFO: loaded from: classes2.dex */
public class DLNAProtocolInfo extends ProtocolInfo {
    public final Map<DLNAAttribute.Type, DLNAAttribute> attributes;

    public DLNAProtocolInfo(String str) {
        super(str);
        this.attributes = new EnumMap(DLNAAttribute.Type.class);
        parseAdditionalInfo();
    }

    public boolean contains(DLNAAttribute.Type type) {
        return this.attributes.containsKey(type);
    }

    public DLNAAttribute getAttribute(DLNAAttribute.Type type) {
        return this.attributes.get(type);
    }

    public Map<DLNAAttribute.Type, DLNAAttribute> getAttributes() {
        return this.attributes;
    }

    public String getAttributesString() {
        String string = "";
        for (DLNAAttribute.Type type : DLNAAttribute.Type.values()) {
            String string2 = this.attributes.containsKey(type) ? this.attributes.get(type).getString() : null;
            if (string2 != null && string2.length() != 0) {
                StringBuilder sbA = f.a(string);
                sbA.append(string.length() == 0 ? "" : ";");
                sbA.append(type.getAttributeName());
                sbA.append("=");
                sbA.append(string2);
                string = sbA.toString();
            }
        }
        return string;
    }

    public void parseAdditionalInfo() {
        DLNAAttribute.Type typeValueOfAttributeName;
        String str = this.additionalInfo;
        if (str != null) {
            for (String str2 : str.split(";")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length == 2 && (typeValueOfAttributeName = DLNAAttribute.Type.valueOfAttributeName(strArrSplit[0])) != null) {
                    this.attributes.put(typeValueOfAttributeName, DLNAAttribute.newInstance(typeValueOfAttributeName, strArrSplit[1], getContentFormat()));
                }
            }
        }
    }

    public DLNAProtocolInfo(MimeType mimeType) {
        super(mimeType);
        this.attributes = new EnumMap(DLNAAttribute.Type.class);
    }

    public DLNAProtocolInfo(DLNAProfiles dLNAProfiles) {
        super(MimeType.valueOf(dLNAProfiles.getContentFormat()));
        EnumMap enumMap = new EnumMap(DLNAAttribute.Type.class);
        this.attributes = enumMap;
        enumMap.put(DLNAAttribute.Type.DLNA_ORG_PN, new DLNAProfileAttribute(dLNAProfiles));
        this.additionalInfo = getAttributesString();
    }

    public DLNAProtocolInfo(DLNAProfiles dLNAProfiles, EnumMap<DLNAAttribute.Type, DLNAAttribute> enumMap) {
        super(MimeType.valueOf(dLNAProfiles.getContentFormat()));
        EnumMap enumMap2 = new EnumMap(DLNAAttribute.Type.class);
        this.attributes = enumMap2;
        enumMap2.putAll(enumMap);
        enumMap2.put(DLNAAttribute.Type.DLNA_ORG_PN, new DLNAProfileAttribute(dLNAProfiles));
        this.additionalInfo = getAttributesString();
    }

    public DLNAProtocolInfo(Protocol protocol, String str, String str2, String str3) {
        super(protocol, str, str2, str3);
        this.attributes = new EnumMap(DLNAAttribute.Type.class);
        parseAdditionalInfo();
    }

    public DLNAProtocolInfo(Protocol protocol, String str, String str2, EnumMap<DLNAAttribute.Type, DLNAAttribute> enumMap) {
        super(protocol, str, str2, "");
        EnumMap enumMap2 = new EnumMap(DLNAAttribute.Type.class);
        this.attributes = enumMap2;
        enumMap2.putAll(enumMap);
        this.additionalInfo = getAttributesString();
    }

    public DLNAProtocolInfo(ProtocolInfo protocolInfo) {
        this(protocolInfo.getProtocol(), protocolInfo.getNetwork(), protocolInfo.getContentFormat(), protocolInfo.getAdditionalInfo());
    }
}
