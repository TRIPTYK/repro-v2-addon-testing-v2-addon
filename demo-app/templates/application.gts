import { pageTitle } from 'ember-page-title';
import CounterComponent from 'counter/components/counter';

const greeting = 'hello';

<template>
  {{pageTitle "Demo App"}}

  <h1>Welcome to ember!</h1>

  <CounterComponent />

  {{greeting}}, world!
</template>
