<template>
    <h3>{{ title }} : {{ age }} : <span v-if="condition">boolean</span></h3>
</template>

<script>
    export default {
        name : '',
        props : {
            title: {
                type : String
                ,default : 'Childcomponent default value'
            },
            age : {
                type : Number
                ,default : 0
            },
            condition :  {
                type : Boolean
                ,default : false
            }
        },
        components : {},
        data() {
            return {
                sampleData: ''
            };
        },
        setup() {},
        beforeCreate() {},
        created() {},
        beforeMount() {},
        mounted() {},
        beforeUpdate() {},
        updated() {},
        beforeUnmount() {},
        unmounted() {},
        methods : {}
    }
</script>

<style scoped>
</style>