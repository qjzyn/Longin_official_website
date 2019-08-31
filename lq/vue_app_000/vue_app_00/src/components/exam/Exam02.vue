<!-- 模板：html标签 -->
<template>
   <!-- div跟元素 -->
  <div>
     <h1>Exam02.vue</h1>
     <!-- 请用mint-ui 输入框 -->
     <mt-field label="用户名" placeholder="请输入用户名" v-model="uname" :attr="{maxlength:10}"></mt-field>
     <!-- 练习：表单验证 -->
     <!-- 1.为表单添加密码输入框 -->
     <mt-field label="密码" placeholder="请输入密码" type="password" v-model="upwd"></mt-field>
     <!-- 2.为表单添加年龄输入框 -->
      <mt-field label="年龄" placeholder="年龄" type="number" v-model="uage"></mt-field>
     <!-- 3.为表单添加按钮 注册-->
     <mt-button size="large" @click="reg">用户注册</mt-button>
     <!-- 4.用户点击注册按钮完成表单验证 -->

      <!--用户名3~8字母数字 密码验证规则相同 年龄 2 数字如果用户输入内容有误：明确提示-->
     
  </div>
</template>

<script>
export default {
    data() {      //组件中共享数据
        return {
            uname:"",  //双向绑定用户名
            upwd:"",    //双向绑定密码
            uage:""    //双向绑定年龄
        }
    },
    methods: {
        reg(){
            //功能：对表单中每个元素验证
        //验证规则
            //1.创建验证所需正则表达式 用户名/密码
            var ureg = /^[a-z0-9]{3,8}$/i;
            //2.创建验证所有正则表达式 年龄
            var areg = /^[0-9]{2}$/;
        //验证谁
            //3.获取用户名
             var u= this.uname;
            //4.获取密码
            var p =this.upwd;
            //5.获取年龄
            var a= this.uage;
           // console.log(u+":"+p+":"+a);
        //验证
            //6.通过正则表达式验证用户名
           /* if(!ureg.test(u)){
            //7.出错显示交互提示消息
             this.$messagebox("消息","用户名格式不正确");
            //8.程序停止
            return;
            }*/
            //9.通过正则表达式验证密码
            if(!ureg.test(p)){
            //10.出错显示交互同时消息
              this.$messagebox("消息","密码格式不正确");
            //11.程序停止 
              return;
            }
            //12.通过正则表达式验证年龄
            //13.出错显示交互同时消息
            //14.程序停止
            //15.输出验证成功
        }
    }
}
</script>