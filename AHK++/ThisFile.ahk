class _ThisFile{

/*   A utility class to get info about the AHK
 *   Script that it is called in
 */

/*   ┌────────────────────────────────────────────────────────────────────────────────────────┐
 * │                                                                                        │
 * │                                                                                        │
 * │   xxxxxx                                                                               │
 * │   x    x                                                                               │
 * │   x   xx                xxxxxx                  x                                      │
 * │   xxxxx                 xx   x           xxx    x    x   xxxx                          │
 * │   x                     x xxxx xxx      xx xx   x       xx  x    xxxxxxx x             │
 * │   x    xxxxxxx   xxxxxx x x   xxxxx    xx       x    x  xxxxx   xx                     │
 * │   x   xx     xx  x    x x     xxx      x     xxxxxx  x  x       xxxxxxx                │
 * │   x   xx         xx   x x     x        x        x    x  x             x                │
 * │   x   xx          xxxxx x     xxxxxx   x        x    x  xxxxx       xxx                │
 * │                                                      x                                 │
 * │                                                                                        │
 * │                                                                                        │
 * └────────────────────────────────────────────────────────────────────────────────────────┘
 *
 *
 */
  scriptLocation[]
  {
    get {
      Return A_ScriptDir
    }

  }

  scriptFullPath[]
  {
    get {
      Return A_ScriptFullPath
    }

  }

  scriptName[]
  {
    get {
      Return A_ScriptName
    }

  }

/*
 *   ┌────────────────────────────────────────────────────────────────────────────────────────┐
 * │                                                                                        │
 * │                                                                                        │
 * │                                                                                        │
 * │ xxxxxxx                                                                                │
 * │ x                                                                                      │
 * │ x        x     x  x xxxxx              x                                               │
 * │ xxxxxxx  x     x  xxx   x   xxxxxx     x   x  xxxxxx xxxxxx    xxxxxxx                 │
 * │ x       xx     x  xx    x   x          x      x    x xx   x    x                       │
 * │ xx      x      x  x     x   x        xxxxx x  x    x x    x    xxxxxx                  │
 * │  x      xx    xx  x     x   x          x   x  xx  xx x    xx         xx                │
 * │  x       xx  xx   x     x   xxxxxxx    x   x   xxx   x     x         xx                │
 * │  x        xxxx    x     x                            x     x        xx                 │
 * │                                                                                        │
 * │                                                                                        │
 * └────────────────────────────────────────────────────────────────────────────────────────┘
 *
 */


  printScriptFullPath(){
    MsgBox % A_ScriptFullPath
  }

  printScriptLocation(){
    MsgBox % A_ScriptDir
  }

  printScriptName(){
    MsgBox % A_ScriptName
  }
}