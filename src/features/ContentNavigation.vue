<script>
import ContentNavItem from '@/components/ContentNavigation/ContentNavItem.vue';

export default {
  name: 'ContentNavigation',

  components: {
    ContentNavItem
  },

  data() {
    return {
      items: ['Актуальное', 'В тренде', 'Подсказки', 'Новости'],
      active: 3
    };
  },

  computed: {},

  methods: {
    getNumber(index) {
      const diffBetweenIndexAndNumber = 1;
      return index + diffBetweenIndexAndNumber;
    },
    isPreActive(itemIndex) {
      // Индекс активного элемента
      const activeIndex = this.active - 1;

      // Возвращаем true если itemIndex сразу перед или после активного
      return itemIndex - 1 === activeIndex || itemIndex + 1 === activeIndex;
    },
    isActive(index) {
      return this.getNumber(index) === this.active;
    }
  }
};
</script>

<template>
  <ul class="content-navigation">
    <ContentNavItem
      v-for="(item, index) in items"
      :key="item"
      :number="getNumber(index)"
      :text="item"
      :active="isActive(index)"
      :pre-active="isPreActive(index)" />
  </ul>
</template>

<style>
.content-navigation {
  display: flex;
  flex-direction: column;
  row-gap: 3rem;
}
</style>
