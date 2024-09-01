package server;

// import java.io.FileReader;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import database.DatabaseConnection;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/*
 @author Emilyx3
 */

public class ServerProperties {

    private static final Properties props = new Properties();

    private static final String[] toLoad = {"Settings.ini"};

    private ServerProperties() {}

    static {
        for (String string : toLoad) {
            InputStreamReader fileReader;
            try {
                fileReader = new InputStreamReader(new FileInputStream(string), "UTF-8");
                props.load(fileReader);
                fileReader.close();
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }
        try {
            PreparedStatement ps = DatabaseConnection.getConnection().prepareStatement("SELECT * FROM auth_server_channel_ip");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                props.put(rs.getString("name") + rs.getInt("channelid"), rs.getString("value"));
            }
            rs.close();
            ps.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.exit(0); // Big ass error.
        }

    }

    public static String getProperty(String property) { return props.getProperty(property); }

    public static void setProperty(String prop, String newInf) { props.setProperty(prop, newInf); }

    public static String getProperty(String s, String def) { return props.getProperty(s, def); }
}
