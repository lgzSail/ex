(function(){
  window.onload=function(){
    var urlParams=new URLSearchParams(location.search);
    var uid=+urlParams.get('uid');
    ajax({url: 'http://127.0.0.1:3001/index/origin', type:'get', dataType: 'json'}).then(res=>{
      var name=res[uid].bname
      var jj=res[uid].jj
      $('#class').prev().html(`${name}`)
      $('#class>div:first-child>p').html(`${jj}`)
      var frag=''
      for(var i=0;i<3;i++){
        var ai=Math.ceil(Math.random()*(res.length-1))
        var uname=res[ai].bname
        var uimg=res[ai].bimage
        var url='http://127.0.0.1:3001/details_cele.html?uid='+ai
         frag+=`<a href=${url}><div class='row pb-3'>
      <div class='col-5'>
        <img src=${uimg} class="w-100">
      </div>
      <div class='col-7'>
        <p class='mt-2 mb-0'>${uname}</p>
      </div>
    </div></a>`
      }
      $(frag).appendTo('#class>div:last-child')
    })
  }
})()