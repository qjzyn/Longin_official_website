
				/*获取点击按钮*/
				var btn=document.querySelectorAll(".slider-btn>li");
				/*获取移动图片的父级元素*/
				var box=document.querySelector(".slider-image");
				/*给每一个按钮绑定一个点击事件*/
				for(var i=0;i<btn.length;i++){
					var b=btn[i];
					b.index = i;
					b.onclick=function () {
						for(var d=0;d<btn.length;d++){
							btn[d].className="";
						}
						this.className="on";
						var distance = this.index * 900;
						console.log(distance);
						box.style.left = - distance + "px";
					}
				}
				

/*
//	滚动条监听
		    var nav = document.querySelector(".navBarHid");
		    window.onscroll = function () {
		        var t = document.body.scrollTop || document.documentElement.scrollTop;
		        console.log(t);
		        if(t>=100){
		            nav.style.top= 0;
		        }else {
		            nav.style.top = -100 + "px";
		        }
		    }*/