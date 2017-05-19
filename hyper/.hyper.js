module.exports = {
  config: {
    fontSize: 14.5,
    fontFamily: '"Droid Sans Mono for Powerline", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
    termCSS: '::selection { background-color: rgba(233, 44, 108, 0.8); color: #fcfcfc; }',
    padding: '12px 14px',
    windowSize: [1400, 750],
    workingDirectory: '~/dev'
  },
  plugins: [
    'hyperlinks',
    'hyperterm-blink',
    'hyperterm-snazzy',
    'hyperterm-tab-numbers',
    'hyperterm-working-directory',
    'hypercwd'
  ],
  localPlugins: [
  ]
};
