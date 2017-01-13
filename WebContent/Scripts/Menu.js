//main menu display
var left,top,width,lvl,ie=navigator.appName=="Microsoft Internet Explorer",doc=document,src="Images/index.html",time=1
function showmenu(ob,l,t,w,lv)
{
	left=l;top=t;width=w;lvl=lv;
	if(!ie)width-=20
	if(!lvl){lvl=1;ob.className='MainMenuLinkSpecialForMenu'}
	var str="",txt="",alt=ob.title,mndiv=doc.getElementById("jsMenu"+lvl),obj=findInAll(menuroot,alt)
	if(!obj||!mndiv)return
	closemenu(lvl)
	showHideLayers('jsMenu'+lvl,'visible')
	var str="<div onmouseover=showHide("+lvl+",'visible'); class='cssMenuPos' style='"
	if(ie)str+="top:"+top+";left:"
	else str+="margin:1px 0px 0px "
	str+=left+"px;width:'"+width+"px'>"+getMenuItems(obj)+"</div>"
	mndiv.innerHTML=str;

}
//add items to menu
function addItems(txt,lnk,bval,cnt)
{	
	str="<div style='width:"+width+"px;height:"+rowh+"px' title='"+txt+"' onmouseover=\"this.className+=' cssMenuItemsOver';showHide("+lvl+",'visible')"
	// wid=ie?width:width+20;
	wid=ie?width:width;
	if(bval)str+=";showHideLayers('jsMenu2','visible');showmenu(this,eval("+left+")+eval("+(wid+9)+"),"+eval(top+cnt*23)+","+eval(wid)+","+eval(lvl+1)+")"
	str+="\" onmouseout=this.className='cssMenuItems';closemenu("+lvl+")"
	str+=" onclick=\"document.location='"+lnk+"'\" class='cssMenuItems'>"+txt
	if(bval)str+="<img src='"+src+"RedArrow.gif' width='5' style='margin-left:13px' />"
	return str+"</div>"
}

//displays or hides all menus for a given level
function showHide(lvl,str)
{
	for(i=1;i<=lvl;i++)showHideLayers("jsMenu"+i,str)
}

//closes all heigher level menus for a given level
function closemenu(lvl)
{
	for(i=lvl;i<=3;i++)
	{
		ob=doc.getElementById('jsMenu'+eval(i+1))
		if(ob&&ob.style.visibility=="hidden")showHideLayers("jsMenu"+i,'hidden')
		else break
	}
}
//display or hide a object
function showHideLayers(id,v)
{
	obj=doc.getElementById(id)
	if(obj&&obj.style)obj.style.visibility=v;
}
var sc=ie?"IE":"NonIE"
var rowh=ie?"15":"15"
doc.write("<script type=text/javascript src='Scripts/Menu"+sc+".js'></script>")