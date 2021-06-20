<template>
<div>
    <h1>Example</h1>

    <div>Data Binding : {{dataBindMsg}}</div>

    <div>{{htmlString}}</div>
    <div v-html="htmlString"></div>

    <div><input type="text" v-model="valueModel"/></div>

    <div><input type="number" v-model.number="numberModel"/></div>

    <div><textarea v-model="message"></textarea></div>

    <div>
        <select v-model="type">
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="C">C</option>
        </select>
    </div>  

    <div>
        <label><input type="checkbox" v-model="checked">{{ checked }}</label>
    </div>  

    <div>
        <label><input type="checkbox" v-model="checkedvalue" true-value="yes" false-value="no">{{ checkedvalue }}</label>
    </div>  

    <div>
        <label><input type="checkbox" value="A" v-model="checkedvaluemulti">A</label>
        <label><input type="checkbox" value="B" v-model="checkedvaluemulti">B</label>
        <label><input type="checkbox" value="C" v-model="checkedvaluemulti">C</label>
        <br/>
        <span> select type : {{ checkedvaluemulti }}</span>
    </div>  

     <div>
        <label><input type="radio" v-bind:value="radioValue1" v-model="picked">A</label>
        <label><input type="radio" v-bind:value="radioValue2" v-model="picked">B</label>
        <label><input type="radio" v-bind:value="radioValue3" v-model="picked">C</label>
        <br/>
        <span> select type : {{ picked }}</span>
    </div>  

    <div><img v-bind:src="imgSrc" v-bind:witdh="30" v-bind:height="30"/></div>
</div>
</template>

<script>
    export default {
        name : '',
        components : {},
        data() {
            return {
                dataBindMsg : 'Hello World'
                ,htmlString : '<font color="blue"> html Binding :  Hello World</font>'
                ,valueModel : 'Hello World'
                ,numberModel : 1
                ,message : 'hello \nworld'
                ,type : 'B'
                ,checked : true
                ,checkedvalue : true
                ,checkedvaluemulti : []
                ,picked : ''
                ,radioValue1 : 'A'
                ,radioValue2 : 'B'
                ,radioValue3 : 'C'
                ,imgSrc : 'https://kr.vuejs.org/images/logo.png'
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