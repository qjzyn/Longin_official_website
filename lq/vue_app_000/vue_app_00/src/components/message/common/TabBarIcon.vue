<!--TabBarIcon.vue-->
<template>
  <div>
  <!--<h1>TabBarIcon.vue</h1>-->
  <!--1.显示一张图片-->
  <!--如果当前选中状态显示 选中图片-->
  <!--如果当前默认状态显示 选中图片-->
    <img :src="focused?selectedImage:normalImage" class="imgstyle" />
  </div>
</template>
<script>
export default {
    props:{
        focused:false,  //状态默认 false
        selectedImage:{default:""},  //选中图片
        normalImage:{default:""}     //默认图片
    }
}
</script>
<style scoped>
 .imgstyle{
   width:30px;
   height:30px;
 }
</style>