module.exports = {
    chainWebpack: config => {
      config.plugins.delete('prefetch'); //prefetch ì­ì 
    },
    devServer: {
      proxy: {
        '/oauth2.0': {
          target: 'https://nid.naver.com'
        }
      }
    }  
}