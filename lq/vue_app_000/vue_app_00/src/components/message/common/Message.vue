<template>
    <!-- Message.vue消息子组件 -->
   <!--<h1> 一条消息子组件</h1>-->
    <div class="rootstyle">
      <div class="leftimgandtxt">
      <!-- 1：左侧图片 -->
        <img :src="imgurl" class="imgstyle" />
    <!-- 2：左侧标题与子标题 -->
        <div class="titlestyle">
          <span class="title">{{title}}</span>
          <span class="subtitle">{{subtitle}}</span>
      </div>
    </div>
    <!-- 3：右侧时间 -->
        <span class="sendtime">{{sendtime}}</span>
       </div>
</template>
<script>
export default {
    props:{
       imgurl:{default:""},   /* 左侧图片 */
       title:{default:""},    /* 左侧标题 */
       subtitle:{default:""}, /* 左侧子标题 */
       sendtime:{default:""}
    }
}
</script>
<style scoped>
  /* 1.为防止样式冲突 */
  /* 2.跟元素的样式 */
    .rootstyle{
      display:flex;  /* 弹性布局 */
      justify-content:space-between;  /* 两端对齐 */
      align-items:center;   /* 垂直居中 */
    }
  /* 3.图片与样式 */
  .leftimgandtxt{
      display:flex;  /* 将容器设置弹性布局 */
  }
  /* 4.图片样式 */
  .imgstyle{
      width:50px;  /* 左侧图片宽度和高度 */
      height:50px;
  }
  /* 5.标题 */
  .titlestyle{
      display:flex;   /* 弹性布局 */
      flex-direction:column;   /* 按列排好子元素 */
      justify-content:center;  /* 居中 */
      margin-left:7px;  /* 左侧外边距 */
  }
  .title{
      color:#000;  /* 标题颜色黑色 */
      font-size:17px;  /* 标题文字大小 */
  }
  /* 6.子标题 */
  .subtitle{
     color:gray;     /* 子标题颜色灰色 */
     margin-top:4px; /* 与上面标题间距 */
  }
  /* 7.发送时间 */
  .sendtime{
     color:gray;  /* 发送时间灰色 */
  }
</style>