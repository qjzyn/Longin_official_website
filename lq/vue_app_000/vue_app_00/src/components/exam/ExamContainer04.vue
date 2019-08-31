<!-- 模板：html标签 -->
<template>
   <!-- div跟元素 -->
  <div>
      <h3>面板组件</h3>
      <!-- 1.父容器 -->
       <!-- 父元素 active变量保存tab1时则显示子面板 -->
      <mt-tab-container v-model="active">
      <!-- 2.多个子面板 -->
        <mt-tab-container-item id="tab1"> 
           子面板1
        </mt-tab-container-item>
        <mt-tab-container-item id="tab2"> 
         子面板2
        </mt-tab-container-item>
         <mt-tab-container-item id="tab3"> 
         子面板3
        </mt-tab-container-item>
      </mt-tab-container>
  </div>
</template>
<script>
export default {
    data() {
        return {
          active:"tab1"    //保存显示子面板id  
        }
    },
}
</script>