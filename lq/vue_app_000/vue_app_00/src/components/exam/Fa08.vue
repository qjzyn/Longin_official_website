<template>
   <div>
      <h3>父组件</h3>
      <!-- 父组件：调用子组件并且传递参数 -->
      <!-- 1.将子组件引入当前父组件中 -->
      <!-- 2.注册子组件并且给子组件起一个名字 -->
      <!-- 3.在模板中调用子组件 -->
       <sub07 msg="微信123"></sub07>
      <!-- 为父组件指定访问路径  /Fa08 -->
   </div>
</template>
<script>
//1:(1)引入子组件
import Sub07 from './Sub07'
export default {
    data() {
        return {
            
        }
    },
    //(2)注册子组件
    components:{
      "sub07":Sub07
    }
}
</script>
