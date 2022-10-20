import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  resolve:{
    extensions:['.vue','.js','.jsx','.ts','.tsx']
  },
  server:{
    cors: true,
    proxy:{
      '/api':{
        target:"http://localhost:9000/",
        changeOrigin:true,
        rewrite:path => path.replace(/^\/api/,'')
      }
    }
  }

})
