(function(){
    window.addEventListener('scroll', function (e) {
        var i = document.documentElement.scrollTop;
        if(i>1000){
            d1.children[0].innerHTML=`<img src="img/ico/logo2.png"/>`
            d1.lastElementChild.firstElementChild.className=' yc'
        }else{
            d1.children[0].innerHTML=`<img src="img/logo.png"/>`
            d1.lastElementChild.firstElementChild.className=' row justify-content-end align-items-center mr-5'
        }
    })
})()
$('#lj').mouseout(function(){
    $('#lj>a>span div div:last-child').addClass('lk')
    setTimeout(function(){
      $('#lj>a>span div div:last-child').removeClass('lk')
    },500)
})
  
  
