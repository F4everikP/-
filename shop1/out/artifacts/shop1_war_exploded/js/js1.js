// 二级导航
let head = document.getElementById("head");
let li = head.children;
console.info(li[2]);
for(let i=0;i<=li.length-1;i++){
	li[i].addEventListener("mouseenter" , function(){
		let submenu = this.children[1];
		if(!submenu){
				return 0;
		}
		submenu.style.display = "block";
		submenu.classList.add("show");
	});
	li[i].addEventListener("mouseleave" , function(){
		let submenu = this.children[1];
		if(!submenu){
				return 0;
		}
		submenu.style.display = "none";
		submenu.classList.remove("show");
	});
}

// 广告布自动换图
 let a=document.querySelectorAll("#pbox>li");
 let con = document.getElementById("con");
 for(let i=0;i<=a.length-1;i++){
	 a[i].addEventListener("mouseenter",function(){
		 this.classList.add("on");
		 for(let j=0;j<=a.length-1;j++){
			 if(j!=i){
				 a[j].classList.remove("on");
			 }
		 }
		con.style.transform = `translateX(-${1240*i}px)`;
	
	 });
 }
 
 //登录小窗口
 let openLogin = document.getElementById("openLogin");
 let close = document.getElementById("close");
 let login = document.getElementById("login");
 let max = document.getElementById("max");
 
 openLogin.addEventListener("click",function(){
 	max.classList.add('max');
 	login.style.display="block";
 });
 close.addEventListener("click",function(){
 	max.classList.remove('max');
 	login.style.display="none";
 });