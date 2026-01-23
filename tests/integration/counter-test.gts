import { assert, module, test } from 'qunit';
import { setupRenderingTest } from 'ember-qunit';
import { click, render } from '@ember/test-helpers';
import Counter from 'counter/components/counter';

module('counter', function (hooks) {
  setupRenderingTest(hooks);

  test('Should show 1', async function () {

    await render(
      <template>
        <Counter />
        </template>
    );

    await click('[data-test-counter-inc]');
    await new Promise((resolve) => setTimeout(resolve, 5000));
    assert.dom('h1').containsText('1');
  });
});
