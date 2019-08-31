<!-- 模板：html标签 -->
<template>
   <!-- div跟元素 -->
  <div>
   <!-- 子组件：功能消失msg数据 -->
   <!-- msg 父组件传递数据 -->
   <!-- 子组件不需要，配置访问路径 -->
    <h3>{{msg}}</h3>

  </div>
</template>
<script>
export default {
    props:{   //声明接收父组件的数据
        msg:{default:""}      //数据msg默认值
    }
}
</script>