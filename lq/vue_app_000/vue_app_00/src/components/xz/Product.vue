<template>
    <div class="product-app">
        <!--一个商品 循环-->
        <div class="goods-item" v-for="(item,i) of list" :key="i">
            <img :src="'http://127.0.0.1:3000/'+item.img_url" />
            <h4>眼镜</h4>
            <div class="info">
                {{item.price}}
            </div>
            <mt-button 
            @click="addCart"
            :data-lid="item.lid" 
            :data-price="item.price" 
            :data-lname="item.lname">
            加入购物车
            </mt-button>
        </div>
        <!--加载更多按钮-->
        <!--为按钮添加一个点击事件：完成加载更多-->
        <mt-button @click="jumpCart">查看购物车</mt-button>
        <mt-button type="primary" size="large" @click="loadMore">加载更多</mt-button>
    </div>
</template>
<script>
    export default{
        data(){
            return {
               list:[],//商品列表数组
               pno:0   //页码(第几页)
            }
        },
        methods: {
            jumpCart(){
                //查看购物车操作
                //跳转购物车组件
                this.$router.push("/cart")
            },
            addCart(e){
                //功能：将商品添加至购物车
                //1.lid获取当前购物车
                console.log(123);
                var lid = e.target.dataset.lid;
                var n = e.target.dataset.lname;
                var p = e.target .dataset.price;
                //2.发送ajax请求
                //2.1：请求服务器地址
                var url = "addcart";
                //2.2:请求参数
                var obj = {lid:lid,lname:n,price:p}
                this.axios.get(url,{params:obj})
                .then(res=>{
                    console.log(res);
                    //3.1:如果-1提示用户登录
                    if(res.data.code == -1){
                        this.$toast("请先登录");
                    }else{
                        this.$toast("添加成功");
                    }
                    //3.2：如果1提示用户登陆成功
                })
            },
            loadMore(){
                //功能：获取商品分页数据
                //1:发送请求
                var url="product";
                //当前页码加1
                this.pno++;
                //创建参数对象
                var obj = {pno:this.pno};
                //发送ajax请求获取当前页内容
                this.axios.get(url,{params:obj}).then(res=>{
                    //2:获取服务器返回结果
                    //console.log(res.data.data);
                    //3:将返回结果保存
                    //var list = 1页.concat(2页);
                    //this.list = res.data.data;
                    //4:拼接多页内容
                    var  rows=this.list.concat(res.data.data);
                    //5：将结果赋值list
                    this.list = rows;
                })
            }
        },
        created() {
            this.loadMore();
        console.log("1:created 组件创建成功")
        },    
    }
</script>
<style scoped>
/*1:最外层样式*/
.product-app{
 display:flex;/*指定当前元素弹性布局*/
 flex-wrap:wrap;/*指定子元素换行*/
 /*指定子元素两端对齐*/
 justify-content:space-between;
 padding:4px;/*最外层加内边距*/
}
/*2:修饰商品样式*/
.goods-item{
 width:49%;/*指定商品元素宽度*/
 /*商品外灰色边框*/
 border:1px solid #ccc;
 border-radius:5px;/*指定元素圆角*/
 margin:2px 0;/*外边距*/
 padding:2px;/*内边距*/
 box-sizing:border-box;/*重新计算宽度*/
 display:flex;/*弹性布局*/
 flex-direction:column;/*指定子元素排列方式*/
 min-height:247px;/*最小高度*/
 }
/*3：修饰商品中图片样式*/ 
.goods-item img{
    width:100%;
}
</style>