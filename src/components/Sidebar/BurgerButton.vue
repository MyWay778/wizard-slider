<script>
export default {
  name: 'BurgerButton'
};
</script>

<template>
  <button class="burger-button">
    <span class="burger-button__line"></span>
    <span class="burger-button__line"></span>
    <span class="burger-button__line"></span>
  </button>
</template>

<style>
.burger-button {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  width: 2rem;
  height: 1.6rem;
}

.burger-button__line {
  display: inline-block;
  width: 100%;
  height: 0.3rem;
  border: 1px solid var(--color-black-light);
}
</style>
