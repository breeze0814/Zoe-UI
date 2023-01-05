# 开始使用
请先[安装](#/doc/install)本组件库。

然后补充下边的代码在你的文件中

```javascript
import {Button, Tabs, Switch, Dialog} from "Zoe-ui"
```

就可以使用该组件了。

## Vue 单文件组件

**示例：**

```javascript
<template>
  <div>
    <Button>按钮</Button>
  </div>
</template>
<script>
import {Button, Tabs, Tab, Switch, Dialog, openDialog} from "Zoe-ui"
export default {
  components: {Button}
}
</script>
```
