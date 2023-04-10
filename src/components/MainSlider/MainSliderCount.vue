<script>
export default {
  name: 'MainSliderCount',

  props: {
    current: {
      type: Number,
      required: true
    },
    total: {
      type: Number,
      required: true
    }
  }
};
</script>

<template>
  <div class="main-slider-count">{{ current }}/{{ total }}</div>
</template>

<style>
.main-slider-count {
  display: flex;
  width: 5.6rem;
  height: 5.6rem;
  justify-content: center;
  align-items: center;
  padding-top: 0.3rem;
  background-color: var(--color-white);
  border-radius: 50%;
  aspect-ratio: 1;
  line-height: 1;
  font-size: 1.5rem;
  font-weight: 600;
  box-shadow: 0 5px 26px rgba(0, 0, 0, 0.1);
}
</style>
