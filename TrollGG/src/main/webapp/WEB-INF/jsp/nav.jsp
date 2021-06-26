<%@ page pageEncoding="utf-8"%>
<nav class="navbar navbar-expand-sm bg-dark">
		<div class="header-ul">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/">Troll.GG</a></li>
				<li class="nav-item"><a class="nav-link" href="/ranking">랭킹</a></li>
				<li class="nav-item"><a class="nav-link" href="/community">커뮤니티</a></li>
			</ul>
		</div>
		<form  action="/search" method="GET">
 			<div class="nav-embed-submit-field">
				<input type="text" placeholder="당신의 아이디를 검색하세요!" name="SummonerName">
 				<button type="submit" >검색</button>
			</div>
		</form>
</nav>
