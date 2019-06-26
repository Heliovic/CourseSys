package utils;

public class GeneralGenerator {
    public static String getPicId(String username) {
        return username + System.currentTimeMillis();
    }
}
