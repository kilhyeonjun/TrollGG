package kr.troll.gg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.troll.gg.dto.Summoner;
import kr.troll.gg.mapper.SearchMapper;

@Service
public class SearchService {
	final static String API_KEY = "RGAPI-d90b1303-15fd-4581-b941-73869af5b899";
	@Autowired
	SearchMapper map;
	public int summonerInsert(Summoner sm) {
		return map.summonerInsert(sm);
	}
	public Summoner summonerSelect(String SummonerName) {
		return map.summonerSelect(SummonerName);
	}
}
