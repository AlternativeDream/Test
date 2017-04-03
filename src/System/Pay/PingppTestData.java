package System.Pay;

/**
 * Created by Afon on 2016/12/20.
 */
public class PingppTestData {
    public static String getApiKey() {
        return "sk_test_aXbTmHqT0qrHy1uTKSrHKOOG";
    }

    public static String getAppID() {
        return "app_e1mnbTCi5eLGC0CS";
    }

    public static String getPKCS8PrivateKey() {
        return "-----BEGIN RSA PRIVATE KEY-----\n" +
    			"MIICXAIBAAKBgQCm8uJYFFEG2un8pdgLEFWdmoGAqXVjH1kqi8Qug4G9BAIR+VhZ\n" +
    			"CnbaXGjFLvz9XgSPeedHLDKKy0L+oAiqTAS8hfkV9ACuh2sOWMrrbQskvEvqIx65\n" +
    			"yHivQiMMCyfDl7Zt4H8W5kke/1a9uZJU9GgwuAy5SpC3B4hJ61hrqGCy/wIDAQAB\n" +
    			"AoGAV0dnWZDVg3XzGehB+BbEC674wSDWg8mhvgJvv7l0nDJ6OpdWvsYfuKzTATM9\n" +
    			"g+AhFjku1iCfE7yL+74CibVQS760QC/kCxo5fEQID3aSFBqC8DrFB71UvOpcx62D\n" +
    			"+FGjCYpvjscwpHkcG1xfrOamL9iYB2kWz6XPRQiIlKTfRSECQQDSnT7fm5HJUvBc\n" +
    			"2bysBB96SfPLtHerrJLB0Bc8s9l2+wMrJKWK829kbdr6wlrYcXwhLNXPX1hCHoMV\n" +
    			"QsrkCeQHAkEAyuzJfqwxH6wGoXxTsKcP7Fe/kzmkh18628vo+AdZnE5dNAmaeeYa\n" +
    			"pgIujQ6kJpxDPFyX7sAmxcepVsRuJFKrSQJAFdcQigeL2qCrJDXABuZ2jSvWCC2y\n" +
    			"qy6+GTMG9diAmIH3FiY6tGoCBxwNNSuqV/+Mq7QGh/aPJGwdk7rVZ0hPSQJBAKL1\n" +
    			"FjagZu6NQeHqqnaBIntkWBcNwj9nzSd3D8YmeOLZ12UTlTbw/1NzCxkBufa7pA7U\n" +
    			"OLplGn3XgfiI0/5dWOkCQEiaCdvfEqe1jOrD1FBAJ70USt2/toEulR5Pas9qxwZG\n" +
    			"9oLB+Rzp+FBe8TdXOEjrYjVrC9zKfvGmkm2DTnm8iD4=\n"+
    			"-----END RSA PRIVATE KEY-----\n"; 
    }

    public static String getPKCS1PrivateKey() {
        return "-----BEGIN RSA PRIVATE KEY-----\n" +
    			"MIICXAIBAAKBgQCm8uJYFFEG2un8pdgLEFWdmoGAqXVjH1kqi8Qug4G9BAIR+VhZ\n" +
    			"CnbaXGjFLvz9XgSPeedHLDKKy0L+oAiqTAS8hfkV9ACuh2sOWMrrbQskvEvqIx65\n" +
    			"yHivQiMMCyfDl7Zt4H8W5kke/1a9uZJU9GgwuAy5SpC3B4hJ61hrqGCy/wIDAQAB\n" +
    			"AoGAV0dnWZDVg3XzGehB+BbEC674wSDWg8mhvgJvv7l0nDJ6OpdWvsYfuKzTATM9\n" +
    			"g+AhFjku1iCfE7yL+74CibVQS760QC/kCxo5fEQID3aSFBqC8DrFB71UvOpcx62D\n" +
    			"+FGjCYpvjscwpHkcG1xfrOamL9iYB2kWz6XPRQiIlKTfRSECQQDSnT7fm5HJUvBc\n" +
    			"2bysBB96SfPLtHerrJLB0Bc8s9l2+wMrJKWK829kbdr6wlrYcXwhLNXPX1hCHoMV\n" +
    			"QsrkCeQHAkEAyuzJfqwxH6wGoXxTsKcP7Fe/kzmkh18628vo+AdZnE5dNAmaeeYa\n" +
    			"pgIujQ6kJpxDPFyX7sAmxcepVsRuJFKrSQJAFdcQigeL2qCrJDXABuZ2jSvWCC2y\n" +
    			"qy6+GTMG9diAmIH3FiY6tGoCBxwNNSuqV/+Mq7QGh/aPJGwdk7rVZ0hPSQJBAKL1\n" +
    			"FjagZu6NQeHqqnaBIntkWBcNwj9nzSd3D8YmeOLZ12UTlTbw/1NzCxkBufa7pA7U\n" +
    			"OLplGn3XgfiI0/5dWOkCQEiaCdvfEqe1jOrD1FBAJ70USt2/toEulR5Pas9qxwZG\n" +
    			"9oLB+Rzp+FBe8TdXOEjrYjVrC9zKfvGmkm2DTnm8iD4=\n"+
    			"-----END RSA PRIVATE KEY-----\n";
    }

    public static String getChargeWebhooksData() {
        return "{\"id\":\"evt_c4qfbcefvIhsxKuES4CpqdUN\",\"created\":1482204769,\"livemode\":false,\"type\":\"charge.succeeded\",\"data\":{\"object\":{\"amount\":100,\"amount_refunded\":0,\"amount_settle\":100,\"app\":\"app_1Gqj58ynP0mHeX1q\",\"body\":\"Your body\",\"channel\":\"alipay\",\"client_ip\":\"210.28.41.51\",\"created\":1482204769,\"credential\":{},\"currency\":\"cny\",\"description\":\"Description.\",\"extra\":{},\"failure_code\":null,\"failure_msg\":null,\"id\":\"ch_1SiPqPDCuvj5S4OaTSX54KC0\",\"livemode\":false,\"metadata\":{},\"object\":\"charge\",\"order_no\":\"orderno1482210036043\",\"paid\":true,\"refunded\":false,\"refunds\":{\"data\":[],\"has_more\":false,\"object\":\"list\",\"url\":\"/v1/charges/ch_1SiPqPDCuvj5S4OaTSX54KC0/refunds\"},\"subject\":\"Your Subject\",\"time_expire\":1482207768,\"time_paid\":1482204769,\"time_settle\":null,\"transaction_no\":\"2016122028818332\"}},\"object\":\"event\",\"request\":\"iar_cfgO0GxCSs9CH0K4r1t5Whjk\",\"pending_webhooks\":0}";
    }

    public static String getBatchTransferWebhooksData() {
        return "{\"id\":\"evt_cx1zsoQsiPfjagJKt5gydjsx\",\"created\":1475924802,\"livemode\":true,\"type\":\"batch_transfer.succeeded\",\"data\":{\"object\":{\"id\":\"181610081644346142\",\"amount\":2200,\"app\":\"app_1Gqj58ynP0mHeX1q\",\"batch_no\":\"battr1475916275\",\"channel\":\"alipay\",\"created\":1475916274,\"currency\":\"cny\",\"description\":\"Batch transfer description.\",\"extra\":{},\"failure_msg\":null,\"fee\":100,\"livemode\":true,\"metadata\":{},\"object\":\"batch_transfer\",\"recipients\":[{\"account\":\"test@gmail.com\",\"amount\":1100,\"description\":\"批量付款说明。\",\"name\":\"test\",\"status\":\"paid\",\"transfer\":\"tr_uj9GSfTK8G8mLeHu9KafK5WT\"},{\"account\":\"test@gmail.com\",\"amount\":1100,\"description\":\"批量付款说明。\",\"name\":\"test002\",\"status\":\"paid\",\"transfer\":\"tr_PiXiffX4mbevX5HDfT44DmjL\"}],\"status\":\"succeeded\",\"time_succeeded\":null,\"transaction_no\":null,\"type\":\"b2c\"}},\"object\":\"event\",\"request\":\"iar_23eD0xHi58zLfD5HKdnC2nDc\",\"pending_webhooks\":0}";
    }
}
