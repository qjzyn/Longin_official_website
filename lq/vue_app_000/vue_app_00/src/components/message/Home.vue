<template>
    <div>
    <!---->
    <!--Home.vue-->
    <!-- 1.顶部导航条 -->
    <!--3.调用TitleBar  传参数leftTitle-->
    <titlebar leftTitle="微信(101)" 
    :rightFirstImg="require('../../assets/ic_search.png')" 
    :rightSecondImg="require('../../assets/ic_add.png')" 
    :search="mysearch" 
    :add3="myadd3">
    </titlebar>
    <!-- 2.保留元素 -->
    <!-- 3.面板组件 -->
    <mt-tab-container v-model="active">
    <!-- 3.1:子面板 -->
      <mt-tab-container-item id="message">
          <!-- 引入MessageList子组件 -->
          <messagelist></messagelist>
      </mt-tab-container-item>
    </mt-tab-container>
    <!-- 4.底部导航条 -->
    <mt-tabbar v-model="active" fixed>
      <!--第一个按钮 微信-->
        <mt-tab-item id="message" @click.native="changeState(0)">
         <tabbaricon
         :selectedImage="require('../../assets/ic_weixin_selected.png')"
         :normalImage="require('../../assets/ic_weixin_normal.png')"
         :focused="currentIndex[0].isSelect">
         </tabbaricon>
         <!-- 按钮状态保存数组下标0属性中 -->
           微信
        </mt-tab-item>
        <!--第二个按钮 通讯录-->
        <mt-tab-item id="contact" @click.native="changeState(1)">
         <tabbaricon
         :selectedImage="require('../../assets/ic_contacts_selected.png')"
         :normalImage="require('../../assets/ic_contacts_normal.png')"
         :focused="currentIndex[1].isSelect">
         </tabbaricon>
           通讯录
        </mt-tab-item>
        <!--第三个按钮 发现-->
        <mt-tab-item id="find" @click.native="changeState(2)">
         <tabbaricon
         :selectedImage="require('../../assets/ic_find_selected.png')"
         :normalImage="require('../../assets/ic_find_normal.png')"
         :focused="currentIndex[2].isSelect">
         </tabbaricon>
           发现
        </mt-tab-item>
        <!--第四个按钮 我-->
        <mt-tab-item id="me" @click.native="changeState(3)">
          <tabbaricon
         :selectedImage="require('../../assets/ic_me_selected.png')"
         :normalImage="require('../../assets/ic_me_normal.png')"
         :focused="currentIndex[3].isSelect">
         </tabbaricon>
           我
        </mt-tab-item>
    </mt-tabbar>
    </div>
</template>
<script>
//<!--1.引入子组件TitleBar.vue-->
import TitleBar from "./common/TitleBar.vue"
//1.1:引入子组件MessageList.vue
import MessageList from "./common/MessageList.vue"
//1.2引入子组件TabBarlcon.vue
import TabBarIcon from "./common/TabBarIcon.vue"
export default {
   data() {
       return {
           //active 保存字符串 子面板id
           //第一个子面板 message
           //第二个字面板 cart
         active:"message",
         //在data添加属性 currentIndex
         //集中保存所有按钮状态
         currentIndex:[
            {isSelect:true},   //0 保存第一个按钮状态
            {isSelect:false},  //1 保存第二个按钮状态
            {isSelect:false},  //2 保存第三个按钮状态
            {isSelect:false}   //3 保存第四个按钮状态
         ]
       }
   },
   //<!--2.注册TitleBar.vue-->
   methods: {
     changeState(idx){
       //功能：指定当前的按钮状态修改为true
       //  其它按钮状态修改 false
       //1.创建循环遍历状态数组
        //console.log(idx);
       for(var i=0;i<this.currentIndex.length;i++){
       //2.获取用户点击下标
        var ui = idx;
       // 当当前数据元素下标比较
       //3.如果两个值相等当前状态true
       if(ui==i){
         this.currentIndex[i].isSelect=true;
       }else{
         this.currentIndex[i].isSelect=false;
       //4.其它元素状态false
         }
       }
     },
       mysearch(){
         //titleBar子传所需处理函数搜索
         console.log("搜索");
       },
       myadd3(){
        //titleBar子传所需处理函数：添加
        console.log("添加");
       }
   },
   components:{
       //注册顶部标题子组件
       "titlebar":TitleBar,
       //注册消息列表子组件
        "messagelist":MessageList,
        //注册底部导航图片子组件
        "tabbaricon":TabBarIcon
   }
}
</script>
<style scoped>
    /* 3.修改组件默认的样式  按钮默认样式*/
    .mint-tabbar>.mint-tab-item{
        color:#999999;   /* 默认的灰色 */
    }
    /* 4.效果组件按钮选中的样式*/
    .mint-tabbar>.mint-tab-item.is-selected{
      background-color: transparent;
      color:#45c018;  /* 选中的绿色 */
}
</style>