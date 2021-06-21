<template>
<div>
    <h1>Example</h1>

    <div>
            <h1>----------------------------------------------------------------------</h1>
    </div>

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

    <div>
        <h1 v-if="condition==='A'">A</h1>
        <h1 v-else-if="condition==='B'">B</h1>
        <h1 v-else>C</h1>
        <h1 v-show='true'>v-if (display:none) & v-show (visibile) </h1>
    </div>

    <div>
        <button type="button" @click="increaseCounter">Add 1 </button>
        <p>The counter is : {{counter}}</p>
        <button type="button" @click="setCounter(7)">Set 7 </button>
        <p>The counter sub is : {{countersub}}</p>
        <button type="button" @click="one(), two()">Click </button>
    </div>

    <div>
        <select v-model="typesub" @change="changeSelect">
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="C">C</option>
        </select>
    </div>  

    <div>
        <input @keyup.enter="keyevent"/>
        <span>
            <br>
            .enter
            .up
            .tab 
            .down 
            .delete 
            .left 
            .esc 
            .right 
            .space 
            <br>
            Alt + Enter -> @keyup.alt.enter 
            Ctrl + Click -> @click.ctrl 
        </span>
    </div>

    <div>
        <span>computed</span>
        <h1>Full Name : {{fullName}}</h1>
        <button type="button" @click="firstnameChange">first name change</button>
        <p/>
        <span>watch</span>
         <h1>Full Name : {{fullNameSub}}</h1>
        <button type="button" @click="firstnameChangeSub">first name change</button>
    </div>  

    <div>
        <button type="button" @click="apiCall">use axios api call</button>
        <table>
            <thead>
                <tr>
                    <th>id</th>
                    <th>userid</th>
                    <th>title</th>
                </tr>
            </thead>
            <tbody>
                <tr :key="i" v-for="(item,i) in posts">
                    <td>{{item.id}}</td>
                    <td>{{item.userId}}</td>
                    <td>{{item.title}}</td>
                </tr>
            </tbody>
        </table>
    </div>

    <div>
            <h1>----------------------------------------------------------------------</h1>
    </div>

    <div>
        <ChildComponent  />
        <ChildComponent  title="Childcomponent static value"/>
        <ChildComponent  v-bind:title="title"/>
        <ChildComponent  title="Childcomponent number use bind" v-bind:age="11"/>
        <ChildComponent  title="Childcomponent boolean use bind" v-bind:condition="true"/> 
        <ChildComponent  title="Childcomponent array use bind" v-bind:arrayvalue="[1,2,3]"/>
        <ChildComponent  title="Childcomponent object use bind" v-bind:objectvalue="{id : 'object', key : '1'}"/>
        <span> <ChildComponent  title="Childcomponent click event call" ref="child_component"/><button type="button" @click="childFuncCall()">clild click</button></span>
    </div>

</div>
</template>
 
<script>
    import ChildComponent from '../components/ChildComponent.vue'

    export default {
        name : '',
        components : {ChildComponent},
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
                ,condition : 'A'     
                ,counter : 0
                ,countersub : 0
                ,typesub : 'A'
                ,firstName : 'vue'
                ,lastName : 'js'
                ,firstNameSub : 'vue'
                ,lastNameSub : 'js'
                ,fullNameSub : ''
                ,posts : []
                ,title : 'Childcomponent dynamic value'
            };
        },
        computed : {
            fullName(){
                return this.firstName +' '+this.lastName
            }
        },
        watch : {
            firstNameSub(){
                this.fullNameSub = this.firstNameSub + ' ' + this.lastNameSub
            },
            lastNameSub(){
                this.fullNameSub = this.firstNameSub + ' ' + this.lastNameSub
            }
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
            increaseCounter(){
                this.counter = this.counter + 1
            },
            setCounter(setnumber){
                this.countersub = setnumber 
            },
            one(){
                alert('one')
            },
            two(){
                alert('two')
            },
            changeSelect(){ 
                alert(this.typesub)

            },
            keyevent(){
                alert('keyevent')
            },
            firstnameChange(){
                alert(this.firstName)
                this.firstName = 'react'
                alert(this.firstName)
            },
            firstnameChangeSub(){
                alert(this.firstNameSub)
                this.firstNameSub = 'react'
                alert(this.firstNameSub)
            },
            async apiCall(){
                this.posts = await this.$api("https://jsonplaceholder.typicode.com/posts","get");
            },
            childFuncCall(){
                alert('parent click -> child button click')
                this.$refs.child_component.$refs.btn.click();
            }
        }
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