<!-- 模板：html标签 -->
<template>
   <!-- div跟元素 -->
  <div>
      <h3>底部导航条</h3>
       <!-- 面板 -->
        <!-- 添加父元素 -->
        <mt-tab-container v-model="active">
         <!-- 面板1 -->
        <mt-tab-container-item id="tab1"> 
           首页
        </mt-tab-container-item>
         <!-- 面板2 -->
        <mt-tab-container-item id="tab2"> 
            购物车
        </mt-tab-container-item>
         <!-- 面板3 -->
         <mt-tab-container-item id="tab3"> 
            美食
        </mt-tab-container-item>
      </mt-tab-container>

       <!-- 底部导航条父元素 -->
       <mt-tabbar v-model="active" fixed>
       <!-- 按钮1 -->
      <mt-tab-item id="tab1">
      <!-- 图片：检查图片正确01.png -->
        <img slot="icon" src="../../assets/01.png" alt=""/>
        首页
      </mt-tab-item>
       <!-- 按钮2 -->
       <mt-tab-item id="tab2">
        <img slot="icon" src="../../assets/02.png" />
        购物车
      </mt-tab-item>
       <!-- 按钮2 -->
       <mt-tab-item id="tab3">
        <img slot="icon" src="../../assets/03.png" />
        美食
      </mt-tab-item>
   </mt-tabbar>
  </div>
</template>
<script>
export default {
    data() {
        return {
            //按钮保存的id属性
            active:"tab1"
        }
    },
    methods: {
        
    },
}
</script>