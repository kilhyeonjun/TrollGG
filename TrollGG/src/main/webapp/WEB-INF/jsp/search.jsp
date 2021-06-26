<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ include file="nav.jsp"%>
<%@ include file="apikey.jsp"%>
<head>
	<meta charset="UTF-8">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resource/res/css/bootstrap.css?after">
    <link rel="stylesheet" href="/resource/res/css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.	udflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
	integrity="sha512-d9xgZrVZpmmQlfonhQUvTR7lMPtO7NkZMkA0ABN3PHCbKA5nqylQ/yWlFAyY6hYgdF1Qh6nYiuADWwKB4C2WSw=="
	crossorigin="anonymous"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: "Malgun Gothic";
	font-size: 0.8em;
}
/*TAB CSS*/
ul.tabs {
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 32px; /*--Set height of tabs--*/
	border-left: 1px solid #999;
	width: 100%;
}

ul.tabs li {
	float: left;
	margin: 0;
	padding: 0;
	height: 31px;
	/*--Subtract 1px from the height of the unordered list--*/
	line-height: 40px; /*--Vertically aligns the text within the tab--*/
	border: 1px solid #999;
	border-left: none;
	margin-bottom: -1px; /*--Pull the list item down 1px--*/
	overflow: hidden;
	position: relative;
	background: #FFFFFF;
}

ul.tabs li a {
	text-decoration: none;
	color: #000;
	display: block;
	font-size: 1.2em;
	padding: 0 20px;
	/*--Gives the bevel look with a 1px white border inside the list item--*/
	border: 1px solid #fff;
	outline: none;
}

ul.tabs li a:hover {
	background: #ccc;
}

html ul.tabs li.active, html ul.tabs li.active a:hover {
	/*--Makes sure that the active tab does not listen to the hover properties--*/
	background: #E7E7E7;
	/*--Makes the active tab look like it's connected with its content--*/
	border-bottom: 1px solid #fff;
}

html ul.tabs li.active, html ul.tabs li.active a:focus {
	background: #E7E7E7;
}
</style>
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
	// 탭
	$(document).ready(function() {
		$(".tab_content").hide(); //모든 탭 숨기기
		$("ul.tabs li:first").addClass("active").show(); //첫번째 탭 보여주기
		$(".tab_content:first").show(); //첫번째 탭 내용 보여주기
		
		//클릭 이벤트 리스너
		$("ul.tabs li").click(function() {
			$("ul.tabs li").removeClass("active"); //탭 숨기기
			$(this).addClass("active"); //클릭탭 보여주기
			$(".tab_content").hide(); //모든 탭 숨기기
			var activeTab = $(this).find("a").attr("href"); //클릭 된 태그의 a태그의 주소 가져오기 (tab1 or tab2)
			$(activeTab).fadeIn(); //해당 탭 보여주기
			if(activeTab==="#tab2"){
				inGame();
			}
			return false;
		});
	});
	function redWin(i){
		//레드팀 승리
		document.querySelector("#SpwinOrlose"+i).style.color='red';
		document.querySelector("#SpwinOrlose"+i).innerHTML="패배";
		document.querySelector("#SpwinOrloseSide"+i).style.color='#1A85C4';
		document.querySelector("#SpwinOrloseSide"+i).innerHTML="승리";
		// 상세보기 배경 변경
		for(var d=0;d<5;d++){
			document.querySelector("#detailBox"+i+d).style.backgroundColor="#E9E0E0";
		}
		for(var d=5;d<10;d++){
			document.querySelector("#detailBox"+i+d).style.backgroundColor="#D8E4EC";
		}
	}
	function dictValueSum(obj){
		var sum = 0;
		for(var el in obj){
			sum += obj[el];
		}
		return sum;
	}
	function dictSortByValue(obj) {
		items = Object.keys(obj).map(function(key) {
			return [key, obj[key]];
		});
		items.sort(function(first, second) {
			return second[1] - first[1];
		});
		sorted_obj={}
		$.each(items, function(k, v) {
			use_key = v[0]
			use_value = v[1]
			sorted_obj[use_key] = use_value
		})
		return(sorted_obj)
	};
	function queueName(queueId){
		var result="";
		if(queueId==420){
			//420 솔랭
			result="솔랭";
		}else if(queueId==430){
			//430 일반
			result="일반";
		}else if(queueId==440){
			//440 무작위
			result="자유5:5랭크";
		}else if(queueId==450){
			//450 일반게임
			result="무작위 총력전";
		}else if(queueId==1020){
			result="단일 챔피언";
		}
		//420솔랭, 430일반, 440 아마도 자유랭크, 450무작위
	
		return result;
	};
	
	//스펠 데이터
	function spellName(spellId){
		var name="";
		if (spellId==21){
			name = "SummonerBarrier";
		} else if (spellId===1){
			name = "SummonerBoost";
		} else if (spellId==14){
			name = "SummonerDot";
		} else if (spellId==3){
			name = "SummonerExhaust";
		} else if (spellId==4){
			name = "SummonerFlash";
		} else if (spellId==6){
			name = "SummonerHaste";
		} else if (spellId==7){
			name = "SummonerHeal";
		} else if (spellId==13){
			name = "SummonerMana";
		} else if (spellId==3){
			name = "SummonerPoroRecall";
		} else if (spellId==31){
			name = "SummonerPoroThrow";
		} else if (spellId==11){
			name = "SummonerSmite";
		} else if (spellId==39){
			name = "SummonerSnowURFSnowball_Mark";
		} else if (spellId==32){
			name = "SummonerSnowball";
		} else if (spellId==12){
			name = "SummonerTeleport";
		}
	
		return name;
	};
	
	//메인 룬 데이터
	function perkName(perkId){
		//https://ddragon.canisback.com/img/perk-images/
		var name="";
		if(perkId==8112){
			name="Domination/Electrocute/Electrocute";
		}else if(perkId==8124){
			name="Domination/Predator/Predator";
		}else if(perkId==8128){
			name="Domination/DarkHarvest/DarkHarvest";
		}else if(perkId==9923){
			name="Domination/HailOfBlades/HailOfBlades";
		}else if(perkId==8351){
			name="Inspiration/GlacialAugment/GlacialAugment";
		}else if(perkId==8360){
			name="Inspiration/UnsealedSpellbook/UnsealedSpellbook";
		}else if(perkId==8358){
			name="Inspiration/MasterKey/MasterKey.png";
		}else if(perkId==8005){
			name="Precision/PressTheAttack/PressTheAttack";
		}else if(perkId==8008){
			name="Precision/LethalTempo/LethalTempoTemp";
		}else if(perkId==8021){
			name="Precision/FleetFootwork/FleetFootwork";
		}else if(perkId==8010){
			name="Precision/Conqueror/Conqueror";
		}else if(perkId==8437){
			name="Resolve/GraspOfTheUndying/GraspOfTheUndying";
		}else if(perkId==8439){
			name="Resolve/VeteranAftershock/VeteranAftershock";
		}else if(perkId==8465){
			name="Resolve/Guardian/Guardian";
		}else if(perkId==8214){
			name="Sorcery/SummonAery/SummonAery";
		}else if(perkId==8229){
			name="Sorcery/ArcaneComet/ArcaneComet";
		}else if(perkId==8230){
			name="Sorcery/PhaseRush/PhaseRush";
		}else if(perkId==8000){
			name="7201_Precision";
		}else if(perkId==8100){
			name="7200_Domination";
		}else if(perkId==8200){
			name="7202_Sorcery";
		}else if(perkId==8300){
			name="7203_Whimsy";
		}else if(perkId==8400){
			name="7204_Resolve";
		}
		return name;
	};
	
	//인게임
	function inGame(){
//		let decodeName=decodeURI(user.name.replace(/\+/g, '%20'));
		var noGame=`<div style="height:100%">
			<p style="text-align: center; font-size: 25px; font-weight: bold;">'`+user.name+`'님은 게임중이 아닙니다.</p>
			<p style="text-align: center; font-size: 18px;">현재 게임중이라면 다시 시도해주세요.</p>
			<p style="text-align: center; font-size: 18px;">('Bot'은 RiotAPI에서 인게임 정보를 가져올 수 없습니다.)</p>
		</div>`;

		$.ajax({
			type:"get",
			url:"https://kr.api.riotgames.com/lol/spectator/v4/active-games/by-summoner/"+user.id+"?api_key="+api_key,
			dataType:"json",
			async: false,
			error:function(){ // 게임 중 아닐 경우
				$("#tab2").empty();
				$("#tab2").append(noGame);
				} 
			}).done((res)=>{
				console.log(res);
				document.querySelector("#gameType").innerHTML=queueName(res.gameQueueConfigId);
				// 맵 종류
				if(res.mapId==11){
					document.querySelector("#mapId").innerHTML="소환사의 협곡";
				}else{
					document.querySelector("#mapId").innerHTML="칼바람 나락";
				}
				for(var i=0;i<10;i++){
					console.log("https://ddragon.leagueoflegends.com/cdn/${summonerVersion}/img/spell/"+spellName(res.participants[i].spell1Id)+".png");
					document.querySelector("#InGameChampImg"+i).src="http://ddragon.leagueoflegends.com/cdn/${championVersion}/img/champion/"+setChampName(res.participants[i].championId)+".png";
					document.querySelector("#InGameSpellD"+i).src="https://ddragon.leagueoflegends.com/cdn/${summonerVersion}/img/spell/"+spellName(res.participants[i].spell1Id)+".png";
					document.querySelector("#InGameSpellF"+i).src="https://ddragon.leagueoflegends.com/cdn/${summonerVersion}/img/spell/"+spellName(res.participants[i].spell2Id)+".png";
					document.querySelector("#InGameRuneMain"+i).src="https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/"+perkName(res.participants[i].perks.perkIds[0])+".png";
					document.querySelector("#InGameRuneSub"+i).src="https://opgg-static.akamaized.net/images/lol/perkStyle/" + res.participants[i].perks.perkSubStyle + ".png";
					document.querySelector("#InGameChampName"+i).innerHTML=res.participants[i].summonerName;
					$.ajax({
						type:"GET",
						url: "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+res.participants[i].summonerId+"?api_key="+api_key,
						dataType:"json",
						async: false,
						}).done((res)=>{
							
							if(res==""){
								document.querySelector("#InGameTier"+i).innerHTML="Unranked";
								document.querySelector("#InGameRank"+i).innerHTML="";
							}else{
								document.querySelector("#InGameTier"+i).innerHTML=res[0].tier;
								document.querySelector("#InGameRank"+i).innerHTML=res[0].rank;
							}
						});
					$.ajax({
							type:"GET",
							url: "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+res.participants[i].summonerId+"?api_key="+api_key,
							dataType:"json",
							async: false,
							}).done((res)=>{
								for(var n=0;n<3;n++){
									console.log(res[n].championId);
									document.querySelector("#InGame"+n+"Mastery"+i).src="http://ddragon.leagueoflegends.com/cdn/${championVersion}/img/champion/"+setChampName(res[n].championId)+".png";
								}
							});
					// 벤
					if(res.bannedChampions==""){
						//랭크전이 아닐때
						document.querySelector("#InGameTeamBan"+i).src="/resource/res/img/icon-notice.png";
					}else{
						document.querySelector("#InGameTeamBan"+i).src="http://ddragon.leagueoflegends.com/cdn/${championVersion}/img/champion/"+setChampName(res.bannedChampions[i].championId)+".png";
					}
				}
			});
	}
	function killCombo(participant){
		var result=""
		if(participant.pentaKills!=0){
			result="펜타킬";
		}else if(participant.quadraKills!=0){
			result="쿼드라킬";
		}else if(participant.tripleKills!=0){
			result="트리플킬";
		}else if(participant.doubleKills!=0){
			result="더블킬";
		}
		return result;
	}
	// 전적검색 상세보기 토글
	function doDisplay(obj){
		
		var index = $(obj).attr('id').split('h')[1]
		var spectificBox = document.querySelector("#matchSpecificBox"+index);
		
		if(spectificBox.style.display==='block'){
			//닫기
			spectificBox.style.display='none';
			if(document.querySelector("#winOrLose"+index).innerHTML==="승리"){
				document.querySelector("#moreButton"+index).src="/resource/res/img/winMore.png";
			}else{
				document.querySelector("#moreButton"+index).src="/resource/res/img/loseMore.png";
			}
		}else{
			//열기
			spectificBox.style.display='block';
			if(document.querySelector("#winOrLose"+index).innerHTML==="승리"){
				document.querySelector("#moreButton"+index).src="/resource/res/img/winClose.png";
			}else{
				document.querySelector("#moreButton"+index).src="/resource/res/img/loseClose.png";
			}
			if(document.querySelector("#matchSpecificBoxhidden"+index).innerHTML==='0'){
				searchDetail(index);
				document.querySelector("#matchSpecificBoxhidden"+index).innerHTML="1";	
			}	
		}
	}
	function searchDetail(index){
		var maxDamage=0;
		var gameTime=calGameTime(match[index].gameCreation, match[index].gameDuration);
		for(var j=0; j<match[index].participants.length; j++) {
			if(match[index].participants[j].totalDamageDealtToChampions>=maxDamage){
				maxDamage=match[index].participants[j].totalDamageDealtToChampions;
			}
		}
		for(var j=0; j<match[index].participants.length; j++) {
			//상세정보
			document.querySelector("#detailBox"+index+"TeamChampImg"+j).src="http://ddragon.leagueoflegends.com/cdn/${championVersion}/img/champion/"+match[index].participants[j].championName+".png";
			document.querySelector("#detailBox"+index+"TeamName"+j).innerHTML=match[index].participants[j].summonerName;
			document.querySelector("#detailBox"+index+"TeamLevel"+j).innerHTML=match[index].participants[j].champLevel;
			//스펠
			document.querySelector("#detailBox"+index+"TeamSpellD"+j).src = "https://ddragon.leagueoflegends.com/cdn/${summonerVersion}/img/spell/"+spellName(match[index].participants[j].summoner1Id)+".png";
			document.querySelector("#detailBox"+index+"TeamSpellF"+j).src = "https://ddragon.leagueoflegends.com/cdn/${summonerVersion}/img/spell/"+spellName(match[index].participants[j].summoner2Id)+".png";
			//룬
			document.querySelector("#detailBox"+index+"TeamRuneMain"+j).src = "https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/"+perkName(match[index].participants[j].perks.styles[0].selections[0].perk)+".png";
			document.querySelector("#detailBox"+index+"TeamRuneSub"+j).src = "https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/"+perkName(match[index].participants[j].perks.styles[1].style)+".png";
			//티어
			//리그 정보
			$.ajax({
				type:"GET",
				url: "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+match[index].participants[j].summonerId+"?api_key="+api_key,
				dataType:"json",
				async: false,
				}).done((res)=>{
					if(res==""){
						document.querySelector("#detailBox"+index+"TeamTier"+j).innerHTML="Unranked";
					}else{
						document.querySelector("#detailBox"+index+"TeamTier"+j).innerHTML=res[0].tier+" ";
						document.querySelector("#detailBox"+index+"TeamRank"+j).innerHTML=res[0].rank;
					}
				});

			//킬뎃
			document.querySelector("#detailBox"+index+"TeamKill"+j).innerHTML=match[index].participants[j].kills;
			document.querySelector("#detailBox"+index+"TeamDeath"+j).innerHTML=match[index].participants[j].deaths;
			document.querySelector("#detailBox"+index+"TeamAssist"+j).innerHTML=match[index].participants[j].assists;
			if(j<5){
				document.querySelector("#detailBox"+index+"TeamKillPer"+j).innerHTML="("+((((match[index].participants[j].kills + match[index].participants[j].assists)/(match[index].participants[0].kills + match[index].participants[1].kills 
				+ match[index].participants[2].kills + match[index].participants[3].kills + match[index].participants[4].kills))) * 100).toFixed(0) +"%)";
			}else{
				document.querySelector("#detailBox"+index+"TeamKillPer"+j).innerHTML="("+((((match[index].participants[j].kills + match[index].participants[j].assists)/(match[index].participants[5].kills + match[index].participants[6].kills 
				+ match[index].participants[7].kills + match[index].participants[8].kills + match[index].participants[9].kills))) * 100).toFixed(0) +"%)";
			}
			//피해량
			document.querySelector("#detailBox"+index+"TeamDamage"+j).innerHTML=match[index].participants[j].totalDamageDealtToChampions;
			document.querySelector("#detailBox"+index+"TeamDamagePer"+j).style.width=Math.ceil(match[index].participants[j].totalDamageDealtToChampions/maxDamage*100)+"%";
			//cs			
			document.querySelector("#detailBox"+index+"TeamCs"+j).innerHTML=match[index].participants[j].totalMinionsKilled+match[index].participants[j].neutralMinionsKilled;
			document.querySelector("#detailBox"+index+"TeamCsPer"+j).innerHTML='('+((match[index].participants[j].totalMinionsKilled+match[index].participants[j].neutralMinionsKilled)/(gameTime[1].split("분")[0])).toFixed(1)+')';
			//아이템
			if(match[index].participants[j].item0!=0){
				document.querySelector("#detailBox"+index+"Team"+j+"Item1Img").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+match[index].participants[j].item0+".png";
			}if(match[index].participants[j].item1!=0){
				document.querySelector("#detailBox"+index+"Team"+j+"Item2Img").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+match[index].participants[j].item1+".png";
			}if(match[index].participants[j].item2!=0){
				document.querySelector("#detailBox"+index+"Team"+j+"Item3Img").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+match[index].participants[j].item2+".png";
			}if(match[index].participants[j].item3!=0){
				document.querySelector("#detailBox"+index+"Team"+j+"Item4Img").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+match[index].participants[j].item3+".png";
			}if(match[index].participants[j].item4!=0){
				document.querySelector("#detailBox"+index+"Team"+j+"Item5Img").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+match[index].participants[j].item4+".png";
			}if(match[index].participants[j].item5!=0){
				document.querySelector("#detailBox"+index+"Team"+j+"Item6Img").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+match[index].participants[j].item5+".png";
			}if(match[index].participants[j].item6!=0){
				document.querySelector("#detailBox"+index+"Team"+j+"Item7Img").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+match[index].participants[j].item6+".png";
			}
			if(j<5){
				//오브젝트 타워
				document.querySelector("#blueTeamBaron"+index).innerHTML=parseInt(document.querySelector("#blueTeamBaron"+index).innerHTML)+match[index].participants[j].baronKills;
				document.querySelector("#blueTeamDragon"+index).innerHTML=parseInt(document.querySelector("#blueTeamDragon"+index).innerHTML)+match[index].participants[j].dragonKills;
				document.querySelector("#blueTeamTower"+index).innerHTML=parseInt(document.querySelector("#blueTeamTower"+index).innerHTML)+match[index].participants[j].turretKills;
				//총킬
				document.querySelector("#blueTotalKill"+index).innerHTML=parseInt(document.querySelector("#blueTotalKill"+index).innerHTML)+match[index].participants[j].kills;
				document.querySelector("#blueTotalKillGraph"+index).style.width=Math.floor((parseInt(document.querySelector("#blueTotalKill"+index).innerHTML)/(parseInt(document.querySelector("#blueTotalKill"+index).innerHTML)+
				parseInt(document.querySelector("#redTotalKill"+index).innerHTML))*100))+"%";
				//돈
				document.querySelector("#blueTotalGold"+index).innerHTML=parseInt(document.querySelector("#blueTotalGold"+index).innerHTML)+match[index].participants[j].goldEarned;
				document.querySelector("#blueTotalGoldGraph"+index).style.width=Math.floor((parseInt(document.querySelector("#blueTotalGold"+index).innerHTML)/(parseInt(document.querySelector("#blueTotalGold"+index).innerHTML)+
				parseInt(document.querySelector("#redTotalGold"+index).innerHTML))*100))+"%";
			}else{
				//오브젝트 타워
				document.querySelector("#redTeamBaron"+index).innerHTML=parseInt(document.querySelector("#redTeamBaron"+index).innerHTML)+match[index].participants[j].baronKills;
				document.querySelector("#redTeamDragon"+index).innerHTML=parseInt(document.querySelector("#redTeamDragon"+index).innerHTML)+match[index].participants[j].dragonKills;
				document.querySelector("#redTeamTower"+index).innerHTML=parseInt(document.querySelector("#redTeamTower"+index).innerHTML)+match[index].participants[j].turretKills;
				//총킬
				document.querySelector("#redTotalKill"+index).innerHTML=parseInt(document.querySelector("#redTotalKill"+index).innerHTML)+match[index].participants[j].kills;
				document.querySelector("#blueTotalKillGraph"+index).style.width=(100-Math.floor((parseInt(document.querySelector("#redTotalKill"+index).innerHTML)/(parseInt(document.querySelector("#blueTotalKill"+index).innerHTML)+
				parseInt(document.querySelector("#redTotalKill"+index).innerHTML))*100)))+"%";
				//돈
				document.querySelector("#redTotalGold"+index).innerHTML=parseInt(document.querySelector("#redTotalGold"+index).innerHTML)+match[index].participants[j].goldEarned;
				document.querySelector("#redTotalGoldGraph"+index).style.width=(100-Math.floor((parseInt(document.querySelector("#redTotalGold"+index).innerHTML)/(parseInt(document.querySelector("#blueTotalGold"+index).innerHTML)+
				parseInt(document.querySelector("#redTotalGold"+index).innerHTML))*100)))+"%";
			}
		}
	
	}
	function calGameTime(gameCreation, gameDuration){
		var result=[];
		var timestamp=new Date();
		var gamestamp=new Date(gameCreation)
		var time=timestamp-gamestamp;
		gameDuration/=1000;
		if(((new Date(time).getDate())-1)>0){
			result.push((new Date(time).getDate())-1+"일 전");
		}else if((new Date(time).getHours()-9)>0){
			result.push((new Date(time).getHours()-9)+"시간 전");
		}else if((new Date(time).getMinutes()-29)>0){
			result.push((new Date(time).getMinutes()-29)+"분 전");
		}else{
			result.push((new Date(time).getSeconds())+"초 전");
		}
	
		var gameDuMin=Math.floor(gameDuration/60);
		var gameDuSec=Math.floor(gameDuration%60);
	
		result.push(gameDuMin+"분 "+gameDuSec+"초");
		return result;
	};
	//생성자 함수
	function SummonerDto(id, accountId, puuid, name, profileIconId, revisionDate, summonerLevel) {
		this.id = id,
		this.accountId = accountId,
		this.puuid = puuid,
		this.name = name,
		this.profileIconId = profileIconId,
		this.revisionDate = revisionDate,
		this.summonerLevel = summonerLevel
	}
	function LeagueDto(leagueId, queueType, tier, rank, summonerId, summonerName, leaguePoints, wins, losses, name) {
		this.leagueId = leagueId,
		this.queueType = queueType,
		this.tier = tier,
		this.rank = rank,
		this.summonerId = summonerId,
		this.summonerName = summonerName,
		this.leaguePoints = leaguePoints,
		this.wins = wins,
		this.losses = losses
		this.name = name
	};
	function MatchInfoDto(gameCreation, gameDuration, gameId, gameMode, gameName, gameStartTimestamp, gameType, gameVersion, mapId, participants, platformId, queueId, teams) {
		this.gameCreation = gameCreation,
		this.gameDuration = gameDuration,
		this.gameId = gameId,
		this.gameMode = gameMode,
		this.gameName = gameName,
		this.gameStartTimestamp = gameStartTimestamp,
		this.gameType = gameType,
		this.gameVersion = gameVersion,
		this.mapId = mapId,
		this.participants = participants,
		this.platformId = platformId,
		this.queueId = queueId,
		this.teams = teams
	};
	function ParticipantDto(assists, baronKills, bountyLevel, gameStartTimestamp, gameType, participants) {
		this.assists = assists,
		this.baronKills = baronKills,
		this.gameMode = gameMode,
		this.gameStartTimestamp = gameStartTimestamp,
		this.gameType = gameType,
		this.participants = participants
	};
	function TeamDto(bans, objectives, teamId, win) {
		this.bans = bans,
		this.objectives = objectives,
		this.teamId = teamId,
		this.win = win
	};

	//ajax
	function summonerSearch(name){
		var user;
		//소환사 정보
		$.ajax({
			type:"GET",
			url: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+name+"?api_key="+api_key,
			dataType:"json",
			async: false,//동기식방식
			error:function(){ // 소환사 없을 경우 알림 후 메인 창으로 돌아감
				alert("검색한 소환사 정보가 없습니다.");
				//location.href="/";
				}
			}).done((res)=>{
				user = new SummonerDto(res.id, res.accountId, res.puuid, res.name, res.profileIconId, res.revisionDate, res.summonerLevel);			
			});
		return user;
	};
	function leagueSearch(id){
		var league=[];
		//리그 정보
		$.ajax({
			type:"GET",
			url: "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+id+"?api_key="+api_key,
			dataType:"json",
			async: false,
			}).done((res)=>{
				for(var i=0; i<res.length; i++) {
					league[i]= new LeagueDto(res[i].leagueId, res[i].queueType, res[i].tier, res[i].rank, res[i].summonerId, res[i].summonerName, res[i].leaguePoints, res[i].wins, res[i].losses,leagueNameSearch(res[i].leagueId));
				}
			});
		return league;
	};
	function leagueNameSearch(leagueId){
		var name="";
		//리그 정보
		$.ajax({
			type:"GET",
			url: "https://kr.api.riotgames.com/lol/league/v4/leagues/"+leagueId+"?api_key="+api_key,
			dataType:"json",
			async: false,
			}).done((res)=>{
				name=res.name;
			});
		return name;
	};
	function matchIdSearch(puuid,start,count){
		var matchId=[];
		//매치id 정보
		$.ajax({
			type:"GET",
			url: "https://asia.api.riotgames.com/lol/match/v5/matches/by-puuid/"+puuid+"/ids?start="+start+"&count="+count+"&"+"api_key="+api_key,
			dataType:"json",
			async: false,
			}).done((res)=>{
				matchId=res
			});
		return matchId;
	};
	function matchInfoSearch(matchId){
		var match=[];
		for(var i=0; i<matchId.length; i++) {
			//매치 정보
			$.ajax({
				type:"GET",
				url: "https://asia.api.riotgames.com/lol/match/v5/matches/"+matchId[i]+"?api_key="+api_key,
				dataType:"json",
				async: false,
				}).done((res)=>{
					console.log("https://asia.api.riotgames.com/lol/match/v5/matches/"+matchId[i]+"?api_key="+api_key);
					match.push(new MatchInfoDto(res.info.gameCreation, res.info.gameDuration, res.info.gameId, res.info.gameMode, res.info.gameName, res.info.gameStartTimestamp, res.info.gameType, res.info.gameVersion, res.info.mapId, res.info.participants, res.info.platformId, res.info.queueId, res.info.teams));
					
				});
		}

		return match;
	};

	//document set

	//소환사 정보 + 리그 정보
	function setSummoner(user, league){
		var docId="#";
		if(user != null){
			document.querySelector("#name").innerHTML="<b>"+user.name+"</b>";
			document.querySelector("#summonerLevel").innerHTML=user.summonerLevel;
			document.querySelector("#usericon").src="http://ddragon.leagueoflegends.com/cdn/${profileiconVersion}/img/profileicon/"+user.profileIconId+".png";
			if(league != null){
				for(var i=0; i<league.length; i++) {
					if(league[i].queueType === "RANKED_SOLO_5x5"){
						document.querySelector("#rankcover").src="/resource/res/img/cover/"+ league[i].tier+".png";
						docId="#"
					}else if(league[i].queueType === "RANKED_FLEX_SR"){
						docId="#t"
					}
					document.querySelector(docId+"rankimg").src="/resource/res/img/emblems/Emblem_"+league[i].tier+".png";
					document.querySelector(docId+"tier").innerHTML=league[i].tier;
					document.querySelector(docId+"rank").innerHTML=league[i].rank;
					document.querySelector(docId+"rankpoint").innerHTML="<b>"+league[i].leaguePoints +" LP</b>";
					document.querySelector(docId+"win").innerHTML="/"+league[i].wins+"승/";
					document.querySelector(docId+"lose").innerHTML=league[i].losses+"패";
					document.querySelector(docId+"winper").innerHTML="승률 "+Math.round(league[i].wins/(league[i].wins+league[i].losses)*100)+"%";
					document.querySelector(docId+"rankname").innerHTML=league[i].name;
				}
			}
		}
	};

	

//통계 정보
function setStatistics(name, match){
	if(match != null){
		var winStat=0;//이긴횟수
		var totKill=0;//총 킬
		var totDeath=0;//총 데스
		var totAssist=0;//총 어시스트
		var myChampDict = {};//사용한 챔피언 목록 key 챔피언 이름 value 횟수
		var myChampRateDict = {};//이겼을 때 사용한 챔피언 목록 key 챔피언 이름 value 이긴 횟수
		var myChampKADict = {};//챔피언의 킬+어시스트 key 챔피언 이름 value 킬+어시스트
		var myChampDDict = {};//챔피언의 데스 key 챔피언 이름 value 데스
		var myPositionDict = {};//사용한 포지션 목록 key 포지션(라인) value 횟수
		var myPositionRateDict = {};//이겼을 때 사용한 포지션 목록 key 포지션(라인) value 이긴 횟수
		var content="";//전적 박스
		var winOrLose="lose";//승패 여부
		var temp;//참가자 participant
		var killComboResult;//킬콤보 로그
		var gameTime=[];
		var idx;
		var teamLeague=[];
		for(var i=0; i<match.length; i++) {
			winOrLose="lose";
			for(var j=0; j<match[i].participants.length; j++) {
				if(name===match[i].participants[j].summonerName){
					temp = match[i].participants[j];
					idx=j;
					if(temp.win == true){
						winOrLose="win";
						winStat+=1;
						if(!Object.keys(myChampRateDict).includes(temp.championName)){
							myChampRateDict[temp.championName]=0;
						}
						myChampRateDict[temp.championName]+=1;
						
						if(!(temp.individualPosition==="Invalid")){
							if(!Object.keys(myPositionRateDict).includes(temp.individualPosition)){
								myPositionRateDict[temp.individualPosition]=0;
							}
							myPositionRateDict[temp.individualPosition]+=1;
						}
						
					}
					totKill+=temp.kills;
					totDeath+=temp.deaths;
					totAssist+=temp.assists;
					gameTime=calGameTime(match[i].gameCreation, match[i].gameDuration);
					if(!Object.keys(myChampDict).includes(temp.championName)){
						myChampDict[temp.championName]=0;
					}
					myChampDict[temp.championName]+=1;

					if(!Object.keys(myChampKADict).includes(temp.championName)){
						myChampKADict[temp.championName]=0;
						myChampDDict[temp.championName]=0;
					}
					myChampKADict[temp.championName]+=temp.kills + temp.assists;
					myChampDDict[temp.championName]+=temp.deaths;

					if(!(temp.individualPosition==="Invalid")){
						if(!Object.keys(myPositionDict).includes(temp.individualPosition)){
							myPositionDict[temp.individualPosition]=0;
						}
						myPositionDict[temp.individualPosition]+=1;
					}	
				}	
				//전적 박스
				//참가자
				document.querySelector("#box"+i+"ChampImg"+j).src="http://ddragon.leagueoflegends.com/cdn/${championVersion}/img/champion/"+match[i].participants[j].championName+".png";
				document.querySelector("#box"+i+"TeamName"+j).innerHTML=match[i].participants[j].summonerName;			
				
			}
			//전적박스
			document.querySelector("#gameSort"+i).innerHTML=queueName(match[i].queueId);
			document.querySelector("#gameTime"+i).innerHTML=gameTime[0];
			if(temp.win==true){
				if(idx>4){
					//레드팀 승리
					redWin(i)
				}
			}else{
				if(idx<5){
					//레드팀 승리
					redWin(i)
				}
				document.querySelector("#winOrLose"+i).style.color='red';
				document.querySelector("#searchBox"+i).style.backgroundColor='#f7c3c3';
				document.querySelector("#search"+i).style.backgroundColor='#E89D99';
				document.querySelector("#search"+i).style.border='1px solid #ea7979';
				document.querySelector("#winOrLose"+i).innerHTML="패배";
				document.querySelector("#box"+i+"ItemBuild").src="/resource/res/img/searchbuildR.png";
				document.querySelector("#moreButton"+i).src="/resource/res/img/loseMore.png";
			}
			document.querySelector("#gameDuration"+i).innerHTML=gameTime[1];
			document.querySelector("#boxChampionName"+i).innerHTML=temp.championName;
			document.querySelector("#boxChampImg"+i).src="http://ddragon.leagueoflegends.com/cdn/${championVersion}/img/champion/"+temp.championName+".png";
			//스펠
			document.querySelector("#spellD"+i).src = "https://ddragon.leagueoflegends.com/cdn/${summonerVersion}/img/spell/"+spellName(temp.summoner1Id)+".png";
			document.querySelector("#spellF"+i).src = "https://ddragon.leagueoflegends.com/cdn/${summonerVersion}/img/spell/"+spellName(temp.summoner2Id)+".png";
			//룬
			document.querySelector("#RuneMain"+i).src="https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/"+perkName(temp.perks.styles[0].selections[0].perk)+".png";
			document.querySelector("#RuneSub"+i).src="https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/"+perkName(temp.perks.styles[1].style)+".png";
			//킬뎃
			document.querySelector("#box"+i+"Kill").innerHTML=temp.kills;
			document.querySelector("#box"+i+"Death").innerHTML=temp.deaths;
			document.querySelector("#box"+i+"Assist").innerHTML=temp.assists;
			if(temp.deaths==0){
				document.querySelector("#box"+i+"Kda").innerHTML="Perfect ";
			}else{
				document.querySelector("#box"+i+"Kda").innerHTML=((temp.kills + temp.assists) / temp.deaths).toFixed(2)+':1 ';
			}
			killComboResul=killCombo(temp);
			if(killComboResul===""){
				document.querySelector("#box"+i+"Mkill").style.backgroundColor ='';
			}
			//레벨, cs, 킬관여
			document.querySelector("#box"+i+"Mkill").innerHTML=killComboResul;
			document.querySelector("#box"+i+"Level").innerHTML="레벨"+temp.champLevel;
			document.querySelector("#box"+i+"Cs").innerHTML=(temp.totalMinionsKilled+temp.neutralMinionsKilled);
			document.querySelector("#box"+i+"CsPer").innerHTML='('+((temp.totalMinionsKilled+temp.neutralMinionsKilled)/(gameTime[1].split("분")[0])).toFixed(1)+')';
			//document.querySelector("#box"+i+"KillRel").innerHTML=

			//아이템
			if(temp.item0!=0){
				document.querySelector("#box"+i+"Item1").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+temp.item0+".png";
			}if(temp.item1!=0){
				document.querySelector("#box"+i+"Item2").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+temp.item1+".png";
			}if(temp.item2!=0){
				document.querySelector("#box"+i+"Item3").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+temp.item2+".png";
			}if(temp.item3!=0){
				document.querySelector("#box"+i+"Item4").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+temp.item3+".png";
			}if(temp.item4!=0){
				document.querySelector("#box"+i+"Item5").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+temp.item4+".png";
			}if(temp.item5!=0){
				document.querySelector("#box"+i+"Item6").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+temp.item5+".png";
			}if(temp.item6!=0){
				document.querySelector("#box"+i+"Item7").src="http://ddragon.leagueoflegends.com/cdn/${itemVersion}/img/item/"+temp.item6+".png";
			}
			
		}

		//1번박스
		document.querySelector("#totStat").innerHTML=match.length+"전";
		document.querySelector("#winStat").innerHTML=winStat+"승";
		document.querySelector("#loseStat").innerHTML=(match.length-winStat)+"패";
		document.querySelector("#winPerStat").innerHTML=Math.floor((winStat/match.length*100))+"%";
		document.querySelector("#totKill").innerHTML=(totKill/match.length).toFixed(1);
		document.querySelector("#totDeath").innerHTML=(totDeath/match.length).toFixed(1);
		document.querySelector("#totAssist").innerHTML=(totAssist/match.length).toFixed(1);
		document.querySelector("#totKda").innerHTML=((totKill + totAssist) / totDeath).toFixed(2) + " : 1";

		//차트 js
		var ctx = document.getElementById('myChart');
		var data = [ match.length-winStat, winStat ];
		var myChart = new Chart(ctx, {
			type : 'doughnut',
			data : {
				labels:['Defeat','Win'],
				datasets : [ {
					data : data,
					backgroundColor : [ '#EE5A52', '#1F8ECD' ],
					borderWidth : 0.1
				} ]
			},
			options : {
				cutoutPercentage : 70,
				legend:{
					display:false
				}
			},
			
		});

		//2번박스
		myChampDict = dictSortByValue(myChampDict);
		var position = Object.keys(myChampDict);
		for(var i=0; i<3; i++) {
			document.querySelector("#champImg"+(i+1)).src="https://ddragon.leagueoflegends.com/cdn/${championVersion}/img/champion/"+position[i]+".png";
			document.querySelector("#championName"+(i+1)).innerHTML=position[i];
			if(!Object.keys(myChampRateDict).includes(position[i])){
				myChampRateDict[position[i]]=0;
			}
			document.querySelector("#championRate"+(i+1)).innerHTML=Math.round(myChampRateDict[position[i]]/myChampDict[position[i]]*100)+"%";
			document.querySelector("#championWinRate"+(i+1)).innerHTML="("+myChampRateDict[position[i]]+"승 " + (myChampDict[position[i]]-myChampRateDict[position[i]])+"패)";
			document.querySelector("#championKDA"+(i+1)).innerHTML=(myChampKADict[position[i]] / myChampDDict[position[i]]).toFixed(2)+" 평점";
		}

		
		//3번박스
		myPositionRateDict = dictSortByValue(myPositionRateDict);
		myPositionDict = dictSortByValue(myPositionDict);
		
		position = Object.keys(myPositionDict);
		var sum = dictValueSum(myPositionDict);
		for(var i=0; i<2; i++) {
			if(position[i]=="TOP"){
				document.querySelector("#position"+(i+1)).innerHTML="탑";
			}else if(position[i]=="JUNGLE"){
				document.querySelector("#position"+(i+1)).innerHTML="정글";
			}else if(position[i]=="MIDDLE"){
				document.querySelector("#position"+(i+1)).innerHTML="미드";
			}else if(position[i]=="BOTTOM"){
				document.querySelector("#position"+(i+1)).innerHTML="원딜";
			}else if(position[i]=="UTILITY"){
				document.querySelector("#position"+(i+1)).innerHTML="서폿";
			}
			document.querySelector("#positionRate"+(i+1)).innerHTML=Math.round(myPositionDict[position[i]]/sum*100)+"%";
			if(Object.keys(myPositionRateDict).includes(position[i])){
				document.querySelector("#positionWinRate"+(i+1)).innerHTML="승률 "+Math.round(myPositionRateDict[position[i]]/myPositionDict[position[i]]*100)+"%";
			}else{
				document.querySelector("#positionWinRate"+(i+1)).innerHTML="승률 0%";
			}
		}


	}
};


	var user = summonerSearch("${SummonerName}");
	var league = leagueSearch(user.id);
	var matchId = matchIdSearch(user.puuid,0,20);
	var match = matchInfoSearch(matchId);
	var searchBox;
	//var searchContainerHTML = document.querySelector("#search").outerHTML;

</script>
</head>
<body style="background-color: #EAEAEA;">
	<!-- 소환사 정보 -->
	<div class="mContainer" style="display: flex;">
		<div align="center">
			<img id="rankcover" src="" style="position: absolute;" /> <img id="usericon" src="/resource/res/img/profileIcon.jpg"
				style="width: 100px; height: 100px; margin: 10px;" />
			<div id="summonerLevel" align="center"
				style="position: relative; top: -25px; background-color: #2C3548; color: #EA9F4C; width: 40px; height: 25px; font-size: 15px; border: 1px solid #EA9F4C;"></div>
		</div>
		<div style="padding: 15px;">
			<div id="name" style="font-size: 20px; color: black;"></div>
			<div style="font-size: 10px; display: flex;">
				
				<div id="rankingnum" style="color: #059EDE;"></div>
				
			</div>
			<br />
			<button class="search_button" id="reSearchUser">전적 갱신</button>
		</div>
	</div>

	<!-- 종합, 인게임 -->
	<div class="mContainer" style="display: flex;">
		<!--탭 메뉴 영역 -->
		<ul class="tabs">
			<li style="margin-right: 30px; background-color: #FFFFFF;"><a href="#tab1"
				style="width: 100px; height: 35px; display: flex; justify-content: center; align-items: center;"> 종합</a></li>

			<li style="border-left: 1px solid #999;"><a href="#tab2"
				style="height: 100%; background-color: white; color: #343a40 ; display: flex; justify-content: center; align-items: center;">
					<img style="height: 31px;" src="/resource/res/img/ingame.png" />인게임 정보 <!-- 인게임 정보 api : spectator -->
			</a></li>
		</ul>
	</div>
	<hr style="margin-top: -3px;" />
	<!--탭 콘텐츠 영역 -->
	<div class="tab_container">

		<div id="tab1" class="tab_content">
			<!-- 본문 시작 -->
			<!-- 3:7 나눔 -->
			<div class="mContainer" style="display: flex;">
				<!-- 왼쪽 박스 -->
				<div id="left-container" style="width: 30%;">
					<!-- 솔랭 정보 -->
					<div
						style="display: flex; border: 0.3px solid #CDD2D2; background-color: #F2F2F2; justify-content: center; align-items: center;">
						<div style="display: flex;">
							<img id="rankimg" style="width: 100px; height: 100px;" src="/resource/res/img/emblems/Emblem_UNRANKED.png" />
						</div>
						<div style="margin-left: 20px; height: 130px; display: flex; flex-direction: column; justify-content: center;">
							<div class="tiny_gray_text">솔로랭크</div>

							<div style="display: flex;">
								<div id="tier" style="display: flex; font-size: 12px; color: #63B8E5;">
									<!-- rank : Challenger -->
								</div>
								<div id="rank" style="font-size: 12px; color: #63B8E5; margin-left: 5px;"></div>
							</div>

							<div style="display: flex;">
								<div id="rankpoint" style="font-size: 13px;">
									<b></b>
								</div>
								<div class="tiny_gray_text" style="display: flex;">
									<div id="win"></div>
									<div id="lose"></div>
								</div>
							</div>
							<div id="winper" class="tiny_gray_text"></div>
							<div id="rankname" class="tiny_gray_text"></div>
						</div>
					</div>
					<br />

					<!-- 자랭 정보 -->
					<div
						style="display: flex; border: 0.3px solid #CDD2D2; background-color: #F2F2F2; justify-content: center; align-items: center;">
						<div style="display: flex;">
							<img id="trankimg" style="width: 100px; height: 100px;" src="/resource/res/img/emblems/Emblem_UNRANKED.png" />
						</div>
						<div style="margin-left: 20px; height: 130px; display: flex; flex-direction: column; justify-content: center;">
							<div class="tiny_gray_text">자유 5:5 랭크</div>

							<div style="display: flex;">
								<div id="ttier" style="display: flex; font-size: 12px; color: #63B8E5;"></div>
								<div id="trank" style="font-size: 12px; color: #63B8E5; margin-left: 5px;"></div>
							</div>

							<div style="display: flex;">
								<div id="trankpoint" style="font-size: 13px;">
									<b></b>
								</div>
								<div class="tiny_gray_text" style="display: flex;">

									<div id="twin"></div>

									<div id="tlose"></div>


								</div>
							</div>
							<div id="twinper" class="tiny_gray_text"></div>
							<div id="trankname" class="tiny_gray_text"></div>
						</div>
					</div>
				</div>

				<!-- 오른쪽 박스 -->
				<div id="right-container" style="width: 70%; margin-left: 5px;">
					<!-- 승률 박스 -->
					<div style="border: 1px solid #CDD2D2; display: flex; background-color: #EDEDED;">

						<!-- 1번 박스 -->
						<!-- 승률 -->
						<div style="display: flex; flex-direction: column; width: 40%; border-right: 1px solid #CDD2D2; padding: 20px;">
							<div style="display: flex; font-size: 13px; color: gray;">
								<div id="totStat">전</div>
								<div id="winStat" style="margin-left: 5px;">승</div>
								<div id="loseStat" style="margin-left: 5px;">패</div>
							</div>
							<div style="display: flex;">
								<!-- 그래프 -->
								<div style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center;">
									<!-- 승률 text -->
									<div id="winPerStat" style="position: absolute; font-size: 18px;">%</div>
									<!-- 승률 graph -->
									<canvas id="myChart" width="10" height="10"></canvas>
								</div>
								<!-- 승률 수치 -->
								<div style="margin-left: 20px; display: flex; flex-direction: column; justify-content: center; align-items: center;">
									<!-- 킬뎃 평균  -->
									<div style="display: flex; font-size: 11px;">
										<div id="totKill"></div>
										/
										<div id="totDeath" style="color: red;"></div>
										/
										<div id="totAssist"></div>
									</div>
									<!-- kda -->
									<div id="totKda" style="display: flex; font-size: 20px;"></div>
									
								</div>
							</div>

						</div>

						<!-- 2번 박스 -->
						<!-- 챔피언별 승률 -->
						<div style="width: 35%; border-right: 1px solid #CDD2D2; padding: 10px;">
							<div style="display: flex; flex-direction: column; margin: 5% 5% 0 10%;">
								<!-- 승률 -->
								<c:forEach var="b" begin="1" end="3" step="1">
									<div style="display: flex; align-items: center; margin-bottom: 10px;">
										<!-- 챔피언 사진 -->
										<img id="champImg${b}" class="circle_image" src=""
											style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
	
										<div>
											<!-- 승률 챔피언 이름 -->
											<div class="mostChampion" id="championName${b}" style="font-size: 12px;"></div>
											<div style="display: flex;">
												<!-- 승률 승률-->
												<div id="championRate${b}" style="font-size: 10px; color: red;"></div>
												<!-- 승률 승패-->
												<div id="championWinRate${b}" style="font-size: 10px;"></div>
												<!-- 승률 평점-->
												<div id="championKDA${b}" style="font-size: 10px;"></div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

						<!-- 3번 박스 -->
						<!-- 포지션별 랭크 -->
						<div style="width: 25%; padding: 20px; font-size: 12px; color: gray; display: flex; flex-direction: column;">
							선호 포지션 (랭크)
							<c:forEach var="a" begin="1" end="2" step="1">
								<div style="margin-top: 25px;">
									<div id="position${a}"></div>
									<div style="display: flex;">
										<div id="positionRate${a}" style="color: #1F8ECD; margin-right: 5px;"></div>
										|
										<div id="positionWinRate${a}" style="margin-left: 5px;"></div>
									</div>
								</div>
							</c:forEach>
						</div>

					</div>
					<!-- 승률 정보 끝  -->
					<br />
					<c:forEach var="num" items="${matchId}" varStatus="status">
						<!-- 전적 시작 -->
						<div style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-bottom: 10px;">
							<!-- 전적 박스 -->
							<div id="searchBox${status.index}" style="display: flex; border: 1px solid #bcbcbc; background-color: #A3CFEC; width: 100%;">
								<!-- 겜 정보 -->
								<div
									style="display: flex; flex-direction: column; justify-content: center; align-items: center; font-size: 10px; margin: 10px 10px 10px 0; width: 14%">
									<div id="gameSort${status.index}" style="white-space: nowrap;"></div>
									<div id="gameTime${status.index}"></div>
									<hr style="width: 20px;" />
									<div id="winOrLose${status.index}" style="color: #1A85C4;"></div>
									<div id="gameDuration${status.index}"></div>
								</div>

								<!-- 챔피언, 스펠, 룬 -->
								<div
									style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-right: 20px; width: 15%;">
									<div style="display: flex;">
										<img id="boxChampImg${status.index}" class="circle_image" src=""
											style="width: 50px; height: 50px; margin-right: 5px; border-radius: 30px;" />
										<!-- 스펠 -->
										<div style="display: flex; flex-direction: column; margin-right: 5px;">
											<img id="spellD${status.index }" src="" style="width: 25px; height: 25px;" /> <img id="spellF${status.index}" src=""
												style="width: 25px; height: 25px;" />
										</div>
										<!-- 룬 -->
										<div style="display: flex; flex-direction: column;">
											<img id="RuneMain${status.index }" src="" style="width: 25px; height: 25px; border-radius: 30px;" /> <img
												id="RuneSub${status.index }" src="" style="width: 25px; height: 25px; border-radius: 30px;" />
										</div>
									</div>
									<div id="boxChampionName${status.index}" style="font-size: 12px; margin-top: 5px;">챔프이름</div>
								</div>


								<!-- 킬뎃 -->
								<div
									style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 20px; width: 11%;">
									<div
										style="display: flex; justify-content: center; align-items: center; font-size: 13px; font-weight: bold; color: gray; margin-bottom: 5px;">
										<div id="box${status.index}Kill"></div>
										/
										<div id="box${status.index}Death" style="color: red;"></div>
										/
										<div id="box${status.index}Assist"></div>
									</div>
									<div
										style="display: flex; justify-content: center; align-items: center; font-size: 11px; font-weight: bold; color: gray; margin-bottom: 5px;">
										<div id="box${status.index}Kda" style="color: black; white-space: nowrap;"></div>
										<div style="font-weight: normal; font-size: 10px; white-space: nowrap;">평점</div>
									</div>
									<div id="box${status.index}Mkill"
										style="display: flex; justify-content: center; align-items: center; background-color: #EE5A52; color: white; border-radius: 15px; width: 50px; height: 20px; font-size: 11px;"></div>
								</div>

								<!-- 레벨, cs, 킬관여 -->
								<div
									style="display: flex; justify-content: center; align-items: center; flex-direction: column; color: gray; font-size: 11px; margin-right: 20px;">
									<div id="box${status.index}Level" style="margin-bottom: 5px;">레벨 18</div>
									<div style="display: flex; justify-content: center; align-items: center; margin-bottom: 5px;">
										<div id="box${status.index}Cs">100</div>
										<div id="box${status.index}CsPer">(4.7)</div>
										CS
									</div>
									<div id="box${status.index}KillRel" align="center"
										style="color: red; margin-bottom: 5px; font-size: 10px; white-space: nowrap; font-weight: bold;">킬관여</div>
								</div>

								<!-- 아이템 -->
								<div
									style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 15px; width: 10%; width: 15%;">
									<!-- 아이템 위층 -->
									<div style="display: flex; justify-content: center; align-items: center;">
										<div style="width: 25px; height: 25px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 2px 1px;">
											<img id="box${status.index}Item1" style="border-radius: 5px; opacity: 1; width: 25px; height: 25px;" src="/resource/res/img/opacity.png" />
										</div>
										<div style="width: 25px; height: 25px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 2px 1px;">
											<img id="box${status.index}Item2" style="border-radius: 5px; opacity: 1; width: 25px; height: 25px;" src="/resource/res/img/opacity.png" />
										</div>
										<div style="width: 25px; height: 25px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 2px 1px;">
											<img id="box${status.index}Item3" style="border-radius: 5px; opacity: 1; width: 25px; height: 25px;" src="/resource/res/img/opacity.png" />
										</div>
										<!-- 와드, 장신구 7번 박스 -->
										<div style="width: 25px; height: 25px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 2px 1px;">
											<img id="box${status.index}Item7" style="border-radius: 5px; opacity: 1; width: 25px; height: 25px;" src="/resource/res/img/opacity.png" />
										</div>
									</div>
									<!-- 아이템 아래층 -->
									<div style="display: flex; justify-content: center; align-items: center;">
										<div style="width: 25px; height: 25px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 2px 1px;">
											<img id="box${status.index}Item4" style="border-radius: 5px; opacity: 1; width: 25px; height: 25px;" src="/resource/res/img/opacity.png" />
										</div>
										<div style="width: 25px; height: 25px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 2px 1px;">
											<img id="box${status.index}Item5" style="border-radius: 5px; opacity: 1; width: 25px; height: 25px;" src="/resource/res/img/opacity.png" />
										</div>
										<div style="width: 25px; height: 25px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 2px 1px;">
											<img id="box${status.index}Item6" style="border-radius: 5px; opacity: 1; width: 25px; height: 25px;" src="/resource/res/img/opacity.png" />
										</div>
										<div style="width: 25px; height: 25px;">
											<img id="box${status.index }ItemBuild" src="/resource/res/img/searchbuild.png" style="width: 25px; height: 25px; margin: 0 1px 2px 1px;" />
										</div>
									</div>
								</div>

								<!-- 팀원 -->
								<div style="display: flex; justify-content: center; align-items: center; width: 30%;">
									<!-- 블루팀 -->
									<div style="display: flex; justify-content: center; align-items: flex-start; flex-direction: column; margin-right: 10px;">
										<!-- 1 -->
										<c:forEach var="a" begin="0" end="4" step="1">
											<div
												style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
												<img id="box${status.index}ChampImg${a}" src=""
													style="width: 15px; height: 15px; margin-right: 3px;" />
												<div id="box${status.index}TeamName${a}"
													style="width: 70px; display: block; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">소환사 이름</div>
											</div>
										</c:forEach>
									</div>

									<!-- 레드팀 -->
									<div
										style="display: flex; justify-content: flex-start; align-items: flex-start; flex-direction: column; margin-right: 5px;">
										<!-- 1 -->
										<c:forEach var="b" begin="5" end="9" step="1">
											<div
												style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
												<img id="box${status.index}ChampImg${b}" src=""
													style="width: 15px; height: 15px; margin-right: 3px;" />
												<div id="box${status.index}TeamName${b}"
													style="width: 70px; display: block; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">소환사 이름</div>
											</div>
										</c:forEach>
									</div>
								</div>

								<!-- 전적 토글 버튼 -->
								<a id="search${status.index}" class="a_search" href="javascript:void(0);" onclick="doDisplay(this);"
									style="border: 1px solid #5ca7d6; background-color: #64B1E4; width: 5%; display: flex; justify-content: center; align-items: flex-end;">
									<img id="moreButton${status.index}" src="/resource/res/img/winMore.png" style="width: 20px; height: 20px;" />
								</a>
							</div>

							<!-- 전적 상세 -->
							<!-- ============================================================================================================= -->

							<div id="matchSpecificBox${status.index}" style="border: 1px solid #bcbcbc; display: none; width: 100%;">
								<div id="matchSpecificBoxhidden${status.index}" style="display:none">0</div>
								<!-- 머리글 행 -->
								<div style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
									<div style="width: 25%; display: flex;">
										<div id="SpwinOrlose${status.index}" style="color: #1A85C4;">승리</div>
										<div>(블루팀)</div>
									</div>
									<div style="width: 10%; display: flex; justify-content: center; align-items: center;">티어</div>
									<div style="width: 10%; display: flex; justify-content: center; align-items: center;">KDA</div>

									<div style="width: 15%; display: flex; justify-content: center; align-items: center;">피해량</div>
									<div style="width: 10%; display: flex; justify-content: center; align-items: center;">CS</div>
									<div style="width: 30%; display: flex; justify-content: center; align-items: center;">아이템</div>
								</div>


								<!-- 우리팀 상세정보 for문 -->
								<c:forEach var="team" begin="0" end="4" step="1">

									<div id="detailBox${status.index }${team }"
										style="display: flex; color: gray; font-size: 11px; background-color: #D8E4EC; height: 50px;">
										<div style="display: flex; align-items: flex-end;">
											<div id="detailBox${status.index }TeamLevel${team }" style="width: 8px;"></div>
										</div>
										<div style="width: 25%; display: flex; align-items: center;">
											<img id="detailBox${status.index }TeamChampImg${team }" class="circle_image" src=""
												style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
											<div style="display: flex; flex-direction: column; margin-right: 5px;">
												<img id="detailBox${status.index }TeamSpellD${team}" src="" style="width: 20px; height: 20px;" /> <img
													id="detailBox${status.index }TeamSpellF${team}" src="" style="width: 20px; height: 20px;" />
											</div>
											<!-- 룬 -->
											<div style="display: flex; flex-direction: column;">
												<img id="detailBox${status.index }TeamRuneMain${team }" src=""
													style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="detailBox${status.index }TeamRuneSub${team }"
													src="" style="width: 20px; height: 20px; border-radius: 30px;" />
											</div>
											<span id="detailBox${status.index }TeamName${team }" style="font-size: 10px; margin-top: 5px; white-space: nowrap;"></span>
										</div>
										<!-- 티어 -->
										<div
											style="width: 10%; display: flex; justify-content: center; align-items: center; font-size: 10px; white-space: nowrap;">
											<div id="detailBox${status.index }TeamTier${team }" style="margin-right: 5px; white-space: nowrap;"></div>
											<div id="detailBox${status.index }TeamRank${team }"></div>
										</div>
										<!-- KDA -->
										<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
											<div>3.33:1</div>
											<div style="font-size: 8px; display: flex; justify-content: center; align-items: center;">
												<div id="detailBox${status.index }TeamKill${team }"></div>
												/
												<div id="detailBox${status.index }TeamDeath${team }"></div>
												/
												<div id="detailBox${status.index }TeamAssist${team }"></div>
												<div id="detailBox${status.index }TeamKillPer${team }"></div>
											</div>
										</div>
										<!-- 피해량 -->
										<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
											<div
												style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
												<!-- 피해량 text -->
												<div id="detailBox${status.index }TeamDamage${team }" style="font-size: 11px;">25,537</div>
												<!-- 피해량 graph -->
												<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
													<div id="detailBox${status.index }TeamDamagePer${team }" style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
												</div>
											</div>
										</div>
										<!-- cs -->
										<div style="width: 10%; display: flex; justify-content: center; align-items: center;">
											<div id="detailBox${status.index }TeamCs${team }"></div>
											<div id="detailBox${status.index }TeamCsPer${team }"></div>
										</div>
										<div style="width: 30%; display: flex; justify-content: center; align-items: center;">
											<div style="display: flex; justify-content: center; align-items: center;">
												<div id="detailBox${status.index }Team${team}Item1"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item1Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team}Item2"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item2Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team}Item3"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item3Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team}Item4"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item4Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team}Item5"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item5Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team}Item6"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item6Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team}Item7"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item7Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
											</div>
										</div>
									</div>
									<!-- 끝 -->
								</c:forEach>



								<div
									style="display: flex; justify-content: center; align-items: center; font-size: 12px; height: 50px; background-color: #E4E4E4; border-top: 1px solid #bcbcbc;">
									<!-- 블루팀 오브젝트 -->
									<div style="display: flex; justify-content: center; align-items: center; width: 25%;">
										<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="/resource/res/img/icon-baron-b.png" style="width: 20px; height: 20px;" />
											<div id="blueTeamBaron${status.index }">0</div>
										</div>
										<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="/resource/res/img/icon-dragon-b.png" style="width: 20px; height: 20px;" />
											<div id="blueTeamDragon${status.index }">0</div>
										</div>
										<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="/resource/res/img/icon-tower-b.png" style="width: 20px; height: 20px;" />
											<div id="blueTeamTower${status.index }">0</div>
										</div>
									</div>

									<!-- 토탈 킬, 토탈 골드 -->
									<div style="display: flex; justify-content: center; align-items: center; flex-direction: column; width: 50%;">
										<!-- 토탈 킬 -->
										<div style="display: flex; justify-content: center; align-items: center; width: 100%; margin-bottom: 5px;">
											<div style="width: 20%; font-size: 10px;">Total Kill</div>
											<div id="blueTotalKill${status.index }" style="width: 10%; font-size: 10px;">0</div>
											<div
												style="display: flex; justify-content: center; align-items: center; width: 65%; height: 10px; margin: 0 5px 0 5px;">
												<div id="blueTotalKillGraph${status.index }" style="background-color: #548DCA; width: 70%; height: 10px;"></div>
												<div id="redTotalKillGraph${status.index }" style="background-color: #D05A53; width: 30%; height: 10px;"></div>
											</div>
											<div id="redTotalKill${status.index }" style="width: 5%; font-size: 10px;">0</div>
										</div>

										<!-- 토탈 골드 -->
										<div style="display: flex; justify-content: center; align-items: center; width: 100%;">
											<div style="width: 20%; font-size: 10px;">Total Gold</div>
											<div id="blueTotalGold${status.index }" style="width: 10%; font-size: 10px;">0</div>
											<div
												style="display: flex; justify-content: center; align-items: center; width: 65%; height: 10px; margin: 0 5px 0 5px;">
												<div id="blueTotalGoldGraph${status.index }" style="background-color: #548DCA; width: 70%; height: 10px;"></div>
												<div id="redTotalGoldGraph${status.index }" style="background-color: #D05A53; width: 30%; height: 10px;"></div>
											</div>
											<div id="redTotalGold${status.index }" style="width: 5%; font-size: 10px;">0</div>
										</div>
									</div>

									<!-- 레드팀 오브젝트 -->
									<div style="display: flex; justify-content: center; align-items: center; width: 25%;">
										<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="/resource/res/img/icon-baron-r.png" style="width: 20px; height: 20px;" />
											<div id="redTeamBaron${status.index }">0</div>
										</div>
										<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="/resource/res/img/icon-dragon-r.png" style="width: 20px; height: 20px;" />
											<div id="redTeamDragon${status.index }">0</div>
										</div>
										<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="/resource/res/img/icon-tower-r.png" style="width: 20px; height: 20px;" />
											<div id="redTeamTower${status.index }">0</div>
										</div>
									</div>
								</div>
								<!-- 패배팀 -->
								<!-- 머리글 행 -->
								<div style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
									<div style="width: 25%; display: flex;">
										<div id="SpwinOrloseSide${status.index}" style="color: red;">패배</div>
										<div>(레드팀)</div>
									</div>
									<div style="width: 10%; display: flex; justify-content: center; align-items: center;">티어</div>
									<div style="width: 10%; display: flex; justify-content: center; align-items: center;">KDA</div>

									<div style="width: 15%; display: flex; justify-content: center; align-items: center;">피해량</div>

									<div style="width: 10%; display: flex; justify-content: center; align-items: center;">CS</div>
									<div style="width: 30%; display: flex; justify-content: center; align-items: center;">아이템</div>
								</div>

								<!-- 상대팀 상세정보 for문 -->
								<c:forEach var="team" begin="5" end="9" step="1">
									<div id="detailBox${status.index }${team }"
										style="display: flex; color: gray; font-size: 11px; background-color: #E9E0E0; height: 50px;">
										<div style="display: flex; align-items: flex-end;">
											<div id="detailBox${status.index }TeamLevel${team }" style="width: 8px;">11</div>
										</div>
										<div style="width: 25%; display: flex; align-items: center;">
											<img id="detailBox${status.index }TeamChampImg${team}" class="circle_image" src=""
												style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
											<div style="display: flex; flex-direction: column; margin-right: 5px;">
												<img id="detailBox${status.index }TeamSpellD${team}" src="" style="width: 20px; height: 20px;" /> <img
													id="detailBox${status.index }TeamSpellF${team}" src="" style="width: 20px; height: 20px;" />
											</div>
											<!-- 룬 -->
											<div style="display: flex; flex-direction: column;">
												<img id="detailBox${status.index }TeamRuneMain${team}" src="" style="width: 20px; height: 20px; border-radius: 30px;" />
												<img id="detailBox${status.index }TeamRuneSub${team}" src="" style="width: 20px; height: 20px; border-radius: 30px;" />
											</div>
											<span id="detailBox${status.index }TeamName${team}" style="font-size: 10px; margin-top: 5px; white-space: nowrap;">태치야치</span>
										</div>
										<!-- 티어 -->
										<div
											style="width: 10%; display: flex; justify-content: center; align-items: center; white-space: nowrap; font-size: 10px;">
											<div id="detailBox${status.index }TeamTier${team }" style="margin-right: 5px; white-space: nowrap;"></div>
											<div id="detailBox${status.index }TeamRank${team }"></div>
										</div>
										<!-- KDA -->
										<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
											<div>3.33:1</div>
											<div style="font-size: 8px; display: flex; justify-content: center; align-items: center;">
												<div id="detailBox${status.index }TeamKill${team }">1</div>
												/
												<div id="detailBox${status.index }TeamDeath${team }">1</div>
												/
												<div id="detailBox${status.index }TeamAssist${team }">1</div>
												<div id="detailBox${status.index }TeamKillPer${team }">(10%)</div>
											</div>
										</div>
										<!-- 피해량 -->
										<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
											<div
												style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
												<!-- 피해량 text -->
												<div id="detailBox${status.index }TeamDamage${team }" style="font-size: 11px;">25,537</div>
												<!-- 피해량 graph -->
												<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
													<div id="detailBox${status.index }TeamDamagePer${team }" style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
												</div>
											</div>
										</div>
										<!-- cs -->
										<div style="width: 10%; display: flex; justify-content: center; align-items: center;">
											<div id="detailBox${status.index }TeamCs${team }">205</div>
											<div id="detailBox${status.index }TeamCsPer${team }">(5.6)</div>
										</div>
										<div style="width: 30%; display: flex; justify-content: center; align-items: center;">
											<div style="display: flex; justify-content: center; align-items: center;">
												<div id="detailBox${status.index }Team${team }Item1"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item1Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team }Item2"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item2Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team }Item3"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item3Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team }Item4"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item4Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team }Item5"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item5Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team }Item6"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item6Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
												<div id="detailBox${status.index }Team${team }Item7"
													style="width: 20px; height: 20px; background-color: #9e9e9e; border-radius: 5px; margin: 0 1px 0 1px;">
													<img id="detailBox${status.index }Team${team }Item7Img" src="/resource/res/img/opacity.png" style="width: 20px; height: 20px;" />
												</div>
											</div>
										</div>
									</div>
									<!-- 끝 -->
								</c:forEach>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- 인게임 정보 탭 -->
		<div align="center" id="tab2" class="tab_content" style="margin: 150px 0 250px 0;">
			<!--Content-->
			<div style="width: 70%">
				<!-- 전적 상세 -->
				<div style="border: 1px solid #bcbcbc;">
					<div style="display: flex; border: 1px solid #bcbcbc; align-items: center;">
						<div id="gameType" style="font-size: 15px; font-weight: bold; margin: 5px;">솔랭</div>|
						<div id="mapId" style=" font-size: 12px; margin: 5px;">소환사의 협곡</div>
					</div>
					<!-- 머리글 행 -->
					<div style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
						<div style="width: 35%; display: flex;">
							<div id="winOrLose" style="color: blue;">블루팀</div>
						</div>
						<div style="width: 15%; display: flex; justify-content: center; align-items: center;">티어</div>

						<div style="width: 30%; display: flex; justify-content: center; align-items: center;">숙련도</div>
						<div style="width: 20%; display: flex; justify-content: center; align-items: center;">밴</div>
					</div>
					<c:forEach var="inGameNum" begin="0" end="4" step="1">
						<!-- 상세정보 1행 -->
						<div style="display: flex; color: gray; font-size: 11px; background-color: #D8E4EC; height: 50px;">
							<div style="width: 35%; display: flex; align-items: center;">
								<img id="InGameChampImg${inGameNum }" class="circle_image" src=""
									style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
								<div style="display: flex; flex-direction: column; margin-right: 5px;">
									<img id="InGameSpellD${inGameNum }" src="" style="width: 20px; height: 20px;" /> <img id="InGameSpellF${inGameNum }" src=""
										style="width: 20px; height: 20px;" />
								</div>
								<!-- 룬 -->
								<div style="display: flex; flex-direction: column;">
									<img id="InGameRuneMain${inGameNum }" src="" style="width: 20px; height: 20px; border-radius: 30px;" /> 
									<img id="InGameRuneSub${inGameNum }"
										src="" style="width: 20px; height: 20px; border-radius: 30px;" />
								</div>
								<span id="InGameChampName${inGameNum }" style="font-size: 12px; margin-top: 5px;"></span>
							</div>
							<!-- 티어 -->
							<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
								<div id="InGameTier${inGameNum }"></div>
								<div id="InGameRank${inGameNum }" style="margin-left: 5px;"></div>
							</div>


							<!-- 세부 룬 -->
							<div style="width: 30%; display: flex; justify-content: center; align-items: center;">
								<div style="display: flex; justify-content: center; align-items: center;">
									<img id="InGame0Mastery${inGameNum }" src="" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" /> <img
										id="InGame1Mastery${inGameNum }" src="" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" /> <img
										id="InGame2Mastery${inGameNum }" src="" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
								</div>
							</div>
							<div style="width: 20%; display: flex; align-items: center; justify-content: center;">
								<!-- 밴 -->
								<img id="InGameTeamBan${inGameNum }" src="" style="width: 20px; height: 20px;" />
							</div>
						</div>
						<!-- 끝 -->
					</c:forEach>
					<!-- 머리글 행 -->
					<div style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
						<div style="width: 35%; display: flex;">
							<div id="winOrLose" style="color: red;">레드팀</div>
						</div>
						<div style="width: 15%; display: flex; justify-content: center; align-items: center;">티어</div>

						<div style="width: 30%; display: flex; justify-content: center; align-items: center;">숙련도</div>
						<div style="width: 20%; display: flex; justify-content: center; align-items: center;">밴</div>
					</div>
					<c:forEach var="inGameNum" begin="5" end="9" step="1">
						<!-- 상세정보 1행 -->
						<div style="display: flex; color: gray; font-size: 11px; background-color: #E9E0E0; height: 50px;">
							<div style="width: 35%; display: flex; align-items: center;">
								<img id="InGameChampImg${inGameNum }" class="circle_image" src=""
									style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
								<div style="display: flex; flex-direction: column; margin-right: 5px;">
									<img id="InGameSpellD${inGameNum }" src="" style="width: 20px; height: 20px;" /> 
									<img id="InGameSpellF${inGameNum }" src=""
										style="width: 20px; height: 20px;" />
								</div>
								<!-- 룬 -->
								<div style="display: flex; flex-direction: column;">
									<img id="InGameRuneMain${inGameNum }" src="" style="width: 20px; height: 20px; border-radius: 30px;" /> 
									<img id="InGameRuneSub${inGameNum }"
										src="" style="width: 20px; height: 20px; border-radius: 30px;" />
								</div>
								<span id="InGameChampName${inGameNum }" style="font-size: 12px; margin-top: 5px;"></span>
							</div>
							<!-- 티어 -->
							<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
								<div id="InGameTier${inGameNum }"></div>
								<div id="InGameRank${inGameNum }" style="margin-left: 5px;"></div>
							</div>


							<!-- 세부 룬 -->
							<div style="width: 30%; display: flex; justify-content: center; align-items: center;">
								<div style="display: flex; justify-content: center; align-items: center;">
									<img id="InGame0Mastery${inGameNum }" src="" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" /> <img
										id="InGame1Mastery${inGameNum }" src="" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" /> <img
										id="InGame2Mastery${inGameNum }" src="" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" /> 
										
										

								</div>
							</div>
							<div style="width: 20%; display: flex; align-items: center; justify-content: center;">
								<!-- 밴 -->
								<img id="InGameTeamBan${inGameNum }" src="" style="width: 20px; height: 20px;" />
							</div>
						</div>
						<!-- 끝 -->
					</c:forEach>
				</div>
			</div>
		</div>

	</div>
	<%@ include file="footer.jsp"%>
</body>
<!-- 전적검색 -->
<script>
	setSummoner(user, league);
	setStatistics(user.name, match);
</script>