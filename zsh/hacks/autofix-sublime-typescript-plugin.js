const fs = require('fs')

tryOrExit(main)

function main() {
  const [keymapFile] = process.argv.slice(2)

  const keymapJson = readFileOrExit(keymapFile)

  // strip comments 🤷‍♂️
  const keymapStripped = keymapJson.replace(/\/\/.*/mg, '')

  const keymap = parseJsonOrExit(keymapStripped)

  const nextKeymap = getNextKeymap(keymap)
  const nextKeymapJson = JSON.stringify(nextKeymap, null, 2)

  writeFileOrExit(keymapFile, nextKeymapJson + '\n')
}

function readFileOrExit(file) {
  return tryOrExit(() => fs.readFileSync(file, 'utf8'))
}

function writeFileOrExit(file, contents) {
  return tryOrExit(() => fs.writeFileSync(file, contents, 'utf8'))
}

function parseJsonOrExit(json) {
  return tryOrExit(() => JSON.parse(json))
}

function getNextKeymap(keymap) {
  return keymap.filter(definition => (
    !Array.isArray(definition.keys) ||
    definition.keys.length !== 1 ||
    definition.keys[0] !== 'alt+,'
  ))
}

function tryOrExit(fn) {
  try {
    return fn()
  } catch (_err) {
    // rule of silence
    process.exit(0)
  }
}
