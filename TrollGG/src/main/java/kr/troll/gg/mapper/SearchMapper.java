package kr.troll.gg.mapper;

import kr.troll.gg.dto.Summoner;

public interface SearchMapper {
	public int summonerInsert(Summoner sm);
	public Summoner summonerSelect(String SummonerName);
}
