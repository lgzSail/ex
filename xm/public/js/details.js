var h1=$('#lb>div:first-child>div h1')
var p=$('#lb>div:first-child>div p')
var wb=[
    {title:'马家浜文化',text:'据乌镇近郊的谭家湾古文化遗址考证表明，大约在7000年前，乌镇的先民就在这一带繁衍生息了。 那一时期，属于新石器时代的马家浜文化。'},
    {title:'春秋时期',text:'春秋时期，乌镇是吴越边境，吴国在此驻兵以防备越国，史称"乌戍"。'},
    {title:'秦',text:'秦时，乌镇属会稽郡，以车溪（即今市河）为界，西为乌墩，属乌程县，东为青墩，属由拳县，乌镇分而治之。其后，乌镇或属浙江的湖州、嘉兴管辖，或属江苏的苏州治理。'},
    {title:'唐',text:'唐时，乌镇隶属苏州府。后梁，隶属不变，为吴越国地。后晋天福五年（940），置秀州，青墩遂属嘉兴县隶秀州。'},
    {title:'宋',text:'宋淳化三年（992），乌镇属乌程隶湖州。熙宁十年（1077），析嘉兴县西境的梧桐、永新、清风等5个乡归崇德县，青镇在清风乡，属崇德隶秀州。元丰初年，有分乌墩镇、青墩镇的记载，后为避光宗讳，改称乌镇、青镇。嘉定年间，升嘉兴为军，青镇遂属崇德隶嘉兴军。'},
    {title:'元',text:'元至元十四年（1277），乌镇为湖州路乌程县地，青镇为嘉兴路崇德县地。镇地设都巡检。'},
    {title:'明清',text:'明宣德五年（1430），析崇德县的募化、千金、保宁、清风、永兴和梧桐六乡置桐乡县，青镇属之，隶嘉兴府；乌镇仍属乌程隶湖州府。这一隶属关系至清未变'},
    {title:'近代',text:'民国元年（1912），乌、青两镇依旧分治。1950年5月，乌、青两镇终于合并，称乌镇，属桐乡县，隶嘉兴，直到今天。'}]
var ai=0
var fun=function(){
    if(ai>=wb.length-1){ai=0}else{ai++}
    h1.html(`${wb[ai].title}`)
    p.html(`${wb[ai].text}`)
    $('#detail_xhx').next().children().css({'width':`${(+ai+1)*100/8}%`},{
      height:'3'
    })
}
var fun1=function(){
    if(ai<=0){ai=wb.length-1}else{ai--}
    h1.html(`${wb[ai].title}`)
    p.html(`${wb[ai].text}`)
    $('#detail_xhx').next().children().css({'width':`${(+ai+1)*100/8}%`},{
      height:'3'
    })
}
setInterval(fun,12000)
$('#detail_xhx').children().click(function(){
  var $txt1=$(this).html()
  for(var bi in wb){
    if(wb[bi].title==$txt1){
      h1.html(`${wb[bi].title}`)
      p.html(`${wb[bi].text}`)
      ai=bi

      $('#detail_xhx').next().children().css({'width':`${(+ai+1)*100/8}%`})
  }}
})
