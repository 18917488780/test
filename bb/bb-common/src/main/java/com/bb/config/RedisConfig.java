package com.bb.config;
import java.util.HashSet;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.PropertySource;
import lombok.Data;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;
@Data
@Configuration
@Lazy
@PropertySource("classpath:/properties/redis.properties")
//@ConfigurationProperties(prefix = "redis")
public class RedisConfig {
	/*
	 * //@Value("${redis.host}") private String host; //@Value("${redis.port}")
	 * private int port;
	 * 
	 * @Bean public Jedis jedis() { return new Jedis(host, port); }
	 */
	
	/*private String nodes; //分片
	@Bean
	public ShardedJedis shardedJedis() {
		List<JedisShardInfo> shards = new ArrayList<>();
		String[] strNodes = nodes.split(",");
		for(String strNode : strNodes) {
			String[] node = strNode.split(":");
			String host = node[0];
			int port = Integer.parseInt(node[1]);
			shards.add(new JedisShardInfo(host, port));
		}
		return new ShardedJedis(shards);
	}*/
	
	/*@Value("${redis.sentinel.mastername}")  //哨兵
	private String masterName;
	@Value("${redis.sentinels}")
	private String nodes;
	@Bean
	public JedisSentinelPool jedisSentinelPool() {
		Set<String> sentinels = new HashSet<>();
		sentinels.add(nodes);
		return new JedisSentinelPool(masterName, sentinels);
	}
	@Bean
	@Scope("prototype")
	public Jedis jedis(@Qualifier("jedisSentinelPool") JedisSentinelPool pool) {
		return pool.getResource();
	}*/
	
	@Value("${redis.nodes}")
	private String nodes;
	@Bean
	public JedisCluster jedisCluster() {
		HashSet<HostAndPort> nodesSets = new HashSet<>();
		String[] strNode = nodes.split(",");
		for(String redisNode : strNode) {
			String host = redisNode.split(":")[0];
			int port = Integer.parseInt(redisNode.split(":")[1]);
			nodesSets.add(new HostAndPort(host, port));
		}
		return new JedisCluster(nodesSets);
	}
}











