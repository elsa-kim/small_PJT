import { createStore } from "vuex";

export const store = createStore({
  state: {
    status: "선택해주세요",
  },
  mutations: {
    chooseO: (state) => {
      return (state.status = "O를 선택했습니다.");
    },
    chooseX: (state) => {
      return (state.status = "X를 선택했습니다.");
    },
  },
});
