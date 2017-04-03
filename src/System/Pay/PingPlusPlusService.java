package System.Pay;

import org.springframework.stereotype.Service;

import com.pingplusplus.Pingpp;


/**
 * @TypeName：PingPlusPlusService
 * @description：
 * @author：AS
 * @createdTime:2017年4月3日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */

@Service
public class PingPlusPlusService {
	private final static String apiKey = "sk_test_aXbTmHqT0qrHy1uTKSrHKOOG";
	
	private final static String appId = "app_e1mnbTCi5eLGC0CS";
	
	private final static String privateKey = "-----BEGIN RSA PRIVATE KEY-----\n" +
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
	
	public static String charge(String orderNo,int amount,String subject,String body,String channel,String clientIP){
		
		Pingpp.apiKey = apiKey;
		
		Pingpp.privateKey = privateKey;
		PingPlusCharge charge = new PingPlusCharge(appId);
		
		String chargeString = charge.createCharge(orderNo, amount, subject, body, channel, clientIP);
		return chargeString;
	}
}
