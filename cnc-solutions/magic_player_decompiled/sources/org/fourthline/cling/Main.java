package org.fourthline.cling;

import android.support.v4.media.f;
import java.io.PrintStream;
import org.fourthline.cling.model.message.header.STAllHeader;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.registry.RegistryListener;

/* JADX INFO: loaded from: classes2.dex */
public class Main {
    public static void main(String[] strArr) throws InterruptedException {
        RegistryListener registryListener = new RegistryListener() { // from class: org.fourthline.cling.Main.1
            @Override // org.fourthline.cling.registry.RegistryListener
            public void afterShutdown() {
                System.out.println("Shutdown of registry complete!");
            }

            @Override // org.fourthline.cling.registry.RegistryListener
            public void beforeShutdown(Registry registry) {
                PrintStream printStream = System.out;
                StringBuilder sbA = f.a("Before shutdown, the registry has devices: ");
                sbA.append(registry.getDevices().size());
                printStream.println(sbA.toString());
            }

            @Override // org.fourthline.cling.registry.RegistryListener
            public void localDeviceAdded(Registry registry, LocalDevice localDevice) {
                PrintStream printStream = System.out;
                StringBuilder sbA = f.a("Local device added: ");
                sbA.append(localDevice.getDisplayString());
                printStream.println(sbA.toString());
            }

            @Override // org.fourthline.cling.registry.RegistryListener
            public void localDeviceRemoved(Registry registry, LocalDevice localDevice) {
                PrintStream printStream = System.out;
                StringBuilder sbA = f.a("Local device removed: ");
                sbA.append(localDevice.getDisplayString());
                printStream.println(sbA.toString());
            }

            @Override // org.fourthline.cling.registry.RegistryListener
            public void remoteDeviceAdded(Registry registry, RemoteDevice remoteDevice) {
                PrintStream printStream = System.out;
                StringBuilder sbA = f.a("Remote device available: ");
                sbA.append(remoteDevice.getDisplayString());
                printStream.println(sbA.toString());
            }

            @Override // org.fourthline.cling.registry.RegistryListener
            public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice remoteDevice, Exception exc) {
                PrintStream printStream = System.out;
                StringBuilder sbA = f.a("Discovery failed: ");
                sbA.append(remoteDevice.getDisplayString());
                sbA.append(" => ");
                sbA.append(exc);
                printStream.println(sbA.toString());
            }

            @Override // org.fourthline.cling.registry.RegistryListener
            public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice remoteDevice) {
                PrintStream printStream = System.out;
                StringBuilder sbA = f.a("Discovery started: ");
                sbA.append(remoteDevice.getDisplayString());
                printStream.println(sbA.toString());
            }

            @Override // org.fourthline.cling.registry.RegistryListener
            public void remoteDeviceRemoved(Registry registry, RemoteDevice remoteDevice) {
                PrintStream printStream = System.out;
                StringBuilder sbA = f.a("Remote device removed: ");
                sbA.append(remoteDevice.getDisplayString());
                printStream.println(sbA.toString());
            }

            @Override // org.fourthline.cling.registry.RegistryListener
            public void remoteDeviceUpdated(Registry registry, RemoteDevice remoteDevice) {
                PrintStream printStream = System.out;
                StringBuilder sbA = f.a("Remote device updated: ");
                sbA.append(remoteDevice.getDisplayString());
                printStream.println(sbA.toString());
            }
        };
        System.out.println("Starting Cling...");
        UpnpServiceImpl upnpServiceImpl = new UpnpServiceImpl(registryListener);
        System.out.println("Sending SEARCH message to all devices...");
        upnpServiceImpl.getControlPoint().search(new STAllHeader());
        System.out.println("Waiting 10 seconds before shutting down...");
        Thread.sleep(10000L);
        System.out.println("Stopping Cling...");
        upnpServiceImpl.shutdown();
    }
}
