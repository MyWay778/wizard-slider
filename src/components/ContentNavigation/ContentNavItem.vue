<script>
export default {
  name: 'ContentNavItem',

  props: {
    number: {
      type: Number,
      default: 0
    },
    text: {
      type: String,
      required: true
    },
    preActive: {
      type: Boolean,
      default: false
    },
    active: {
      type: Boolean,
      default: false
    }
  },

  methods: {
    // Добавляем 0 к числам меньше 10, например чтобы получить 05 из 5
    getNumber(number) {
      return ('0' + number).slice(-2);
    }
  }
};
</script>

<template>
  <li :class="['content-nav-item', { _active: active }, { '_pre-active': preActive }]">
    <span class="content-nav-item__number">{{ getNumber(number) }}</span>
    <span class="content-nav-item__text">{{ text }}</span>
  </li>
</template>

<style>
.content-nav-item {
  position: relative;
  display: flex;
  align-items: center;
  column-gap: 2rem;
  color: var(--color-black-light);
  padding-bottom: 5px;
}

.content-nav-item::after {
  content: '';
  position: absolute;
  bottom: 0;
  width: 0.4rem;
  height: 0.2rem;
  background-color: var(--color-black-light);
}

.content-nav-item__number {
  font-weight: 500;
  opacity: 0;
}

.content-nav-item__text {
  font-size: 1.4rem;
  line-height: 1.5rem;
  opacity: 0;
}

.content-nav-item._pre-active::after {
  width: 0.8rem;
}

.content-nav-item._active .content-nav-item__number,
.content-nav-item._active .content-nav-item__text {
  opacity: 1;
}

.content-nav-item._active::after {
  width: 100%;
}
</style>
