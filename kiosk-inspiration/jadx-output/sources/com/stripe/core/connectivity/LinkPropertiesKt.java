package com.stripe.core.connectivity;

import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.RouteInfo;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LinkProperties.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u000b\u001a\u0004\u0018\u0001H\f\"\n\b\u0000\u0010\f\u0018\u0001*\u00020\u0001*\u00020\u0002H\u0082\b¢\u0006\u0002\u0010\u0004\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\u0002\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u001a\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u0004¨\u0006\u000f"}, d2 = {"gateway", "Ljava/net/InetAddress;", "Landroid/net/LinkProperties;", "getGateway", "(Landroid/net/LinkProperties;)Ljava/net/InetAddress;", "ipAddress", "", "getIpAddress", "(Landroid/net/LinkProperties;)Ljava/lang/String;", "subnetMask", "getSubnetMask", "inetAddressOfType", "T", "toNetworkLinkProperties", "Lcom/stripe/core/connectivity/NetworkLinkProperties;", "connectivity_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class LinkPropertiesKt {
    public static final NetworkLinkProperties toNetworkLinkProperties(LinkProperties linkProperties) {
        Intrinsics.checkNotNullParameter(linkProperties, "<this>");
        List<InetAddress> dnsServers = linkProperties.getDnsServers();
        Intrinsics.checkNotNullExpressionValue(dnsServers, "getDnsServers(...)");
        return new NetworkLinkProperties(dnsServers, getSubnetMask(linkProperties), getGateway(linkProperties), getIpAddress(linkProperties));
    }

    private static final InetAddress getSubnetMask(LinkProperties linkProperties) {
        Inet4Address inet4AddressPrefixLengthToInetAddress;
        List<RouteInfo> routes = linkProperties.getRoutes();
        Intrinsics.checkNotNullExpressionValue(routes, "getRoutes(...)");
        Iterator<T> it = routes.iterator();
        while (true) {
            if (!it.hasNext()) {
                inet4AddressPrefixLengthToInetAddress = null;
                break;
            }
            inet4AddressPrefixLengthToInetAddress = SubnetMaskUtilities.INSTANCE.prefixLengthToInetAddress(((RouteInfo) it.next()).getDestination().getPrefixLength());
            if (inet4AddressPrefixLengthToInetAddress != null) {
                break;
            }
        }
        return inet4AddressPrefixLengthToInetAddress;
    }

    private static final InetAddress getGateway(LinkProperties linkProperties) {
        Object next;
        List<RouteInfo> routes = linkProperties.getRoutes();
        Intrinsics.checkNotNullExpressionValue(routes, "getRoutes(...)");
        Iterator<T> it = routes.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            InetAddress gateway = ((RouteInfo) next).getGateway();
            if (gateway != null && !gateway.isAnyLocalAddress()) {
                break;
            }
        }
        RouteInfo routeInfo = (RouteInfo) next;
        if (routeInfo != null) {
            return routeInfo.getGateway();
        }
        return null;
    }

    private static final /* synthetic */ <T extends InetAddress> T inetAddressOfType(LinkProperties linkProperties) {
        List<LinkAddress> linkAddresses = linkProperties.getLinkAddresses();
        Intrinsics.checkNotNullExpressionValue(linkAddresses, "getLinkAddresses(...)");
        List<LinkAddress> list = linkAddresses;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((LinkAddress) it.next()).getAddress());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (obj instanceof Object) {
                arrayList2.add(obj);
            }
        }
        return (T) CollectionsKt.firstOrNull((List) arrayList2);
    }

    private static final String getIpAddress(LinkProperties linkProperties) {
        List<LinkAddress> linkAddresses = linkProperties.getLinkAddresses();
        Intrinsics.checkNotNullExpressionValue(linkAddresses, "getLinkAddresses(...)");
        List<LinkAddress> list = linkAddresses;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((LinkAddress) it.next()).getAddress());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (obj instanceof Inet4Address) {
                arrayList2.add(obj);
            }
        }
        Inet4Address inet4Address = (Inet4Address) ((InetAddress) CollectionsKt.firstOrNull((List) arrayList2));
        List<LinkAddress> linkAddresses2 = linkProperties.getLinkAddresses();
        Intrinsics.checkNotNullExpressionValue(linkAddresses2, "getLinkAddresses(...)");
        List<LinkAddress> list2 = linkAddresses2;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((LinkAddress) it2.next()).getAddress());
        }
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (obj2 instanceof Inet6Address) {
                arrayList4.add(obj2);
            }
        }
        Inet6Address inet6Address = inet4Address != null ? inet4Address : (Inet6Address) ((InetAddress) CollectionsKt.firstOrNull((List) arrayList4));
        if (inet6Address != null) {
            return inet6Address.getHostAddress();
        }
        return null;
    }
}
