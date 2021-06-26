<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ include file="apikey.jsp"%>
<%@ include file="nav.jsp"%>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resource/res/css/bootstrap.css?after">
    <link rel="stylesheet" href="/resource/res/css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
	<title>Insert title here</title>
		
	
</head>
<body style="background-color: #EAEAEA;">

<div style="margin: 3% 15% 0 15%;">
	<div
		style="display: flex; justify-content: space-between; border-bottom: 1px solid gray; margin-bottom: 15px; padding-bottom: 10px;">
		<div style="font-size: 30px; color: gray;">
			<b>랭킹</b>
		</div>
		<div>
			<input placeholder="소환사명" style="height: 30px;" />
			<button class="search_button">랭킹검색</button>
		</div>
	</div>

	<div style="display: flex; justify-content: space-between; border-bottom:">
		<div style="font-size: 12px;">소환사의 협곡에 총 3,002,570명의 소환사가 있습니다.</div>
		<div style="font-size: 12px; color: gray;">랭킹은 브론즈 이상 소환사만 표시, 랭킹은 주기적으로 갱신됩니다.</div>
	</div>

	<br />
	<!-- 랭킹 1등 박스 -->
	<div align="center" style="display: flex; justify-content: center;">
		<div align="justify" style="border: 5px solid #BDBBBB; width: 50%; height: 170px; background-color: white; display: flex; flex-direction: column;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 30px;  display: flex; flex-direction: column;">
				<b>1</b>
			</div>
			<div style="display: flex;">
				<!-- 사진, 정보 -->
				<div style="display: flex;">
				
					<div style="display: flex; margin: 0 5% 0 5%;">
						
						<img id="pfimg_rank1" src="/resource/res/img/profileIcon.jpg" style="width: 100px; max-height:100px; display: block;" />
					</div>
					
					<div style="margin-top: 15px; display: flex; flex-direction: column;">
						<div id="gamername1" style="font-size: 20px; color: black; display: flex; flex-direction: column;">
							소환사이름
						</div>
						<div id="rank" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
							<img src="/resource/res/img/emblems/Emblem_CHALLENGER.png" style="height: 30px;" /> Challenger
							<div id="rank_point1">
								<b>point</b>
							</div>
							<div id = "gamerLV0">Lv.234</div>
						</div>
						
						<div id="rank_stat" style="display: flex;">
							<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
								<div id="win_bar1" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
								<div align="right" id="lose_bar1" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
							</div>

							<div id="winper1">62%</div>
						</div>

					</div>
				</div>
				<!-- 모스트 정보 -->
				<div style="margin-left: 10px; display: flex; flex-direction: column; margin: 0 5% 0 10%;">
					<c:forEach var="a" begin="0" end="2" step="1">
						<div style="display: flex; align-items: center; margin-bottom: 10px;">
							<!-- 챔피언 사진 -->
							<img id = "champImg${a}" class="circle_image" src=""
								style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
							<!-- 모스트1 챔피언 이름 -->
							<div class="mostChampion" id="championName${a}" style="font-size: 12px; color: red;">챔피언</div>
							<!-- 모스트1 챔피언 레벨-->
							<div class="mostChampion" id="championLV${a}" style="font-size: 12px;">1</div>
							<!-- 모스트1 챔피언 점수-->
							<div class="mostChampion" id="championScore${a}" style="font-size: 12px;">100</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<br />
	<!-- 랭킹 2-5 -->
	<div style="display: flex; justify-content: space-between;">
		<c:forEach var="b" begin="2" end="5" step="1">
		<div align="justify" style="border: 5px solid #BDBBBB; width: 250px; height: 170px; background-color: white;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 20px;">
				<b>${b}</b>
			</div>
			<div align="center">
				<img class="circle_image" id="pfimg_rank${b}" src=""
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div id="gamername${b}">소환사명</div>
				<div id="${b}" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
					<img src="/resource/res/img/emblems/Emblem_CHALLENGER.png" style="height: 30px;" /> Challenger
					<div id="rank_point${b}" style="margin: 0 5px 0 5px;">
						<b>1,494 LP</b>
					</div>
					<div id = "gamerLV${b-1}">Lv.234</div>
				</div>
				<div id="rank_stat${b}" style="display: flex; justify-content: center;">
					<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
						<div align="left" id="win_bar${b}" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
						<div align="right" id="lose_bar${b}" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
					</div>

					<div id="winper${b}">62%</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>

	<br />
	<!-- 랭킹 표 -->
	<div style="border: 0.3px solid gray; width: 100%; height: 2000px; background-color: #F2F2F2;">
		<div style="display: flex; border-bottom: 1px solid gray;">
			<div style="width: 10%">&nbsp;</div>
			<div style="width: 30%">소환사</div>
			<div style="width: 10%">티어</div>
			<div style="width: 13%">LP</div>
			<div style="width: 13%">레벨</div>
			<div style="width: 24%">승률</div>
		</div>
		
		<!-- 1칸 -->
		<c:forEach var="i" begin="6" end="40" step="1">
		<div style="display: flex; background-color: #EAEAEA; height: 50px;">
			<div align="center" style="width: 10%; display: flex; align-items: center;">${i}</div>
			<div style="width: 30%; display: flex; align-items: center;">
				<img class="circle_image" id="pfimg_rank${i}" src=""
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div id="gamername${i}">보고싶다 오로라</div>
			</div>
			<div style="width: 10%; display: flex; align-items: center;">Challenger</div>
			<div id="rank_point${i}" style="width: 13%; display: flex; align-items: center;">1,372 LP</div>
			<div id= "gamerLV${i-1}" style="width: 13%; display: flex; align-items: center;">225</div>
			<div style="width: 24%; display: flex; align-items: center;">
				<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
					<div align="left" id="win_bar${i}" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
					<div align="right" id="lose_bar${i}" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
				</div>
				<div id="winper${i}">62%</div>
			</div>
		</div>
		</c:forEach>
		
	</div>
	<br />
</div>
<%@ include file="footer.jsp"%>
</body>
<script>
	function setChampName(champId){   
		var champName = "";

		if (champId == 266) {
			champName = "Aatrox";
		} else if (champId == 103) {
			champName = "Ahri";
		} else if (champId == 84) {
			champName = "Akali";
		} else if (champId == 12) {
			champName = "Alistar";
		} else if (champId == 32) {
			champName = "Amumu";
		} else if (champId == 34) {
			champName = "Anivia";
		} else if (champId == 1) {
			champName = "Annie";
		} else if (champId == 523) {
			champName = "Aphelios";
		} else if (champId == 22) {
			champName = "Ashe";
		} else if (champId == 136) {
			champName = "AurelionSol";
		} else if (champId == 268) {
			champName = "Azir";
		} else if (champId == 432) {
			champName = "Bard";
		} else if (champId == 53) {
			champName = "Blitzcrank";
		} else if (champId == 63) {
			champName = "Brand";
		} else if (champId == 201) {
			champName = "Braum";
		} else if (champId == 51) {
			champName = "Caitlyn";
		} else if (champId == 164) {
			champName = "Camille";
		} else if (champId == 69) {
			champName = "Cassiopeia";
		} else if (champId == 31) {
			champName = "Chogath";
		} else if (champId == 42) {
			champName = "Corki";
		} else if (champId == 122) {
			champName = "Darius";
		} else if (champId == 131) {
			champName = "Diana";
		} else if (champId == 119) {
			champName = "Draven";
		} else if (champId == 36) {
			champName = "DrMundo";
		} else if (champId == 245) {
			champName = "Ekko";
		} else if (champId == 60) {
			champName = "Elise";
		} else if (champId == 28) {
			champName = "Evelynn";
		} else if (champId == 81) {
			champName = "Ezreal";
		} else if (champId == 9) {
			champName = "Fiddlesticks";
		} else if (champId == 114) {
			champName = "Fiora";
		} else if (champId == 105) {
			champName = "Fizz";
		} else if (champId == 3) {
			champName = "Galio";
		} else if (champId == 41) {
			champName = "Gangplank";
		} else if (champId == 86) {
			champName = "Garen";
		} else if (champId == 150) {
			champName = "Gnar";
		} else if (champId == 79) {
			champName = "Gragas";
		} else if (champId == 104) {
			champName = "Graves";
		} else if (champId == 120) {
			champName = "Hecarim";
		} else if (champId == 74) {
			champName = "Heimerdinger";
		} else if (champId == 420) {
			champName = "Illaoi";
		} else if (champId == 39) {
			champName = "Irelia";
		} else if (champId == 427) {
			champName = "Ivern";
		} else if (champId == 40) {
			champName = "Janna";
		} else if (champId == 59) {
			champName = "JarvanIV";
		} else if (champId == 24) {
			champName = "Jax";
		} else if (champId == 126) {
			champName = "Jayce";
		} else if (champId == 202) {
			champName = "Jhin";
		} else if (champId == 222) {
			champName = "Jinx";
		} else if (champId == 145) {
			champName = "Kaisa";
		} else if (champId == 429) {
			champName = "Kalista";
		} else if (champId == 43) {
			champName = "Karma";
		} else if (champId == 30) {
			champName = "Karthus";
		} else if (champId == 38) {
			champName = "Kassadin";
		} else if (champId == 55) {
			champName = "Katarina";
		} else if (champId == 10) {
			champName = "Kayle";
		} else if (champId == 141) {
			champName = "Kayn";
		} else if (champId == 85) {
			champName = "Kennen";
		} else if (champId == 121) {
			champName = "Khazix";
		} else if (champId == 203) {
			champName = "Kindred";
		} else if (champId == 240) {
			champName = "Kled";
		} else if (champId == 96) {
			champName = "KogMaw";
		} else if (champId == 7) {
			champName = "Leblanc";
		} else if (champId == 64) {
			champName = "LeeSin";
		} else if (champId == 89) {
			champName = "Leona";
		} else if (champId == 127) {
			champName = "Lissandra";
		} else if (champId == 236) {
			champName = "Lucian";
		} else if (champId == 117) {
			champName = "Lulu";
		} else if (champId == 99) {
			champName = "Lux";
		} else if (champId == 54) {
			champName = "Malphite";
		} else if (champId == 90) {
			champName = "Malzahar";
		} else if (champId == 57) {
			champName = "Maokai";
		} else if (champId == 11) {
			champName = "MasterYi";
		} else if (champId == 21) {
			champName = "MissFortune";
		} else if (champId == 62) {
			champName = "MonkeyKing";
		} else if (champId == 82) {
			champName = "Mordekaiser";
		} else if (champId == 25) {
			champName = "Morgana";
		} else if (champId == 267) {
			champName = "Nami";
		} else if (champId == 75) {
			champName = "Nasus";
		} else if (champId == 111) {
			champName = "Nautilus";
		} else if (champId == 518) {
			champName = "Neeko";
		} else if (champId == 76) {
			champName = "Nidalee";
		} else if (champId == 56) {
			champName = "Nocturne";
		} else if (champId == 20) {
			champName = "Nunu";
		} else if (champId == 2) {
			champName = "Olaf";
		} else if (champId == 61) {
			champName = "Orianna";
		} else if (champId == 516) {
			champName = "Ornn";
		} else if (champId == 80) {
			champName = "Pantheon";
		} else if (champId == 78) {
			champName = "Poppy";
		} else if (champId == 555) {
			champName = "Pyke";
		} else if (champId == 246) {
			champName = "Qiyana";
		} else if (champId == 133) {
			champName = "Quinn";
		} else if (champId == 497) {
			champName = "Rakan";
		} else if (champId == 33) {
			champName = "Rammus";
		} else if (champId == 421) {
			champName = "RekSai";
		} else if (champId == 58) {
			champName = "Renekton";
		} else if (champId == 107) {
			champName = "Rengar";
		} else if (champId == 92) {
			champName = "Riven";
		} else if (champId == 68) {
			champName = "Rumble";
		} else if (champId == 13) {
			champName = "Ryze";
		} else if (champId == 113) {
			champName = "Sejuani";
		} else if (champId == 235) {
			champName = "Senna";
		} else if (champId == 875) {
			champName = "Sett";
		} else if (champId == 35) {
			champName = "Shaco";
		} else if (champId == 98) {
			champName = "Shen";
		} else if (champId == 102) {
			champName = "Shyvana";
		} else if (champId == 27) {
			champName = "Singed";
		} else if (champId == 14) {
			champName = "Sion";
		} else if (champId == 15) {
			champName = "Sivir";
		} else if (champId == 72) {
			champName = "Skarner";
		} else if (champId == 37) {
			champName = "Sona";
		} else if (champId == 16) {
			champName = "Soraka";
		} else if (champId == 50) {
			champName = "Swain";
		} else if (champId == 517) {
			champName = "Sylas";
		} else if (champId == 134) {
			champName = "Syndra";
		} else if (champId == 223) {
			champName = "TahmKench";
		} else if (champId == 163) {
			champName = "Taliyah";
		} else if (champId == 91) {
			champName = "Talon";
		} else if (champId == 44) {
			champName = "Taric";
		} else if (champId == 17) {
			champName = "Teemo";
		} else if (champId == 412) {
			champName = "Thresh";
		} else if (champId == 18) {
			champName = "Tristana";
		} else if (champId == 48) {
			champName = "Trundle";
		} else if (champId == 23) {
			champName = "Tryndamere";
		} else if (champId == 4) {
			champName = "TwistedFate";
		} else if (champId == 29) {
			champName = "Twitch";
		} else if (champId == 77) {
			champName = "Udyr";
		} else if (champId == 6) {
			champName = "Urgot";
		} else if (champId == 110) {
			champName = "Varus";
		} else if (champId == 67) {
			champName = "Vayne";
		} else if (champId == 45) {
			champName = "Veigar";
		} else if (champId == 161) {
			champName = "Velkoz";
		} else if (champId == 254) {
			champName = "Vi";
		} else if (champId == 112) {
			champName = "Viktor";
		} else if (champId == 8) {
			champName = "Vladimir";
		} else if (champId == 106) {
			champName = "Volibear";
		} else if (champId == 19) {
			champName = "Warwick";
		} else if (champId == 498) {
			champName = "Xayah";
		} else if (champId == 101) {
			champName = "Xerath";
		} else if (champId == 5) {
			champName = "XinZhao";
		} else if (champId == 157) {
			champName = "Yasuo";
		} else if (champId == 83) {
			champName = "Yorick";
		} else if (champId == 350) {
			champName = "Yuumi";
		} else if (champId == 154) {
			champName = "Zac";
		} else if (champId == 238) {
			champName = "Zed";
		} else if (champId == 115) {
			champName = "Ziggs";
		} else if (champId == 26) {
			champName = "Zilean";
		} else if (champId == 142) {
			champName = "Zoe";
		} else if (champId == 143) {
			champName = "Zyra";
		} else if (champId == 777) {
			champName = "Yone";
		} else if (champId == 145) {
			champName = "Kaisa";
		} else if (champId == 777) {
			champName = "Yone";
		}else if (champId == 234) {
			champName = "Viego";
		}else if (champId == 526) {
			champName = "Rell";
		}else if (champId == 876) {
			champName = "Lillia";
		}else if (champId == 147) {
			champName = "Seraphine";
		} else{
			champName = "Garen";
		}
	return champName;
	}
	$(document).ready(function() {
		var rankingNum=[];
		$.ajax({
			type:"GET",
			url: "https://kr.api.riotgames.com/lol/league/v4/challengerleagues/by-queue/RANKED_SOLO_5x5?api_key="+api_key,
			dataType:"json",
			async:false,
		}).done((res)=>{
			rankingNum=res.entries;
			rankingNum.sort(function(a,b){
				return b.leaguePoints-a.leaguePoints;
			})
			for(var i=1;i<41;i++){
				document.querySelector("#gamername"+i).innerHTML="<b>"+rankingNum[i-1].summonerName+"</b>";
				document.querySelector("#rank_point"+i).innerHTML="<b>"+rankingNum[i-1].leaguePoints+" LP</b>";
				document.querySelector("#win_bar"+i).innerHTML=rankingNum[i-1].wins;
				document.querySelector("#lose_bar"+i).innerHTML=rankingNum[i-1].losses;
				document.querySelector("#winper"+i).innerHTML=Math.round(rankingNum[i-1].wins/(rankingNum[i-1].losses+rankingNum[i-1].wins)*100)+"%";
				$.ajax({
					type:"GET",
					url: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+rankingNum[i-1].summonerName+"?api_key="+api_key,
					dataType: "json",
					async:false
					}).done((res)=>{
						if(i==1){
							for(var j=0;j<3;j++){
								$.ajax({
									type:"GET",
									url: "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+ res.id +"?api_key="+api_key,
									dataType:"json",
									async:false,
									}).done((res)=>{
										document.querySelector("#championName"+j).innerHTML="<b>"+setChampName(res[j].championId)+"</b>";
										document.querySelector("#championLV"+j).innerHTML="<b>"+res[j].championLevel+" LV</b>";
										document.querySelector("#championScore"+j).innerHTML="<b>"+res[j].championPoints+"점</b>";
										document.querySelector("#champImg"+j).src="http://ddragon.leagueoflegends.com/cdn/${championVersion}/img/champion/" + setChampName(res[j].championId) + ".png";
									});
							}
						}
						console.log(res);
						document.querySelector("#gamerLV"+(i-1)).innerHTML="<b>"+res.summonerLevel+" LV</b>";
						document.querySelector("#pfimg_rank"+(i)).src="http://ddragon.leagueoflegends.com/cdn/${summonerVersion}/img/profileicon/"+res.profileIconId+".png";
					})
			}
		});

	});
	
</script>