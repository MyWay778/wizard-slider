<script>
import ArrowVue from '@/shared/ArrowVue.vue';

export default {
  name: 'MainSliderControls',

  components: {
    ArrowVue
  },

  props: {
    prevDisabled: {
      type: Boolean,
      default: false
    },
    nextDisabled: {
      type: Boolean,
      default: false
    }
  },

  emits: ['prev-slide', 'next-slide']
};
</script>

<template>
  <div class="main-slider-controls">
    <!-- Prev button -->
    <button
      class="main-slider-controls-button"
      @click="$emit('prev-slide')"
      :disabled="prevDisabled">
      <ArrowVue class="main-slider-controls-button__arrow _left" :width="1.6" />
    </button>

    <!-- Next button -->
    <button
      class="main-slider-controls-button"
      @click="$emit('next-slide')"
      :disabled="nextDisabled">
      <ArrowVue class="main-slider-controls-button__arrow" :width="1.6" />
    </button>
  </div>
</template>

<style>
.main-slider-controls {
  position: absolute;
  top: 47%;
  display: flex;
  width: 100%;
  justify-content: space-between;
}

.main-slider-controls-button {
  width: 3.9rem;
  height: 3.9rem;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 50%;
  aspect-ratio: 1;
  border: 1px solid var(--color-black-light);
  color: var(--color-black-light);
  opacity: 0.6;
  transition-property: color, opacity, border-color;
  transition-duration: var(--transition-duration);
}

.main-slider-controls-button:hover:not(:disabled) {
  opacity: 1;
  color: var(--color-active);
  border-color: var(--color-active);
}

.main-slider-controls-button:disabled {
  opacity: 0.2;
  cursor: default;
}

.main-slider-controls-button__arrow._left {
  transform: rotate(180deg);
}
</style>
