package kr.troll.gg;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value = {"kr.troll.gg.mapper"})
public class TrollGgApplication {

	public static void main(String[] args) {
		SpringApplication.run(TrollGgApplication.class, args);
	}

}
