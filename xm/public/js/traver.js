ajax({url:'http://127.0.0.1:3001/index/traver',type:'get',dataType:'json'}).then(res=>{
  var urlParams=new URLSearchParams(location.search);
  var b=+urlParams.get('x'); 
  var x=(b-1)*5
  var elem=''
  if(x<0){x=0}
  if((b-1)*5>res.length){x=x-5}
  for(var i=0;i<5;i++){
    if(!res[x]){break;}
    elem+=`<a href=''>
<div class='row mt-4 xs'>
  <div class='col-3'>
    <img src="${res[x].dpic}" class='w-100'>
  </div>
  <div class='col-9'>
      <h6>${res[x].dtitle}</h6>
      <div class='f_12'>
          <span>${res[x].dtime}</span>
          <span> ${res[x].dbq}</span>
      </div>
      <p class='font13_color'>${res[x].djj}</p>
      <div class='lj' id="lj">
          <span>了解更多
          <div class='position-relative'>
              <div class="position-absolute"></div>
              <div class="position-absolute"></div>
          </div>
          </span>
      </div>
  </div>
  
  <hr>
</div>
</a>
`
x++
  }
  $('#gl').html(elem)
  var elem=`<div class='pt-5 pb-5'><span class='pr-2'><a href='?x=1'>首页</a></span><span class='pr-2'><a href="?x=${Math.ceil(x/5-1)}">&lt;</a></span>`
  var i=Math.ceil(res.length/5)
  for(var ai=1;ai<=i;ai++){
      elem+=`<span class='pr-2'><a href="?x=${ai}">${ai}</a></span>`
  }
  elem+=`<span class='pr-2'><a href="?x=${Math.ceil(x/5+1)}">&gt;</a></span><span class='pr-2'><a href="?x=${Math.ceil(res.length/5)}">末页</a></span></div>`
  $('#gl').next().html(elem)
})
