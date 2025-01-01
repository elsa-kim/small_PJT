<template>
  <div class="container">props, emit test</div>
  <Parent />
  <div class="container">Mitt Library</div>
  <Mitt :status="mittStatus" />
  <div class="container">Vuex</div>
  <Vuex />
</template>

<script setup>
import { ref } from "vue";
import Mitt from "./components/Mitt.vue";
import Parent from "./components/Parent.vue";
import { emitter } from "./mitt";
import Vuex from "./components/Vuex.vue";

const mittStatus = ref("선택해주세요.");

emitter.on("clickBtn", (choice) => (mittStatus.value = `${choice}를 선택했습니다.`));
</script>

<style scoped>
.container {
  margin: 50px 0 5px;
}
.container:first-child {
  margin-top: 0;
}
</style>
