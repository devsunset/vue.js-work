<template>
    <h3>{{ title }} : {{ age }} : <span v-if="condition">boolean true</span> : {{ arrayvalue }}  : {{ objectvalue !=null ? objectvalue.id : '' }} : <button type="button" @click="childFunc()" ref="btn">click</button></h3>
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
            },
            arrayvalue :  {
                type : Array
                ,default: () => []
            },
            objectvalue : {
                type : Object
                ,default : () => {}
            }
        },
        /* --- example  ---
        props : {
            // basic type null , undefined ... pass
            propA : Number 
            ,propB : [String, Number]
            ,propC : {
                type : String
                ,required : true
            },
            propD : {
                type : Number
                , default : 100
            },
            propE : {
                type : Object
                ,default : function() {
                    return {message : 'hello'}
                }
            },
            propF : {
                validator : function(value){
                    return ['success','warning','danger'].indexOf(value) !== -1
                }
            },
            propG : {
                type : Function
                , default :  function(){
                    return 'Default function'
                }
            }
        },*/
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
        methods : {
            childFunc() {
                alert('child click');
            }
        }
    }
</script>

<style scoped>
</style>