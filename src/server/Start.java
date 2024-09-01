package server;

import client.SkillFactory;
import database.DatabaseConnection;
import handling.MapleServerHandler;
import handling.cashshop.CashShopServer;
import handling.channel.ChannelServer;
import handling.channel.MapleGuildRanking;
import handling.login.LoginInformationProvider;
import handling.login.LoginServer;
import handling.world.World;
import handling.world.family.MapleFamilyBuff;
// import java.io.BufferedReader;
// import java.io.IOException;
// import java.io.InputStreamReader;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import server.Timer.*;
import server.events.MapleOxQuizFactory;
import server.life.MapleLifeFactory;
import server.quest.MapleQuest;

public class Start {

    public static final void main(final String args[]) {
        // Server status, check for "Admin-only".
        if (Boolean.parseBoolean(ServerProperties.getProperty("tms.Admin"))) {
            System.out.println("Server currently set to \"Admin-only\" :::");
        }
        // Status status, check for "Enable-registeration".
        if (Boolean.parseBoolean(ServerProperties.getProperty("tms.AutoRegister"))) {
            System.out.println("Server currently set to \"Enable-registration\" :::");
        }

        try {
            final PreparedStatement ps = DatabaseConnection.getConnection().prepareStatement("UPDATE accounts SET loggedin = 0");
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            throw new RuntimeException("[EXCEPTION] Please check if the SQL server is active.");
        }

        // Game functionality initialization.
        World.init();
        WorldTimer.getInstance().start();
        EtcTimer.getInstance().start();
        MapTimer.getInstance().start();
        MobTimer.getInstance().start();
        CloneTimer.getInstance().start();
        EventTimer.getInstance().start();
        BuffTimer.getInstance().start();
        LoginInformationProvider.getInstance();
        MapleQuest.initQuests();
        MapleLifeFactory.loadQuestCounts();
        // ItemMakerFactory.getInstance();
        MapleItemInformationProvider.getInstance().load();
        MapleItemInformationProvider.getInstance().loadStyles(false);
        RandomRewards.getInstance();
        SkillFactory.getSkill(99999999);
        MapleOxQuizFactory.getInstance().initialize();
        MapleCarnivalFactory.getInstance();
        MapleGuildRanking.getInstance().getRank();
        MapleFamilyBuff.getBuffEntry();
        MapleServerHandler.registerMBean();
        RankingWorker.getInstance().run();
        MTSStorage.load();
        CashItemFactory.getInstance().initialize();
        LoginServer.run_startup_configurations();
        ChannelServer.startChannel_Main();
        CashShopServer.run_startup_configurations();
        CheatTimer.getInstance().register(AutobanManager.getInstance(), 60000);
        Runtime.getRuntime().addShutdownHook(new Thread(new Shutdown()));
        try {
            SpeedRunner.getInstance().loadSpeedRuns();
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        World.registerRespawn();
        LoginServer.setOn();
        System.out.println(String.format("Server is hosting on: %s :::", ServerProperties.getProperty("tms.IP")));
        System.gc();
        PingTimer.getInstance().register(System::gc, 1800000);
    }

    public static class Shutdown implements Runnable {

        @Override
        public void run() { new Thread(ShutdownServer.getInstance()).start(); }
    }
}
