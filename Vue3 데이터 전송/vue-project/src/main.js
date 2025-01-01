import "./assets/main.css";

import { createApp } from "vue";
import App from "./App.vue";
import { store } from "./store";

const app = createApp(App);

// Vuex store 등록
app.use(store);

// Vue 앱 마운트
app.mount("#app");
