package System.Pay;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import com.pingplusplus.Pingpp;
import com.pingplusplus.exception.PingppException;
import com.pingplusplus.model.Charge;

/**
 * @TypeName：PingPlusCharge
 * @description：
 * @author：AS
 * @createdTime:2017年4月3日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public class PingPlusCharge {
	private String appId;

	public PingPlusCharge(String appId) {
		this.appId = appId;
	}
	
	public String createCharge(String orderNo, int amount, String subject, String body, String channel, String clientIP,String success_url) {
		Pingpp.privateKey = "-----BEGIN RSA PRIVATE KEY-----\n" +
				"MIICXAIBAAKBgQCm8uJYFFEG2un8pdgLEFWdmoGAqXVjH1kqi8Qug4G9BAIR+VhZ" +
				"CnbaXGjFLvz9XgSPeedHLDKKy0L+oAiqTAS8hfkV9ACuh2sOWMrrbQskvEvqIx65" +
				"yHivQiMMCyfDl7Zt4H8W5kke/1a9uZJU9GgwuAy5SpC3B4hJ61hrqGCy/wIDAQAB" +
				"AoGAV0dnWZDVg3XzGehB+BbEC674wSDWg8mhvgJvv7l0nDJ6OpdWvsYfuKzTATM9" +
				"g+AhFjku1iCfE7yL+74CibVQS760QC/kCxo5fEQID3aSFBqC8DrFB71UvOpcx62D" +
				"+FGjCYpvjscwpHkcG1xfrOamL9iYB2kWz6XPRQiIlKTfRSECQQDSnT7fm5HJUvBc" +
				"2bysBB96SfPLtHerrJLB0Bc8s9l2+wMrJKWK829kbdr6wlrYcXwhLNXPX1hCHoMV" +
				"QsrkCeQHAkEAyuzJfqwxH6wGoXxTsKcP7Fe/kzmkh18628vo+AdZnE5dNAmaeeYa" +
				"pgIujQ6kJpxDPFyX7sAmxcepVsRuJFKrSQJAFdcQigeL2qCrJDXABuZ2jSvWCC2y" +
				"qy6+GTMG9diAmIH3FiY6tGoCBxwNNSuqV/+Mq7QGh/aPJGwdk7rVZ0hPSQJBAKL1" +
				"FjagZu6NQeHqqnaBIntkWBcNwj9nzSd3D8YmeOLZ12UTlTbw/1NzCxkBufa7pA7U" +
				"OLplGn3XgfiI0/5dWOkCQEiaCdvfEqe1jOrD1FBAJ70USt2/toEulR5Pas9qxwZG" +
				"9oLB+Rzp+FBe8TdXOEjrYjVrC9zKfvGmkm2DTnm8iD4=\n-----END RSA PRIVATE KEY-----\n";

		Map<String, Object> chargeMap = new HashMap<String, Object>();  
        chargeMap.put("amount", amount);  
        chargeMap.put("currency", "cny");  
        chargeMap.put("subject", subject);  
        chargeMap.put("body", body);  
        chargeMap.put("order_no", orderNo);  
        chargeMap.put("channel",channel);
        Map<String,String> extraMap = new HashMap<String, String>();
        extraMap.put("success_url", success_url);
        
        chargeMap.put("extra", extraMap);
  
        Calendar cal = Calendar.getInstance();  
        cal.add(Calendar.MINUTE, 15);//15分钟失效  
        long timestamp = cal.getTimeInMillis()/ 1000L;
        chargeMap.put("time_expire", timestamp);  
  
        chargeMap.put("client_ip", clientIP); // 客户端 ip 地址(ipv4)  
        Map<String, String> app = new HashMap<String, String>();  
        app.put("id", appId);  
        chargeMap.put("app", app);  
        String chargeString = null;  
        try {  
            //发起交易请求  
            Charge charge = Charge.create(chargeMap);  
            // 传到客户端请先转成字符串 .toString(), 调该方法，会自动转成正确的 JSON 字符串  
            chargeString = charge.toString();  
        } catch (PingppException e) {  
            e.printStackTrace();  
        }  
        return chargeString;  
	}
}
