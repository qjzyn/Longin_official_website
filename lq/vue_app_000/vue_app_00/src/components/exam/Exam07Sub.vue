<template>
    <div>
        <h3>{{msg}}</h3>
    </div>
</template>
<script>
export default {
    props:{//声明接收父组件
        msg:{default:""}//数据msg
    }
}
</script>