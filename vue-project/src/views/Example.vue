<template>
<div>
    <div class="card">
    <div class="card-header">
        <h1>Example</h1>
    </div>
    </div>
    <table class="table">
        <thead>
            <tr>
            <th scope="col">#</th>
            <th scope="col">Item</th>
            <th scope="col">Example  (reference source)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <th scope="row">1</th>
            <td>&#123;&#123; &#125;&#125; </td>
            <td>{{dataBindMsg}}</td>
            </tr>
            <tr>
            <th scope="row">2</th>
            <td>&#123;&#123; &#125;&#125;  html tag X</td>
            <td>{{htmlString}}</td>
            </tr>
            <tr>
            <th scope="row">3</th>
            <td>v-html </td>
            <td><span v-html="htmlString"></span></td>
            </tr>
            <tr>
            <th scope="row">4</th>
            <td>v-model , v-focus (input text)</td>
            <td><input type="text" v-model="valueModel" v-focus/></td>
            </tr>
            <tr>
            <th scope="row">5</th>
            <td>v-model.number (input text)</td>
            <td><input type="number" v-model.number="numberModel"/></td>
            </tr>
            <tr>
            <th scope="row">6</th>
            <td>v-model (textarea)</td>
            <td><textarea v-model="message"></textarea></td>
            </tr>
            <tr>
            <th scope="row">7</th>
            <td>v-model (select)</td>
            <td>
                     <select v-model="type">
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                    </select>
            </td>
            </tr>
            <tr>
            <th scope="row">8</th>
            <td>v-model (checkbox)</td>
            <td><label><input type="checkbox" v-model="checked"> {{ checked }}</label></td>
            </tr>
            <tr>
            <th scope="row">9</th>
            <td>v-model (checkbox value setting)</td>
            <td><label><input type="checkbox" v-model="checkedvalue" true-value="yes" false-value="no"> {{ checkedvalue }}</label></td>
            </tr>
            <tr>
            <th scope="row">10</th>
            <td>v-model (checkbox group)</td>
            <td>
                    <label><input type="checkbox" value="A" v-model="checkedvaluemulti"> A </label>
                    &nbsp;<label><input type="checkbox" value="B" v-model="checkedvaluemulti"> B </label>
                    &nbsp;<label><input type="checkbox" value="C" v-model="checkedvaluemulti"> C </label>
                    <br/>
                    <span> select type : {{ checkedvaluemulti }}</span>

            </td>
            </tr>
            <tr>
            <th scope="row">11</th>
            <td>v-model , v-bind (radio)</td>
            <td>
                    <label><input type="radio" v-bind:value="radioValue1" v-model="picked"> A </label>
                    &nbsp;<label><input type="radio" v-bind:value="radioValue2" v-model="picked"> B </label>
                    &nbsp;<label><input type="radio" v-bind:value="radioValue3" v-model="picked"> C </label>
                    <br/>
                    <span> select type : {{ picked }}</span>
            </td>
            </tr>
            <tr>
            <th scope="row">12</th>
            <td>v-bind (img)</td>
            <td><img v-bind:src="imgSrc" v-bind:witdh="30" v-bind:height="30"/></td>
            </tr>
            <tr>
            <th scope="row">13</th>
            <td>v-model , v-bind (input button)</td>
            <td>   
                    <input type="text" v-model="textValue"/>
                    <button type="button" v-bind:disabled="textValue==''">Click</button>
            </td>
            </tr>
            <tr>
            <th scope="row">14</th>
            <td>v-bind (class binding)</td>
            <td><div class="container" v-bind:class="{ 'active' : isActive, 'text-red' : hasError}">Class Binding</div></td>
            </tr>
            <tr>
            <th scope="row">15</th>
            <td>v-bind (class binding array) </td>
            <td><div class="container" v-bind:class="[activeClass, errorClass]">Class Binding</div></td>
            </tr>
            <tr>
            <th scope="row">16</th>
            <td>v-bind (Inline Style binding)</td>
            <td><div v-bind:style="styleObject">Inline Style Binding</div></td>
            </tr>
            <tr>
            <th scope="row">17</th>
            <td>v-bind (Inline Style binding array)</td>
            <td><div v-bind:style="[baseStyle, addStyle]">Inline Style array Binding</div></td>
            </tr>
            <tr>
            <th scope="row">18</th>
            <td>v-for</td>
            <td>       
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
            </td>
            </tr>
            <tr>
            <th scope="row">19</th>
            <td>v-if , v-else-if , v-else , v-show</td>
            <td>
                    <h6 v-if="condition==='A'">A</h6>
                    <h6 v-else-if="condition==='B'">B</h6>
                    <h6 v-else>C</h6>
                    <h6 v-show='true'>v-if (rendering X) & v-show (rendering O  and not visibile) </h6>
            </td>
            </tr>
            <tr>
            <th scope="row">20</th>
            <td>click event , method</td>
            <td>
                    <button type="button" @click="increaseCounter">Add 1 </button>
                    <p>The counter is : {{counter}}</p>
                    <button type="button" @click="setCounter(7)">Set 7 </button>
                    <p>The counter sub is : {{countersub}}</p>
                    <button type="button" @click="one(), two()">Click </button>
            </td>
            </tr>
            <tr>
            <th scope="row">21</th>
            <td>change event , method</td>
            <td>
                    <select v-model="typesub" @change="changeSelect">
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                    </select>
            </td>
            </tr>
            <tr>
            <th scope="row">22</th>
            <td>key event</td>
            <td>
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
            </td>
            </tr>
            <tr>
            <th scope="row">23</th>
            <td>computed</td>
            <td>
                 <h6>Full Name : {{fullName}}</h6>
                 <button type="button" @click="firstnameChange">first name change</button>
            </td>
            </tr>
            <tr>
            <th scope="row">24</th>
            <td>watch</td>
            <td>
                <h6>Full Name : {{fullNameSub}}</h6>
                <button type="button" @click="firstnameChangeSub">first name change</button>
            </td>
            </tr>
            <tr>
            <th scope="row">25</th>
            <td>axios api call</td>
            <td>
                    <button type="button" @click="apiCall">click</button>
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
            </td>
            </tr>
            <tr>
            <th scope="row">26</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
            <tr>
            <th scope="row">27</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
            <tr>
            <th scope="row">28</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
            <tr>
            <th scope="row">29</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
            <tr>
            <th scope="row">30</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">31</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">32</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">33</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">34</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">35</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">36</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">37</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">38</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">39</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
             <tr>
            <th scope="row">40</th>
            <td>Jacob</td>
            <td>Thornton</td>
            </tr>
        </tbody>
    </table>


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

    <div>
        <input type="text" v-model="num9"/>
        <span> + </span>
        <input type="text" v-model="num10"/>
        <span> = </span>
        <span>{{result5}}</span>
    </div>

    <child-component  title="Childcomponent CompositionAPIInject"/>

    <div style="height:15px;">
        <p v-pin="position"> directives example - page fix area (position:fixed;top70px,left;100px;)</p>
    </div>

    <div>
        <h3>{{ $translate("ko.hi") }}</h3>
        <h3>{{ $translate("en.hi") }}</h3>
        <h3>{{ i18n.ko.hi }}</h3>
    </div>

    <div>
        <p>Count : {{ count }}</p>
        <p>cartCount : {{ cartCount }}</p>
        <button type="button" @click="increment">Increment</button>
    </div>













</div>
</template>
 
<script>
    import ChildComponent from '../components/ChildComponent.vue'
    import ModalLayout from '../components/SlotModalLayout'
    import {reactive , computed , toRefs, onMounted, provide} from 'vue'
    import {comPlusCalculator} from '../common.js'
    import ApiMixin from '../api.js'

    export default {
        name : '',
        components : {ChildComponent,ModalLayout},
        mixins: [ApiMixin],
        inject : ['i18n'],
        data() {
            return {
                dataBindMsg : 'Hello World'
                ,htmlString : '<font color="blue"> Hello World</font>'
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
                ,mixtest: []
                ,position : { top:70, left:100}
            };
        },
        computed : {
            fullName(){
                return this.firstName +' '+this.lastName
            },
            msg() {
                return this.$refs.child_component.msg;
            },
            count(){
                return this.$store.state.count;
            },
            cartCount() {
                return this.$store.getters.cartCount;
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
            let {num9, num10, result5} = comPlusCalculator();
            
            onMounted(() =>{
                console.log('Component is mounted')
            })

            provide('setuptitle', 'Vue.js project')

            return {
                state2,
                plusNumbers2,
                state3,
                num7,
                num8,
                result4,
                num9,
                num10,
                result5
            }
        },
        beforeCreate() {},
        created() {},
        beforeMount() {},
        async mounted() {
            //this.$refs.title.focus();
            this.mixtest = await this.$api("https://jsonplaceholder.typicode.com/posts","get");
            console.log(this.mixtest)
            console.log(this.i18n)

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
            },
            increment() {
                this.$store.commit('increment');
            }
        },
        directives : {
            pin : {
                mounted(el,binding){
                    el.style.position = 'fixed';
                    el.style.top = binding.value.top +'px';
                    el.style.left = binding.value.left +'px';
                }
            }
        }
    }

    function plusCalculator(){
           let state4 = reactive({
                num7 : 0
                ,num8 : 0
                ,result4 :  computed (() =>  parseInt(state4.num7) + parseInt(state4.num8))
            });            
            return toRefs(state4);
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