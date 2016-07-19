module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 12,

    // font family with optional fallbacks
    fontFamily: '"Meslo LG M for Powerline", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color (hex)
    cursorColor: '#e92c6c',

    // color of the text
    foregroundColor: '#839496',

    // terminal background color
    backgroundColor: '#002b36',

    // border color (window, tabs)
    borderColor: 'rgba(255,255,255,.1)',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#002b36', // background
      '#dc322f', // red
      '#859900', // green
      '#b58900', // yellow
      '#268bd2', // blue
      '#6c71c4', // violet
      '#2aa198', // cyan
      '#657b83', // light gray
      '#586e75', // medium gray
      '#dc322f', // red
      '#859900', // green
      '#b58900', // yellow
      '#268bd2', // blue
      '#6c71c4', // violet
      '#2aa198', // cyan
      '#ffffff', // white
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
