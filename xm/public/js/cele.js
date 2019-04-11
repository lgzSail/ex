function cele(){
	   
		ajax({url: 'http://127.0.0.1:3001/index/origin', type: 'get', dataType: 'json'}).then(res=>{
			var url='http://127.0.0.1:3001/details_cele.html?uid='+4
			$('#sel_child').html(`<a href=${url}><img src="${res[4].bimage}" class="w-100">
								<p class='mt-2 mb-0'>${res[4].bname}</p>
								<div class="xhx xhx1 position-relative">
									<a href="#" class="fontsize14px text-secondary pb-2">了解更多</a>
									<div class='xh xh1'></div>
								</div></a>`)
			var elem=''
			for(var i=5,ai=0;i<=res.length-1;i++){
				// if(i%4==0 && ai%2==0){
				//     elem+='<div class="row">' 
				//     ai++ 
				// } 
				var url='http://127.0.0.1:3001/details_cele.html?uid='+i
				elem+=`<a href=${url}> <div class="col-3 mb-3">
								<img src="${res[i].bimage}" class="w-100">
								<p class='mt-2 mb-0'>${res[i].bname}</p>
								<div class="xhx xhx1 position-relative">
									<a href="#" class="fontsize14px text-secondary pb-2">了解更多</a>
									<div class='xh xh1'></div>
								</div>
						</div></a>`
				// if(i%4==0 && ai%2!=0){
				//     elem+='</div>'  
				// }
			}
			$(elem).appendTo($('#sel'))
		}
	)
}