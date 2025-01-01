<template>
  <div></div>
  <Children @clickO="clickO" @clickX="clickX" :status="status" />
</template>

<script setup>
import { ref } from "vue";
import Children from "./Children.vue";
const status = ref("선택해주세요.");
const clickO = () => {
  status.value = "O를 선택하셨습니다.";
};
const clickX = () => {
  status.value = "X를 선택하셨습니다.";
};
</script>

<style scoped></style>
