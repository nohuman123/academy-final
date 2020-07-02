/*function $(id){
	return document.getElementById(id);
}

var audio = new Audio("../lib/music/001 엠씨더맥스 (M.C the MAX) - 처음처럼.mp3");

function doPlay(){
	
	audio.play();
}

function doPause(){
	audio.pause();
}

function doStop(){
	audio.pause();
	audio.currentTime = 0;
}

function changeVolume(v){
	var new_v = audio.volume+v;
	if(0<=new_v && new_v <= 1.0){
		audio.volume = new_v;
	}
}
*/
var audio = new Audio();   


$('#playBar').hide();
$('#album').hide();

play = function(serial){ // 듣기 눌렀을 때
	frm_top.m_serial.value = serial;
	let param = $('#frm_top').serialize();
	$.post('sb_play.mu', param, function(data){
		
		
		$('#navBody').empty();
		$('#navBody').append(data);
		
		$('#playBar').show();
		$('#album').show();
		
		$('#playBarD').hide();
		$('#albumD').hide();
		
		$("#show_list").hide();
		$("#playerImg").hide();
		
		
		audio.src ="../sb_music/sb_lib/music/" + $('#audioH').val() + ".MP3";			
		
		player();
		$('#play-button').click();
		
	});
}

play2 = function(serial){ // 플레이리스트 추가 x
	frm_top.m_serial.value = serial;
	let param = $('#frm_top').serialize();
	$.post('sb_play2.mu', param, function(data){
		
		
		$('#navBody').empty();
		$('#navBody').append(data);
		
		$('#playBar').show();
		$('#album').show();
		
		$('#playBarD').hide();
		$('#albumD').hide();
		
		$("#show_list").hide();
		$("#playerImg").hide();
		
		
		audio.src ="../sb_music/sb_lib/music/" + $('#audioH').val() + ".MP3";			
		
		
		player();
		$('#play-button').click();
		
	});
}

kimchi = function(serial){ // 담기 눌렀을 때
	frm_top.m_serial.value = serial;
	let param = $('#frm_top').serialize();
	
	$.post('sb_kimchi.mu', param);
	
	$('#alert').show();		
	setTimeout(function(){
		$('#alert').hide(500);
	},2000);
}

var topP = function(){
	$('#changePage').load('sb_top.mu');
}

var myPage = function(){
	$('#frm_top').attr('action', 'Membership.mem').submit();
}



function audioBtn(num, serial){ // 전노래 다음노래 버튼
	frm_top.m_serial.value = serial;
	let param = $('#frm_top').serialize();
	
	if(num == 1){
		$.ajax({
			url : 'sb_prevMusic.mu',
			data : param,
			type: 'POST',
			dataType: "json",
			success : function(data){
				
				play2(data);
				
				
			}
		});		
		
	}else if(num == 2){
		$.ajax({
			url : 'sb_nextMusic.mu',
			data : param,
			type: 'POST',
			dataType: "json",
			success : function(data){
				
				
				
				play2(data);
				
			}
		});		
		
		
		
	}
}
var reS = 0;
var oneS = 0;
function re(serial){
	if(reS == 0){
		$('#re').css('opacity','100%');
		$('#one').css('opacity','30%');
		oneS = 0;
		reS = 1;
	}else{
		$('#re').css('opacity','30%');
		reS = 0;
	}
	
}

function one(serial){
	if(oneS == 0){
		$('#one').css('opacity','100%');
		$('#re').css('opacity','30%');
		reS = 0;
		oneS = 1;
	}else{
		$('#one').css('opacity','30%');
		oneS = 0;
	}
	
}

function getTime(t){
	var m=~~(t/60), s=~~(t % 60);
	return (m<10?"0"+m:m)+':'+(s<10?"0"+s:s);
	
}

var time = $('#start-time');

function player(){
	  audio.pause(); // 시작할때 다른 음악 끄기
	  var playBtn = document.getElementById("play-button");
	  var progressBar = document.getElementById("progress-bar");
	  
	  
	  var playing = false;
	  var duration = 0;
	  
	  progressBar.onchange=(e)=>{    
	    audio.currentTime = +progressBar.value;
	  };
	  audio.addEventListener("timeupdate",(e)=>{    
	        progressBar.value = audio.currentTime;
	        
	        time.text(getTime(audio.currentTime));
	        

	        // 게스트용 1분 미리 듣기
	       /* if($("#mId").val() == 'guest'){
	    		if(audio.currentTime > 60){
	    			audio.currentTime = 0;
	    			audio.pause();
	    		}
			}*/
	        if($('#membership').val() != 'y'){
	        	if(audio.currentTime > 60){
	    			audio.currentTime = 0;
	    			audio.pause();
	    		}
	    	}
	  });
	  audio.addEventListener("ended",(e)=>{
	    progressBar.value = 0;
	    
		$('#btn_play').attr("src","../sb_music/sb_lib/images/play.png");
	    playing=false;
	    
	    
	  });
	  
	  audio.addEventListener("play",(e)=>{    
		$('#btn_play').attr("src","../sb_music/sb_lib/images/pause.png");
		playing=true;
	  });
	  audio.addEventListener("pause",(e)=>{    
		$('#btn_play').attr("src","../sb_music/sb_lib/images/play.png");
	   
	    playing=false;
	  });
	  audio.addEventListener("canplay",()=>{
	    duration = audio.duration;
	    progressBar.min =0;
	    progressBar.max= duration;    
	  });
	  
	  
	  playBtn.onclick=()=>{
	    if(playing){
	      audio.pause();            
	    }
	    else{
	      audio.play()      
	    }    
	    return true;
	  };  
	
}

function removeAll(){
	let param = $('#frm_top').serialize();
	$.post('sb_removeAll.mu',param);
	
	playList();
}

function showVolume(vol){
	var view = document.getElementById("now-vol");
	view.innerHTML = vol;
	
	var now = audio.volume = vol/100;
	
	if(now > 0){
		$("#sound").attr("src","../sb_music/sb_lib/images/vol1.png");
	}else{
		$("#sound").attr("src","../sb_music/sb_lib/images/vol2.png");
	}
}



var nav_flag = 0;
$("#show_list").hide();
$("#playerImg").hide();


function nav_list(){
	if(nav_flag == 0){
		$("#show_list").hide(1000);
		$("#playerImg").hide(1000);
		nav_flag = 1;
	}else{
		$("#show_list").show(1000);
		$("#playerImg").show(1000);
		nav_flag = 0;
	}
	playList();
}


var cnt = 0;
var str;

function playList(){
	let param = $('#frm_top').serialize();
	str = '';
	$.ajax({
		url : 'sb_playList.mu',
		data : param,
		type: 'POST',
		dataType: "json",
		success : function(data){
			var tbody = $('#pl_tbody');
			cnt = 0;
			$('#list_val').empty();
			
			$('#pl_tbody').empty();
			
			
			$.each( data,function(index , val){
				tbody.append(
						"<tr id='changing" + index + "' onmouseup='ChDrag("+ index + ","+ val.music_serial  +")'>" +
						"<td> <span>" + index + "</span> </td>" +
						"<td> <img src='../sb_music/sb_lib/album/" + val.album_photo + ".PNG' width='55px' id='tplay'>" +
						" <img src='../sb_music/sb_lib/images/start.png' id='hiddenStart" + index + "' class='hiddenStart' onclick='play2("+ val.music_serial +")'> " + 
						"</td>" +
						"<td> <span>" + val.music_name + "</span>" +
						"<br>" +
						"<span>" + val.artist_name + "</span> </td>" +
						"<td> <span id='tb_delete' onclick='delList(" + val.music_serial + ")'>X</span>" +
						"</td>" +
						"</tr>"
						
				)
				cnt++;
				
			})
			
			
			
		},
		error : function(request, status, error){
			/*alert(request.status + "\n에러메시지:" + error);*/
		}
		
	})
}




function delList(serial){
	frm_top.m_serial.value = serial;
	let param = $('#frm_top').serialize();
	str = '';
	
	$.ajax({
		url : 'sb_delList.mu',
		data: param,
		type: 'POST',
		dataType: "json",
		success : function(data){
			cnt = 0;
			var tbody = $('#pl_tbody');

			$('#list_val').empty();
			
			$('#pl_tbody').empty();
			
			
			$.each( data,function(index , val){
				
				tbody.append(
						"<tr id='changing" + index + "' onmouseup='ChDrag("+ index + ","+ val.music_serial  +")'>" +
						"<td> <span>" + index + "</span> </td>" +
						"<td> <img src='../sb_music/sb_lib/album/" + val.album_photo + ".PNG' width='55px' id='tplay'>" +
						" <img src='../sb_music/sb_lib/images/start.png' id='hiddenStart" + index + "' class='hiddenStart' onclick='play2("+ val.music_serial +")'> " + 
						"</td>" +
						"<td> <span>" + val.music_name + "</span>" +
						"<br>" +
						"<span>" + val.artist_name + "</span> </td>" +
						"<td> <span id='tb_delete' onclick='delList(" + val.music_serial + ")'>X</span>" +
						"</td>" +
						"</tr>"
						
				)
				$('#hiddenS').hide();
				cnt++;
			})
			
		},
		
		error: function(request, status, error){
			/*alert(request.status + "\n에러메시지:" + error);*/
		}
		
		
	})
}


function ChDrag(index, music_serial){
	var os;
	var arr = new Array();
	
	
	for(var i=0; i<cnt; i++){
		os = $('#changing'+i).offset();
		
		
		arr.push(os.top);
	}
	frm_top.listV.value = arr;

	
	let param = $('#frm_top').serialize();
	str = '';
	
	$.post('sb_ChDrag.mu', param);
}




$(document).ready(function() {
	
	$("#music_tb tbody").sortable({
		update: function(event, ui){
			$(this).children().each(function(index){
				$(this).find('td').first().html(index + 1);
				$(this).find('td').first().css("color", "white");
				$(this).find('td').first().css("font-weight", "bold");
				$(this).find('td').first().css("font-size", "16px");
				$(this).find('td').first().css("text-shadow", "0 0 2px #F7819F");
			})
		}
	})
	
	$('#list_val').hide();
	var cId = $('#mId').val();
	
	// 1분 미리 듣기 안내
/*	if(cId != 'guest'){
		$('#guest').hide();
	}else{
		$('#guest').show();
	}*/
	
	let param = $('#frm_top').serialize();
	$.ajax({
		url : 'sb_IsMembership.mem',
		data : param,
		type : 'POST',
		dataType : 'json',
		success : function(data){
			console.log(data);
			$('#membership').val(data);
			console.log($('#membership').val());
			
			if($('#membership').val() == 'y'){
				$('#guest').hide();
			}else{
				$('#guest').show();
			}
		}
		
		
	});
	
	
	
	$('#myCarousel').carousel({
	interval: 10000
	})
    
});

function logout(){
	$.post('sb_logout.mem');
	alert("로그아웃 되었습니다.");
	location.reload(true);
	
}








/*$('input[type=range]').on('input', function(){
    var val = $(this).val();
    $(this).css('background', 'linear-gradient(to right, dodgerblue 0%, dodgerblue '+ val +'%, #d5d4d3 ' + val + '%, #d5d4d3 100%)');
});
*/










