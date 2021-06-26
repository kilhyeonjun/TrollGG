package kr.troll.gg.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import kr.troll.gg.VersionCheck;
import kr.troll.gg.dto.LeagueEntrydto;
import kr.troll.gg.dto.Summoner;
import kr.troll.gg.service.SearchService;


@Controller
public class SearchController {
	final static String API_KEY = "RGAPI-2d2f9f06-0f32-4275-8555-e4706d6d520e";
	@Autowired
	SearchService service;
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	@RequestMapping("/ranking")
	public ModelAndView ranking() {
		VersionCheck.checkVersion();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ranking");
		mv.addObject("profileiconVersion", VersionCheck.profileiconVersion);
		mv.addObject("championVersion", VersionCheck.championVersion);
		mv.addObject("summonerVersion", VersionCheck.summonerVersion);
		mv.addObject("itemVersion", VersionCheck.itemVersion);
		return mv;
	}
	@RequestMapping("/search")
	public ModelAndView search(String SummonerName) {
		Summoner temp= null;
		VersionCheck.checkVersion();
		BufferedReader br = null;
		JsonParser jsonParser = new JsonParser();
		String[] matchList = null;
		
		VersionCheck.checkVersion();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("search");
		
		try{            
			//소환사 정보
			String urlstr = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+
					SummonerName.replace(" ", "")		+"?api_key="+API_KEY;
			URL url = new URL(urlstr);
			System.out.println(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8")); 
			String result = "";
			String line;
			while((line = br.readLine()) != null) { 
				result = result + line;
			}
			if (!result.equals("{}")) {
				JsonObject k = (JsonObject) jsonParser.parse(result);
				temp = new Summoner(
						k.get("profileIconId").getAsInt(),
						k.get("name").getAsString(),
						k.get("puuid").getAsString(),
						k.get("summonerLevel").getAsLong(),
						k.get("revisionDate").getAsLong(),
						k.get("id").getAsString(),
						k.get("accountId").getAsString());
				System.out.println(temp);
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		try{            
			//매치정보
			String urlstr = "https://asia.api.riotgames.com/lol/match/v5/matches/by-puuid/"+
					temp.getPuuid()+"/ids?start=0&count=20&"+"api_key="+API_KEY;
			System.out.println(urlstr);
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
			String result = "";
			String line;
			
			while((line = br.readLine()) != null) { 
				result = result + line;
			}
			System.out.println(result);
			if (!result.equals("[]")) {
				JsonArray arr = (JsonArray) jsonParser.parse(result);
				matchList = new String[arr.size()];
				for(int i=0; i<arr.size(); i++) {
					matchList[i] = arr.get(i).toString();
					System.out.println(matchList[i]);
					
				}				
			}

		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		mv.addObject("SummonerName", SummonerName);
		mv.addObject("profileiconVersion", VersionCheck.profileiconVersion);
		mv.addObject("championVersion", VersionCheck.championVersion);
		mv.addObject("summonerVersion", VersionCheck.summonerVersion);
		mv.addObject("itemVersion", VersionCheck.itemVersion);
		mv.addObject("user", temp);
		mv.addObject("matchId", matchList);
		
		return mv;
	}
	@RequestMapping("/test2")
	public ModelAndView test2(String SummonerName) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("search2");
		mv.addObject("SummonerName", SummonerName);
		return mv;
	}
	
	@RequestMapping("/reSearchUser")
	public ModelAndView reSearchUser(String SummonerName) {
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
	
}
