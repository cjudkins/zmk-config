#pragma once

// Keymap Shorthands
#define TAB_L     LS(LC(TAB))         // Switch tab left
#define TAB_R     LC(TAB)             // Switch tab right
#define BACK      LG(LEFT_BRACKET)    // Go Back in history
#define FWRD      LG(RIGHT_BRACKET)   // Go Forward in history
#define FQUIT     LG(LA(ESCAPE))      // Force Quit/Task Manager
#define EXPOS     LC(UP)              // Reveal windows
#define EMOJI     LC(LG(SPACE))       // Emoji Picker
#define SPOT      LG(SPACE)           // Spotlight
#define MEH       LA(LC(LEFT_SHIFT))
#define U_CUT     LG(X)
#define U_COPY    LG(C)
#define U_PASTE   LG(V)
#define U_UNDO    LG(Z)
#define U_REDO    LS(LG(Z))
