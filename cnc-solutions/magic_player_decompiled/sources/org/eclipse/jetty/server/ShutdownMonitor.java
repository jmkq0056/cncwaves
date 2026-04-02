package org.eclipse.jetty.server;

import android.support.v4.media.f;
import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Properties;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.thread.ShutdownThread;

/* JADX INFO: loaded from: classes2.dex */
public class ShutdownMonitor {
    private boolean DEBUG;
    private boolean exitVm;
    private String key;
    private int port;
    private ServerSocket serverSocket;
    private ShutdownMonitorThread thread;

    public static class Holder {
        public static ShutdownMonitor instance = new ShutdownMonitor();
    }

    public class ShutdownMonitorThread extends Thread {
        public ShutdownMonitorThread() {
            setDaemon(true);
            setName("ShutdownMonitor");
        }

        private void startListenSocket() {
            if (ShutdownMonitor.this.port < 0) {
                if (ShutdownMonitor.this.DEBUG) {
                    PrintStream printStream = System.err;
                    StringBuilder sbA = f.a("ShutdownMonitor not in use (port < 0): ");
                    sbA.append(ShutdownMonitor.this.port);
                    printStream.println(sbA.toString());
                    return;
                }
                return;
            }
            try {
                try {
                    ShutdownMonitor.this.serverSocket = new ServerSocket(ShutdownMonitor.this.port, 1, InetAddress.getByName("127.0.0.1"));
                    if (ShutdownMonitor.this.port == 0) {
                        ShutdownMonitor shutdownMonitor = ShutdownMonitor.this;
                        shutdownMonitor.port = shutdownMonitor.serverSocket.getLocalPort();
                        System.out.printf("STOP.PORT=%d%n", Integer.valueOf(ShutdownMonitor.this.port));
                    }
                    if (ShutdownMonitor.this.key == null) {
                        ShutdownMonitor shutdownMonitor2 = ShutdownMonitor.this;
                        double dRandom = Math.random() * 9.223372036854776E18d;
                        double dHashCode = hashCode();
                        Double.isNaN(dHashCode);
                        double d4 = dRandom + dHashCode;
                        double dCurrentTimeMillis = System.currentTimeMillis();
                        Double.isNaN(dCurrentTimeMillis);
                        shutdownMonitor2.key = Long.toString((long) (d4 + dCurrentTimeMillis), 36);
                        System.out.printf("STOP.KEY=%s%n", ShutdownMonitor.this.key);
                    }
                    ShutdownMonitor shutdownMonitor3 = ShutdownMonitor.this;
                    shutdownMonitor3.debug("STOP.PORT=%d", Integer.valueOf(shutdownMonitor3.port));
                    ShutdownMonitor shutdownMonitor4 = ShutdownMonitor.this;
                    shutdownMonitor4.debug("STOP.KEY=%s", shutdownMonitor4.key);
                    ShutdownMonitor shutdownMonitor5 = ShutdownMonitor.this;
                    shutdownMonitor5.debug("%s", shutdownMonitor5.serverSocket);
                } catch (Exception e4) {
                    ShutdownMonitor.this.debug(e4);
                    System.err.println("Error binding monitor port " + ShutdownMonitor.this.port + ": " + e4.toString());
                    ShutdownMonitor.this.serverSocket = null;
                    ShutdownMonitor shutdownMonitor6 = ShutdownMonitor.this;
                    shutdownMonitor6.debug("STOP.PORT=%d", Integer.valueOf(shutdownMonitor6.port));
                    ShutdownMonitor shutdownMonitor7 = ShutdownMonitor.this;
                    shutdownMonitor7.debug("STOP.KEY=%s", shutdownMonitor7.key);
                    ShutdownMonitor shutdownMonitor8 = ShutdownMonitor.this;
                    shutdownMonitor8.debug("%s", shutdownMonitor8.serverSocket);
                }
            } catch (Throwable th) {
                ShutdownMonitor shutdownMonitor9 = ShutdownMonitor.this;
                shutdownMonitor9.debug("STOP.PORT=%d", Integer.valueOf(shutdownMonitor9.port));
                ShutdownMonitor shutdownMonitor10 = ShutdownMonitor.this;
                shutdownMonitor10.debug("STOP.KEY=%s", shutdownMonitor10.key);
                ShutdownMonitor shutdownMonitor11 = ShutdownMonitor.this;
                shutdownMonitor11.debug("%s", shutdownMonitor11.serverSocket);
                throw th;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            Socket socketAccept;
            Throwable th;
            Exception e4;
            LineNumberReader lineNumberReader;
            if (ShutdownMonitor.this.serverSocket == null) {
                return;
            }
            while (ShutdownMonitor.this.serverSocket != null) {
                Socket socket = null;
                try {
                    socketAccept = ShutdownMonitor.this.serverSocket.accept();
                    try {
                        try {
                            lineNumberReader = new LineNumberReader(new InputStreamReader(socketAccept.getInputStream()));
                        } catch (Throwable th2) {
                            th = th2;
                            ShutdownMonitor.this.close(socketAccept);
                            throw th;
                        }
                    } catch (Exception e5) {
                        e4 = e5;
                        ShutdownMonitor.this.debug(e4);
                        System.err.println(e4.toString());
                    }
                } catch (Exception e6) {
                    socketAccept = null;
                    e4 = e6;
                } catch (Throwable th3) {
                    socketAccept = null;
                    th = th3;
                }
                if (ShutdownMonitor.this.key.equals(lineNumberReader.readLine())) {
                    OutputStream outputStream = socketAccept.getOutputStream();
                    String line = lineNumberReader.readLine();
                    ShutdownMonitor.this.debug("command=%s", line);
                    if ("stop".equals(line)) {
                        ShutdownMonitor.this.debug("Issuing graceful shutdown..", new Object[0]);
                        ShutdownThread.getInstance().run();
                        ShutdownMonitor.this.debug("Informing client that we are stopped.", new Object[0]);
                        outputStream.write("Stopped\r\n".getBytes(StringUtil.__UTF8));
                        outputStream.flush();
                        ShutdownMonitor.this.debug("Shutting down monitor", new Object[0]);
                        ShutdownMonitor.this.close(socketAccept);
                        ShutdownMonitor shutdownMonitor = ShutdownMonitor.this;
                        shutdownMonitor.close(shutdownMonitor.serverSocket);
                        ShutdownMonitor.this.serverSocket = null;
                        if (ShutdownMonitor.this.exitVm) {
                            ShutdownMonitor.this.debug("Killing JVM", new Object[0]);
                            System.exit(0);
                        }
                    } else {
                        if (NotificationCompat.CATEGORY_STATUS.equals(line)) {
                            outputStream.write("OK\r\n".getBytes(StringUtil.__UTF8));
                            outputStream.flush();
                        }
                        socket = socketAccept;
                    }
                    ShutdownMonitor.this.close(socket);
                } else {
                    System.err.println("Ignoring command with incorrect key");
                    ShutdownMonitor.this.close(socketAccept);
                }
            }
        }

        @Override // java.lang.Thread
        public void start() {
            if (isAlive()) {
                System.err.printf("ShutdownMonitorThread already started", new Object[0]);
                return;
            }
            startListenSocket();
            if (ShutdownMonitor.this.serverSocket == null) {
                return;
            }
            if (ShutdownMonitor.this.DEBUG) {
                System.err.println("Starting ShutdownMonitorThread");
            }
            super.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void close(ServerSocket serverSocket) {
        if (serverSocket == null) {
            return;
        }
        try {
            serverSocket.close();
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void debug(String str, Object... objArr) {
        if (this.DEBUG) {
            System.err.printf("[ShutdownMonitor] " + str + "%n", objArr);
        }
    }

    public static ShutdownMonitor getInstance() {
        return Holder.instance;
    }

    public String getKey() {
        return this.key;
    }

    public int getPort() {
        return this.port;
    }

    public ServerSocket getServerSocket() {
        return this.serverSocket;
    }

    public boolean isAlive() {
        boolean z3;
        synchronized (this) {
            ShutdownMonitorThread shutdownMonitorThread = this.thread;
            z3 = shutdownMonitorThread != null && shutdownMonitorThread.isAlive();
        }
        return z3;
    }

    public boolean isExitVm() {
        return this.exitVm;
    }

    public void setDebug(boolean z3) {
        this.DEBUG = z3;
    }

    public void setExitVm(boolean z3) {
        synchronized (this) {
            ShutdownMonitorThread shutdownMonitorThread = this.thread;
            if (shutdownMonitorThread != null && shutdownMonitorThread.isAlive()) {
                throw new IllegalStateException("ShutdownMonitorThread already started");
            }
            this.exitVm = z3;
        }
    }

    public void setKey(String str) {
        synchronized (this) {
            ShutdownMonitorThread shutdownMonitorThread = this.thread;
            if (shutdownMonitorThread != null && shutdownMonitorThread.isAlive()) {
                throw new IllegalStateException("ShutdownMonitorThread already started");
            }
            this.key = str;
        }
    }

    public void setPort(int i4) {
        synchronized (this) {
            ShutdownMonitorThread shutdownMonitorThread = this.thread;
            if (shutdownMonitorThread != null && shutdownMonitorThread.isAlive()) {
                throw new IllegalStateException("ShutdownMonitorThread already started");
            }
            this.port = i4;
        }
    }

    public void start() {
        synchronized (this) {
            ShutdownMonitorThread shutdownMonitorThread = this.thread;
            if (shutdownMonitorThread != null && shutdownMonitorThread.isAlive()) {
                System.err.printf("ShutdownMonitorThread already started", new Object[0]);
                return;
            }
            ShutdownMonitorThread shutdownMonitorThread2 = new ShutdownMonitorThread();
            this.thread = shutdownMonitorThread2;
            shutdownMonitorThread2.start();
        }
    }

    public String toString() {
        return String.format("%s[port=%d]", getClass().getName(), Integer.valueOf(this.port));
    }

    private ShutdownMonitor() {
        Properties properties = System.getProperties();
        this.DEBUG = properties.containsKey("DEBUG");
        this.port = Integer.parseInt(properties.getProperty("STOP.PORT", "-1"));
        this.key = properties.getProperty("STOP.KEY", null);
        this.exitVm = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void close(Socket socket) {
        if (socket == null) {
            return;
        }
        try {
            socket.close();
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void debug(Throwable th) {
        if (this.DEBUG) {
            th.printStackTrace(System.err);
        }
    }
}
