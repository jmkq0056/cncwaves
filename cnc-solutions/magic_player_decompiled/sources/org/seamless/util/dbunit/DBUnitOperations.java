package org.seamless.util.dbunit;

import android.support.v4.media.f;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.dbunit.database.DatabaseConfig;
import org.dbunit.database.DatabaseConnection;
import org.dbunit.database.IDatabaseConnection;
import org.dbunit.dataset.IDataSet;
import org.dbunit.dataset.ReplacementDataSet;
import org.dbunit.dataset.xml.FlatXmlDataSet;
import org.dbunit.operation.DatabaseOperation;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DBUnitOperations extends ArrayList<Op> {
    private static final Logger log = Logger.getLogger(DBUnitOperations.class.getName());

    public static class ClasspathOp extends Op {
        public ClasspathOp(String str) {
            super(str);
        }

        @Override // org.seamless.util.dbunit.DBUnitOperations.Op
        public InputStream openStream(String str) {
            return Thread.currentThread().getContextClassLoader().getResourceAsStream(str);
        }

        public ClasspathOp(String str, String str2) {
            super(str, str2);
        }

        public ClasspathOp(String str, String str2, DatabaseOperation databaseOperation) {
            super(str, str2, databaseOperation);
        }
    }

    public static abstract class Op {
        public ReplacementDataSet dataSet;
        public DatabaseOperation operation;

        public Op(String str) {
            this(str, null, DatabaseOperation.CLEAN_INSERT);
        }

        public void execute(IDatabaseConnection iDatabaseConnection) {
            try {
                this.operation.execute(iDatabaseConnection, this.dataSet);
            } catch (Exception e4) {
                throw new RuntimeException(e4);
            }
        }

        public IDataSet getDataSet() {
            return this.dataSet;
        }

        public DatabaseOperation getOperation() {
            return this.operation;
        }

        public abstract InputStream openStream(String str);

        public Op(String str, String str2) {
            this(str, str2, DatabaseOperation.CLEAN_INSERT);
        }

        public Op(String str, String str2, DatabaseOperation databaseOperation) {
            ReplacementDataSet replacementDataSet;
            try {
                if (str2 != null) {
                    replacementDataSet = new ReplacementDataSet(new FlatXmlDataSet(openStream(str), openStream(str2)));
                } else {
                    replacementDataSet = new ReplacementDataSet(new FlatXmlDataSet(openStream(str)));
                }
                this.dataSet = replacementDataSet;
                replacementDataSet.addReplacementObject("[NULL]", (Object) null);
                this.operation = databaseOperation;
            } catch (Exception e4) {
                throw new RuntimeException(e4);
            }
        }
    }

    public abstract void disableReferentialIntegrity(IDatabaseConnection iDatabaseConnection);

    public void editConfig(DatabaseConfig databaseConfig) {
    }

    public abstract void enableReferentialIntegrity(IDatabaseConnection iDatabaseConnection);

    public void execute() throws Throwable {
        IDatabaseConnection connection;
        Logger logger = log;
        StringBuilder sbA = f.a("Executing DBUnit operations: ");
        sbA.append(size());
        logger.info(sbA.toString());
        try {
            connection = getConnection();
            try {
                disableReferentialIntegrity(connection);
                Iterator<Op> it = iterator();
                while (it.hasNext()) {
                    it.next().execute(connection);
                }
                enableReferentialIntegrity(connection);
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (Exception e4) {
                        log.log(Level.WARNING, "Failed to close connection after DBUnit operation: " + e4, (Throwable) e4);
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (Exception e5) {
                        log.log(Level.WARNING, "Failed to close connection after DBUnit operation: " + e5, (Throwable) e5);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            connection = null;
        }
    }

    public IDatabaseConnection getConnection() {
        try {
            DatabaseConnection databaseConnection = new DatabaseConnection(getDataSource().getConnection());
            editConfig(databaseConnection.getConfig());
            return databaseConnection;
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public abstract DataSource getDataSource();

    public class FileOp extends Op {
        public FileOp(String str) {
            super(str);
        }

        @Override // org.seamless.util.dbunit.DBUnitOperations.Op
        public InputStream openStream(String str) {
            try {
                return new FileInputStream(str);
            } catch (FileNotFoundException e4) {
                throw new RuntimeException(e4);
            }
        }

        public FileOp(String str, String str2) {
            super(str, str2);
        }

        public FileOp(String str, String str2, DatabaseOperation databaseOperation) {
            super(str, str2, databaseOperation);
        }
    }
}
