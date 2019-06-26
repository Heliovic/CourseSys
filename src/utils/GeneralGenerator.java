package utils;

import java.text.SimpleDateFormat;

public class GeneralGenerator {
    public static String getPicId(String username) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String currentTime = sdf.format(System.currentTimeMillis());

        return currentTime + username;
    }
}