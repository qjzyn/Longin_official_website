/*下拉菜单*/
function showList(o) {
    hideList("dropdown-content" + o.id);
    document.getElementById("dropdown-" + o.id).classList.toggle("show");
}
 
 
function hideList(option) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
     
    for (var i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
        if (openDropdown.id != option) {
            if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
            }
        }
    }
}
 
 
window.onclick = function(e) {
    if (!e.target.matches('.dropbtn')) {
        hideList("");
    }
}

/*第二部分轮播开始*/
	let hero = document.getElementById('hero-slides');
	let menu = document.getElementById('menu');
	let slides = document.getElementById('slides');
	let next = [ 'next', 'next-catch' ].map(n => document.getElementById(n));
	let prev = [ 'prev', 'prev-catch' ].map(n => document.getElementById(n));
	let slideChildren = slides.children;
	let slideCount = slides.children.length;
	let currentlyDemoing = false;
	let currentPage = 0;
	let slidesPerPage = () => window.innerWidth > 1700 ? 4 : window.innerWidth > 1200 ? 3 : 2;
	let maxPageCount = () => slideCount / slidesPerPage() - 1;
	
	function goToPage(pageNumber = 0) {
		currentPage = Math.min(maxPageCount(), Math.max(0, pageNumber));
		console.log(currentPage);
		hero.style.setProperty('--page', currentPage);
	}
	
	function sleep(time) {
		return new Promise(res => setTimeout(res, time));
	}
	
	function hoverSlide(index) {
		index in slideChildren &&
			slideChildren[index].classList.add('hover');
	}
	
	function unhoverSlide(index) {
		index in slideChildren &&
			slideChildren[index].classList.remove('hover');
	}
	
	async function demo() {
		if(currentlyDemoing) {
			return;
		}
		currentlyDemoing = true;
		if(currentPage !== 0) {
			goToPage(0);
			await sleep(800);
		}
		let slides = slidesPerPage();
		let pageSeq_ = { 2: [ 1, 2, 1 ], 3: [ 1, 2, 1 / 3 ], 4: [ 1, 1, 0 ] };
		let pageSeq = pageSeq_[slides] || pageSeq_[4];
		let slideSeq_ = { 2: [ 2, 4, 3 ], 3: [ 3, 6, 2 ], 4: [ 3, 6, 2 ] };
		let slideSeq = slideSeq_[slides] || slideSeq_[2];
		await sleep(300);
		goToPage(pageSeq[0]);
		await sleep(500);
		hoverSlide(slideSeq[0]);
		await sleep(1200);
		goToPage(pageSeq[1]);
		unhoverSlide(slideSeq[0]);
		await sleep(500);
		hoverSlide(slideSeq[1]);
		await sleep(1200);
		goToPage(pageSeq[2]);
		unhoverSlide(slideSeq[1]);
		await sleep(300);
		hoverSlide(slideSeq[2]);
		await sleep(1600);
		goToPage(0);
		unhoverSlide(slideSeq[2]);
		currentlyDemoing = false;
	}
	
	next.forEach(n => n.addEventListener('click', () => !currentlyDemoing && goToPage(currentPage + 1)));
	prev.forEach(n => n.addEventListener('click', () => !currentlyDemoing && goToPage(currentPage - 1)));
//	menu.addEventListener('click', demo);
	
//	sleep(100).then(demo);
/*第二部分轮播结束*/



/*滚动条监听*/
   var nav_5 = document.querySelector(".nav_5");
    window.onscroll = function () {
        var t = document.body.scrollTop ||document.documentElement.scrollTop;
//      console.log(t);
        if(t>=3667){
     		nav_5.className="nav_5"
        	
        }else {
           nav_5.className="nav_5 nav_5_fixed"
        }
	}
    /*滚动条监听制作步骤*/
// 1.css里给要监听的对象下一级加一个nav_5_fixed里面给固定定位.
// 2.打印出t从多少开始滚动
// 3.if判断出滚动的方向是向上还是向下.
   