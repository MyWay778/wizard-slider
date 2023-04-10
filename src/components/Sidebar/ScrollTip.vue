<script>
import ArrowVue from '@/shared/ArrowVue.vue';

export default {
  name: 'ScrollTip',

  components: {
    ArrowVue
  },

  props: {
    text: {
      type: String,
      required: true
    }
  }
};
</script>

<template>
  <div class="scroll-tip">
    <span class="scroll-tip__text">{{ text }}</span>
    <ArrowVue class="scroll-tip__arrow" :width="6.3" />
  </div>
</template>

<style>
.scroll-tip {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: center;
  align-self: flex-start;
  row-gap: 2.4rem;
  padding-bottom: 8.7rem;
}

.scroll-tip__text {
  font-size: 1.4rem;
  line-height: 0.8rem;
  writing-mode: vertical-rl;
  transform: rotate(-180deg);
}

.scroll-tip__arrow {
  position: absolute;
  bottom: 3rem;
  transform: rotate(90deg);
}
</style>
