<template>
    <div>
        <!--1.引入子组件-->
        <!--2.注册子组件-->
        <!--3.调用TitleBar，传参数leftTitle-->
        <titlebar leftTitle="微信(11)"
        :rightFirstImg="require('../../assets/ic_search.png')"
        :rightSecondImg="require('../../assets/ic_add.png')"
        ></titlebar>
    </div>
</template>
<script>
import TitleBar from "./common/lx/TitleBar.vue"
export default {
    data() {
        return {
            
        }
    },
    components:{
        "titlebar":TitleBar
    }
}
</script>