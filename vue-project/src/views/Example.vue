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

    <div>
        <input type="text" v-model="textValue"/>
        <button type="button" v-bind:disabled="textValue==''">Click</button>
    </div>

    <div class="container" v-bind:class="{ 'active' : isActive, 'text-red' : hasError}">Class Binding</div>

    <div class="container" v-bind:class="[activeClass, errorClass]">Class Binding</div>

    <div v-bind:style="styleObject">Inline Style Binding</div>

    <div v-bind:style="[baseStyle, addStyle]">Inline Style array Binding</div>

    <div>
        <table>
            <thead>
                <tr>
                    <th>no</th>
                    <th>language</th>
                    <th>category</th>
                </tr>
            </thead>
            <tbody>
                <tr :key="i" v-for="(item,i) in items">
                    <td>{{item.no}}</td>
                    <td>{{item.language}}</td>
                    <td>{{item.category}}</td>
                </tr>
            </tbody>
        </table>
    </div>
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
                ,textValue : ""
                ,isActive : true
                ,hasError : false
                ,activeClass : 'active'
                ,errorClass : 'text-red'
                ,styleObject : {
                    color : 'red'
                    ,fontSize : '13px'
                }
                ,baseStyle : 'background-color:yellow;width;100%;height:20px'
                ,addStyle : 'color:red;font-weight:bold'
                ,items : [
                    {"no" : "1" ,"language" : "vue", "category" : "frontend"}
                    ,{"no" : "2" ,"language" : "react", "category" : "frontend"}
                    ,{"no" : "3" ,"language" : "java", "category" : "backend"}
                    ,{"no" : "4" ,"language" : "python", "category" : "backend"}
                ]                                    
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
    container {
        width : 100%;
        height : 200px;
    }
    .active {
        background-color : yellow;
        font-weight: bold;
    }
    .text-red {
        color: red;
    }
    table {
        font-family: arial,sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    td,th {
        border: 1px solid #dddddd;
        text-align: left;
        padding : 3px;
    }
</style>