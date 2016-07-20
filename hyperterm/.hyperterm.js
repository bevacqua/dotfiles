module.exports = {
  config: {
    fontSize: 14.5,
    fontFamily: '"Droid Sans Mono for Powerline", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    css: '', // custom css to embed in the main window
    termCSS: '::selection { background-color: rgba(233, 44, 108, 0.8); color: #fcfcfc; }', // custom css to embed in the terminal window

    padding: '12px 14px',

    cursorColor: '#e92c6c',
    foregroundColor: '#839496',
    backgroundColor: '#002b36',
    borderColor: 'rgba(255, 255, 255, .1)',

    colors: [
      '#002b36',
      '#dc322f',
      '#859900',
      '#b58900',
      '#268bd2',
      '#6c71c4',
      '#2aa198',
      '#657b83',
      '#586e75',
      '#dc322f',
      '#859900',
      '#b58900',
      '#268bd2',
      '#6c71c4',
      '#2aa198',
      '#ffffff'
    ]
  },

  plugins: [
    'hyperterm-blink',
    'hyperlinks',
    'hyperterm-snazzy'
  ],
  localPlugins: []
};
