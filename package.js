Package.describe({
  name: 'mrmasly:moment',
  version: '0.0.1',
  summary: 'momentjs for meteor',
  git: 'https://github.com/mrMasly/meteor-moment',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.4.3.1');
  api.use('akryum:npm-check@0.0.2');
  api.use('coffeescript@1.12.3_1');
  api.use('ecmascript@0.6.3');
  api.addFiles('src/main.coffee', ['client', 'server']);
});
