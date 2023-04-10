<script>
import ArrowIcon from '@/shared/icons/ArrowIcon.vue';

export default {
  name: 'ArrowVue',

  components: {
    ArrowIcon
  },

  props: {
    width: {
      type: Number
    }
  }
};
</script>

<template>
  <div class="arrow-icon">
    <span class="arrow-icon__line" :style="width ? { width: `${width}rem` } : {}"></span>
    <ArrowIcon />
  </div>
</template>

<style>
.arrow-icon {
  display: flex;
  align-items: center;
  color: inherit;
}

.arrow-icon__line {
  width: 1.6rem;
  height: 0.1rem;
  background-color: currentColor;
  margin-right: -0.2rem;
}
</style>
