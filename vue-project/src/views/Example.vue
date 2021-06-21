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
            <h1>----------------------------------------------------------------------</h1>
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
        <button type="button" @click="childClick">child click</button>
        <button type="button" @click="childFuncCall()">child fucntion call</button>
        <button type="button" @click="changeChildData()">change child data</button>
        <button type="button" @click="checkChild()">check child</button>
        <child-component  title="Childcomponent From parent child control" @send-message="sendMessage" ref="child_component"/>

        <modal-layout>
            <template v-slot:header>
                <h1>Pop Up Title - Slot</h1>
            </template>
            <template v-slot:default>
                <p>Pop Up Contents 1</p>
                <p>Pop Up Contents 2</p>
            </template>
            <template v-slot:footer>
                <button type=“button”>Close</button>
            </template>
        </modal-layout>

        <input type="text" ref="title"/>
    </div>

    <div>
            <h1>----------------------------------------------------------------------</h1>
    </div>


    <div>
      <h2>Calculator - Composition API</h2>
        <input type="text" v-model="num1" @keyup="plusNumbers1" />
        <span> + </span>
        <input type="text" v-model="num2" @keyup="plusNumbers1" />
        <span> = </span>
        <span>{{result1}}</span>
    </div>

    <div>
        <input type="text" v-model="state2.num3" @keyup="plusNumbers2" />
        <span> + </span>
        <input type="text" v-model="state2.num4" @keyup="plusNumbers2" />
        <span> = </span>
        <span>{{state2.result2}}</span>
    </div>

    <div>
        <input type="text" v-model="state3.num5"/>
        <span> + </span>
        <input type="text" v-model="state3.num6"/>
        <span> = </span>
        <span>{{state3.result3}}</span>
    </div>

    <div>
        <input type="text" v-model="num7"/>
        <span> + </span>
        <input type="text" v-model="num8"/>
        <span> = </span>
        <span>{{result4}}</span>
    </div>


</div>
</template>
 
<script>
    import ChildComponent from '../components/ChildComponent.vue'
    import ModalLayout from '../components/SlotModalLayout'
    import {reactive , computed , toRefs} from 'vue'

    function plusCalculator(){
           let state4 = reactive({
                num7 : 0
                ,num8 : 0
                ,result4 :  computed (() =>  parseInt(state4.num7) + parseInt(state4.num8))
            });            
            return toRefs(state4);
    }

    export default {
        name : '',
        components : {ChildComponent,ModalLayout},
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
                ,num1: 0
                ,num2: 0
                ,result1: 0
            };
        },
        computed : {
            fullName(){
                return this.firstName +' '+this.lastName
            },
            msg() {
                return this.$refs.child_component.msg;
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
        provide(){
            return {
                itemLength : this.items.length
            }
        },
        setup() {
            let state2 = reactive({
                num3 : 0
                ,num4 : 0
                ,result2 : 0
            });
            function plusNumbers2(){
                state2.result2 = parseInt(state2.num3) + parseInt(state2.num4);
            }
            let state3 = reactive({
                num5 : 0
                ,num6 : 0
                ,result3 :  computed (() =>  parseInt(state3.num5) + parseInt(state3.num6))
            });     
            let {num7, num8, result4} = plusCalculator();
            return {
                state2,
                plusNumbers2,
                state3,
                num7,
                num8,
                result4
            }
        },
        beforeCreate() {},
        created() {},
        beforeMount() {},
        mounted() {
            this.$refs.title.focus();
        },
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
            childClick(){
                alert('parent click -> child button click');
                this.$refs.child_component.$refs.btn.click();
            },
            childFuncCall(){                
                this.$refs.child_component.callFromParent();
            },
            changeChildData(){
                this.$refs.child_component.msg = 'change child data';
            },
            sendMessage(data){
                alert(data)
            },
            checkChild(){
                alert(this.msg)
            },
            plusNumbers1() {
                this.result1 = parseInt(this.num1) + parseInt(this.num2);
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