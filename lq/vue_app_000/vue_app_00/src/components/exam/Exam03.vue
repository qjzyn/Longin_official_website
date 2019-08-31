<!-- 模板：html标签 -->
<template>
   <!-- div跟元素 -->
  <div>
     <h3>表单组件-开关</h3>
     <!-- 此组件完成开关功能：vall状态 -->
     <!-- 当vall值为true时为打开状态 -->
     <!-- 当vall值为false时为关闭状态 -->
     <!-- change修改事件：当用户修改的状态 -->
     <mt-switch v-model="vall" @change="handel">开关组件</mt-switch>
     
     <h3>表单组件-单选框列表</h3>
     <mt-radio title="单选框列表" v-model="val2" :options="['选项a','选项b','选项c']"></mt-radio>

      <h3>表单组件-单选框列表-绑定数组</h3>
      <!-- options绑定数组 -->
      <mt-radio title="东哥今年多大" v-model="val3" :options="options"></mt-radio>
       <!-- 获取单项列表值 -->
      <mt-button @click="handle2">获取年龄</mt-button>

       <h3>表单组件-复选框列表</h3>
       <mt-checklist title="复选框列表" v-model="val4" :options="['选项a','选项b','选项c']"></mt-checklist>
       <mt-button @click="handle3">获取复选框中内容</mt-button>
  </div>
</template>
<script>
export default {
    data() {
        return {
             vall:true,
            val2:"",  //单选列表绑定值
            val3:"",   //单选列表绑定值2
            val4:[],
            options:[{label:"去年",value:"24"},
                     {label:"今年",value:"23"},
                     {label:"明年",value:"22"}]
        }
    },
    methods: {
         handle3(){
           console.log(this.val4);
        },
        //事件处理函数：获取选中年龄
        handle2(){
           console.log(this.val3);
        },
        //事件处理函数：当用户修改状态此函数被调用
        handle(){
            //获取当前组件状态：true false
            console.log(this.vall);
            //发送ajax修改数据状态：完成整体功能
        }
    },
}
</script>