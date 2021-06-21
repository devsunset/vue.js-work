import {
    reactive,
    computed,
    toRefs
  } from 'vue';
  
  import axios from 'axios';
  
  const comPlusCalculator = () => {
    let state5 = reactive({
      num9: 0,
      num10: 0,
      result5: computed(() => parseInt(state5.num9) + parseInt(state5.num10))
    });
  
    return toRefs(state5);
  };
  
  const api = async (url, method, data) => {
    return (await axios({
      method: method,
      url,
      data
    }).catch(e => {
      console.log(e);
    })).data;
  }
  
  export {
    comPlusCalculator,
    api
  };