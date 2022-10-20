import { createRouter, createWebHashHistory } from 'vue-router'

//创建路由规则
const routes = [
    {
        path:'/',
        redirect:'/login'
    },
    {
    path: '/login',
    name: 'login',
    component:() => import('../views/login/login.vue'),
    },
    {
        path: '/indexOne',
        name: 'indexOne',
        component:() => import('../views/index/indexOne.vue'),
    },
    {
        path: '/indexTwo',
        name: 'indexTwo',
        component:() => import('../views/index/indexTwo.vue'),
    },
    {
        path: '/indexThree',
        name: 'indexThree',
        component:() => import('../views/index/indexThree.vue'),
    },
    {
        path: '/indexFour',
        name: 'indexFour',
        component:() => import('../views/index/indexFour.vue'),
    },
    {
        path: '/sendMessage',
        name: 'sendMessage',
        component:() => import('../views/message/sendMessage.vue'),
    },
    {
        path: '/publish',
        name: 'publish',
        component:() => import('../views/publish/publish.vue'),
    },
    {
        path: '/detail',
        name: 'detail',
        component:() => import('../views/detail/detail.vue'),
    },
];
//创建路由实例
const router = createRouter({
    history: createWebHashHistory(),
    routes,
});
export default router;
//创建登录组件
//指定出口

