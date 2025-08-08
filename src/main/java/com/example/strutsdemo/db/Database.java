package com.example.strutsdemo.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class Database {
    private static final String DEFAULT_HOST = "localhost";
    private static final String DEFAULT_PORT = "5432";
    private static final String DEFAULT_DB   = "strutsdb";
    private static final String DEFAULT_USER = "struts";
    private static final String DEFAULT_PASS = "struts";

    static {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("PostgreSQL JDBC Driver not found", e);
        }
    }

    private Database() {}

    public static Connection getConnection() throws SQLException {
        String host = getenvOrDefault("DB_HOST", DEFAULT_HOST);
        String port = getenvOrDefault("DB_PORT", DEFAULT_PORT);
        String db   = getenvOrDefault("DB_NAME", DEFAULT_DB);
        String user = getenvOrDefault("DB_USER", DEFAULT_USER);
        String pass = getenvOrDefault("DB_PASSWORD", DEFAULT_PASS);

        String url = String.format("jdbc:postgresql://%s:%s/%s", host, port, db);
        return DriverManager.getConnection(url, user, pass);
    }

    private static String getenvOrDefault(String key, String defaultValue) {
        String v = System.getenv(key);
        return (v == null || v.isEmpty()) ? defaultValue : v;
    }
}
