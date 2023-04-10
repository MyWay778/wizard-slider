<script>
export default {
  name: 'LinkVue',

  props: {
    to: {
      type: String,
      default: '#'
    },
    style: {
      type: String,
      default: 'link',
      validator(value) {
        return ['button', 'link'].includes(value);
      }
    }
  }
};
</script>

<template>
  <a :class="['link', { ['_style-button']: style === 'button' }]" :href="to">
    <slot></slot>
  </a>
</template>

<style>
.link_.style-button {
  padding: 2rem 1.6rem;
  background-color: var(--color-white);
  border-radius: 0.8rem;
  box-shadow: 0 5px 26px rgba(11, 75, 92, 0.1);
}
</style>
