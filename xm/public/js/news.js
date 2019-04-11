(function(){
  var urlParams=new URLSearchParams(location.search);
  var b=+urlParams.get('x');  
  var urlParams=new URLSearchParams(location.search);
  var time=+urlParams.get('time');  
  var x=(b-1)*5
  aj(x,time)
  function aj(x,time){
   ajax({url: 'http://127.0.0.1:3001/index/news', type:'get', dataType: 'json'}).then(res=>{
       if(time==1){
          time=new Date()
          time=time.getTime()
          var news=[]
          for(var bi of res){
              var time2=bi.ctime.split('.').join('/')
              time2=new Date(time2)
              time2=time2.getTime()
              if(time-time2<30*24*60*60*1000){
                  news.push(bi)
              }
          }
          time=1
       }
       else if(time==2019){
          var news=[]
          for(var bi of res){
              var time2=bi.ctime.split('.')[0]
              if(time==time2){
                  news.push(bi)
              }
          }
       }
       else if(time==2018){
          var news=[]
          for(var bi of res){
              var time2=bi.ctime.split('.')[0]
              if(time==time2){
                  news.push(bi)
              }
          }
       }
       else if(time==2017){
          var news=[]
          for(var bi of res){
              var time2=bi.ctime.split('.')[0]
              if(time==time2){
                  news.push(bi)
              }
          }
       }
       else if(time==2016){
          var news=[]
          for(var bi of res){
              var time2=bi.ctime.split('.')[0]
              if(time==time2){
                  news.push(bi)
              }
          }
       }
       else if(time==2015){
          var news=[]
          for(var bi of res){
              var time2=bi.ctime.split('.')[0]
              if(time==time2){
                  news.push(bi)
              }
          }
       }
       else if(time==2014){
          var news=[]
          for(var bi of res){
              var time2=bi.ctime.split('.')[0]
              if(time==time2){
                  news.push(bi)
              }
          }
       }
       else{
          var news=res

       }
          var elem=''
          if(x<0){x=0}
          if((b-1)*5>news.length){x=x-5}
          for(var i=0;i<5;i++){
              if(!news[x]){break;}    
              elem+=`<a href="/newlist.html?cid=${news[x].cid}"><div class='row mt-2 pb-3'>
                  <div class='col-4'>
                      <img src="${news[x].cpic}" class='w-100'>
                  </div>
                  <div class='col-8'>
                      <p class='m-0 '>${news[x].ctitle}</p>
                      <div class='bq_border'>`
                          var bq=news[x].cbq.split('|')
                          for (var bqi of bq){
                              elem+=`<span class='mr-2'>${bqi}</span>`
                          }
                          elem+=`</div>
                      <p class='bq_color'>${news[x].cjj}</p>
                      <p class='text-end bq_color pb-0'>${news[x].ctime}</p>
                  </div>
              </div></a>
              <hr>`
              x++
          }
          $('#sw>div:first-child').html(elem)
          var elem=`<div class='pt-5 pb-5'><span class='pr-2'><a href='?x=1&time=${time}'>首页</a></span><span class='pr-2'><a href="?x=${Math.ceil(x/5-1)}&time=${time}">&lt;</a></span>`
          var i=Math.ceil(news.length/5)
          for(var ai=1;ai<=i;ai++){
              elem+=`<span class='pr-2'><a href="?x=${ai}&time=${time}">${ai}</a></span>`
          }
          elem+=`<span class='pr-2'><a href="?x=${Math.ceil(x/5+1)}&time=${time}">&gt;</a></span><span class='pr-2'><a href="?x=${Math.ceil(news.length/5)}&time=${time}">末页</a></span></div>`
          $('#sw').next().html(elem)
   })
  }
})()