package org.fourthline.cling.binding.xml;

import org.fourthline.cling.model.meta.Service;
import org.w3c.dom.Document;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceDescriptorBinder {
    Document buildDOM(Service service);

    <T extends Service> T describe(T t3, String str);

    <T extends Service> T describe(T t3, Document document);

    String generate(Service service);
}
