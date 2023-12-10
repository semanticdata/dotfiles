```javascript
// index.js
import { writable } from 'svelte/store';
import { MilkdownEditor } from 'milkdown';

const content = writable('');

const saveToStorage = () => {
  browser.storage.sync.set({ content: $content });
};

const app = new MilkdownEditor({
  content,
  onSave: saveToStorage,
});

export default app;
```
