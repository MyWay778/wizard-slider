<script>
export default {
  name: 'TheSidebar'
};
</script>

<template>
  <aside class="sidebar">
    <slot></slot>
  </aside>
</template>

<style>
.sidebar {
  position: fixed;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  top: 0;
  left: 0;
  bottom: 0;
  z-index: 10;
  padding: 3.4rem 0 3.4rem 3.4rem;
}
</style>
