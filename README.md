# Windy's zmk-config

Here's my keymap! It's been through hundreds of iterations and I'm sure there'll be hundreds more to come.

I'm an artist and game developer, frequently switching between Windows, macOS, and my iPad. I'm usually using a stylus or pointing device with my left hand, leaving the right hand resting on the keyboard. That being said, the layout is pretty ambivalent and doesn't overly favor one hand over the other.

The layout and shortcuts are macOS-centric. I use PowerToys to remap them to their Windows equivalent (but going the other way around would probably work just as well).

## Keymap

- Convenience shortcuts reduce the need for chording -- mods are accessible across all non-base layers but shortcuts cover common uses
- Mod-morphs are used create shifted characters that make more sense than traditional layouts (e.g. `(` is shifted to `{`, `,` is shifted to `;`, e.t.c.)
- Thumb keys are consistent across all layers
- Thumb shift is used for shifting alpha characters, and homerow Shift is for keyboard shortcuts
- In general, things are kept relatively simple -- complex hold-taps, combos, and behaviors are avoided since Bluetooth keyboards are already plenty finicky

![](keymap-drawer/cradio.svg)
    
### Thumb Cluster

1. The left outer thumb key activates the Navigation layer.

2. The left inner thumb key acts as sticky shift when tapped, and caps-word when double-tapped.

3. The right inner thumb key acts as Space when tapped, and activates the Symbol layer when held.

4. The right outer thumb key activates the Number layer.

When the two outer thumb keys are held (Navigation and Number), the Adjust layer is activated.

When the left outer thumb key and the right inner thumb key (Navigation and Symbol) are held, the System layer is activated.

### Base Layer (Layer 0)

The base layout is Colemak-DH. I've replaced `/` with `?`, which becomes `!` when shifted. Hyphen `-` and Slash `/` are available on the Symbol and Number layers.

#### Mod-Morphs

I use ISO-style punctuation, so e.g. `.` and `,` will become `;` and `:` respectively when shifted. This came about when I realized having angle brackets on the base layer made absolutely no sense, so I wanted to come up with combinations that felt more intuitive.

| Symbol | Shifted |
| ------ | ------- |
| ,      | ;       |
| .      | :       |
| ?      | !       |
| ( )    | { }     |
| [ ]    | < >     |

### Navigation Layer (Layer 1)

The navigation layer provides arrow, navigation, and windowing controls on the right half, and sticky mods on the left side. There's also Miryoku-style convenience shortcuts for cut/copy/paste/undo/redo.

### Number Layer (Layer 2)

The number layer provides a numpad on the left side, and sticky mods on the right side. I've included symbols that make sense in a mathematical context.

### Symbol Layer (Layer 3)

The Symbol layer provides various symbols on the left side, and sticky mods on the right side. 
The right side also has a couple of convenient shifted symbols to reduce the need for shifting keys number on the number layer.

I'm not a programmer or a hardcore Vim-user, so I'm sure this layer isn't as efficient as it   could be.

### Adjust Layer (Layer 4)

The Adjust layer provides access to editing keys Return, Backspace, Delete, Tab, as well as common mod combinations (e.g. `Opt+Backspace` to delete a full word). Sticky mods as always on the left side. 

There's also convenience shortcuts for OS-features like Spotlight, Force Quit, Screen Lock, media controls, and the Emoji picker

### System Layer (Layer 5)

The System layer provides access to Function keys, as well as hardware features such as bluetooth. I've added extra function keys wherever there was an open spot -- they basically act as configurable hotkeys in whatever software I'm using