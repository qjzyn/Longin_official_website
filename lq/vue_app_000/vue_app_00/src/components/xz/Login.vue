<template>
  <div class="app-login">
  <!--<h1>Login.vue</h1>-->
      <!-- 1:用户名输入框 -->
     <mt-field :placeholder="unameholder" v-model="uname"></mt-field>
     <!-- 2:密码输入框 -->
     <mt-field :placeholder="upwdholder" v-model="upwd" type="password"></mt-field>
     <!-- 登录按钮 -->
     <mt-button size="large" @click="login">登录</mt-button>
  </div>
</template>
<script>
export default {
    data() {
        return {
            unameholder:"请输入用户名",   //用户名提示
            upwdholder:"请输入密码",      //密码提示
            uname:"",   //输入用户名
            upwd:""     //输入密码
        }
    },
    methods: {
        login(){
            //console.log(123);
            //功能：完成用户登录操作
            //1.获取用户输入用户名
            var u = this.uname;
            //2.获取用户输入密码
            var p = this.upwd;
              //console.log(u+"_"+p);
            //3.创建正则表达式验证用户名和密码   3~12字母数字
            var reg = /^[a-z0-9]{3,12}$/i;
            //4.用户验证失败  提示短消息
             if(!reg.test(u)){
                 this.$toast("用户名格式不正确");
                 //this.$toast({message:"用户名格式不正确"});
                 return;   //失败 停止执行
             }
            //5.密码验证失败  提示短消息
            if(!reg.test(p)){
                 this.$toast("密码格式不正确");
                 //this.$toast({message:"密码格式不正确"});
                 return;    //失败 停止执行
            }
            //6.发送ajax 请求 axios
            var url = "login";
            var obj = {uname:u,upwd:p}
            this.axios.get(url,{params:obj}).then(res=>{
            //console.log(res);
            //7.获取服务器返回结果
            //7.1： 登录失败  提示
            if(res.data.code==-1){
                this.$toast("用户名和密码错误");
            }else{
                //7.2：登录成功 跳转商品首页组件
                this.$router.push("/Product")
                //vue 一个组件执行 
            }
            })
          
        }
    },
}
</script>